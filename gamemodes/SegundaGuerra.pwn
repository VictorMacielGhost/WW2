#include <a_samp>
#include <zcmd>
#include <sscanf2>
#include <DOF2>
#include <callbacks>

//============================[MACROS]==============================//
#define function:%0(%1) stock%0(%1)
#define callback:%0(%1) forward%0(%1); public%0(%1)

//============================[Cores RGBA]==============================//
#define VERMELHO_BEM_CLARO 0xFF9C9CF6
#define COR_RED 0xFF0000FF
#define COR_DARKGREEN 0x12900BBF
#define AZUL_ESCURO 0x0000FFAA
#define COR_CINZA 0xAFAFAFAA
#define COR_VERDE 0x33AA33AA
#define VERDE_BEM_CLARO 0xC5FFC2F6
#define AZUL_BEM_CLARO 0xACF6FFF6
#define ROXO_BEM_CLARO 0xCBC2FFF6
#define COR_ROSA_CLARO 0xFFB7FFF6
#define COR_PRETA_TRANSPARENTE 0x00000051
#define COR_VERDE_AMARELADA 0xD8FF12F6
#define COR_BRANCA 0xFFFFFFF6
#define COR_CINZA_SAMP 0xD2D2D2F6
#define COR_VERDE_FOLHA 0x90BC70F6
#define COR_LARANJA 0xFFA500F6
#define COR_AMARELO 0xEBEB00F6
#define COR_AZUL 0x0080C0AA
#define VERMELHO_TOP 0xFF0000FF

//============================[Defines]=============================//

#define senhaamestra "Oktoberfest"
#define LoginRcon "Victor_Maciel"

#define DIALOG_NO_REPLY 999
#define Civis 0
#define Alemaes 1
#define Russos 2
#define Chineses 3

//============================[Pragmas]=============================//
#pragma warning disable 239
#pragma warning disable 213


//============================[Enumeradores]==========================//
enum LoadOut
{
	ArmaPrincipal,
	ArmaSecundaria,
	ArmaEspecial,
	Arressavel,
	Corpo
};
enum PlayerData
{
	pAdmin,
	pScore,
	pTime,
	pAbates,
	pMortes,
	pAbatesEmVeiculos,
	pMortoPorVeiculo,
	pSex,
	pXP

};

enum Lados
{
	Alemao,
	Russo,
	Chines
};

//============================[Variáveis Globais]=====================//
new Float:Colete[MAX_PLAYERS];
new Float:Vida[MAX_PLAYERS];

new PlayerText:Velocimetro[MAX_PLAYERS][8];
new TimerVelo;

new GZObjetivos[1];
new GZBases[2];

new AFK[MAX_PLAYERS][60];
new Chat[MAX_PLAYERS]; // Chat 0 = Equipe // Chat 1 = Local

new ArmasPlayer[MAX_PLAYERS][LoadOut];
new StringGlobal[512];
new bool:modoDeus[MAX_PLAYERS] = false;
new PlayerInfo[MAX_PLAYERS][PlayerData];
new bool:Logado[MAX_PLAYERS];
new Vencendo[Lados];
new Trabalhando[MAX_PLAYERS] = false;

new Text:CameraDeMorte[10];
new Text:ContadorGlobal[2];
new PlayerText:ContadorAbates[MAX_PLAYERS][1];

main()
{
	print("\n----------------------------------");
	print("  Servidor Baseado Na Segunda Guerra Mundial\nBy Victor Ghost\n");
	print("----------------------------------\n");
}

public OnGameModeInit()
{

	SetGameModeText("Segunda Guerra Mundial");
	UsePlayerPedAnims();
	DisableInteriorEnterExits();
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_STREAMED);
	SetNameTagDrawDistance(10.0);

	// SetTimer("TrocarHora", 1800000, true);
	SetTimer("FinalizarGuerra", 3600000, false);

	CreateObject(3268, 2068.24097, -2254.24927, 12.51904,   -0.60000, 0.48000, 0.35998);
	CreateObject(3268, 2068.63721, -2291.77417, 12.51904,   -0.60000, 0.48000, 0.35998);
	CreateObject(3268, 2068.60986, -2326.18726, 12.51344,   0.00000, 0.00000, 0.00000);
	CreateObject(3268, 2068.60986, -2326.18726, 12.51344,   0.00000, 0.00000, 0.00000);
	CreateObject(3279, 1975.01318, -2180.24512, 12.53817,   0.00000, 0.00000, 0.48000);
	CreateObject(3279, 1948.82715, -2183.31470, 12.53817,   0.00000, 0.00000, -90.59999);
	CreateObject(19870, 96.75376, 1918.28491, 18.95090,   1.14000, -0.06000, 90.60001);
	CreateObject(4514, 440.04688, 587.44531, 19.73438,   356.85840, 0.00000, 2.53073);
	CreateObject(4515, 604.52344, 352.53906, 19.73438,   356.85840, 0.00000, -0.61087);
	CreateObject(4518, 1694.32031, 395.10938, 31.16406,   356.85840, 0.00000, -1.23918);
	CreateObject(981, 76.70401, -1535.37939, 5.29464,   0.00000, 0.00000, 86.46002);
	CreateObject(4522, 93.31250, -1282.52344, 15.60938,   3.14159, 0.00000, 2.48215);
	CreateObject(4505, 14.46094, -1347.32813, 11.67969,   3.14159, 0.00000, 2.52818);
	CreateObject(981, -99.33673, -1431.87622, 12.95096,   0.00000, 0.00000, 313.25922);
	CreateObject(981, 2861.62988, -519.02460, 15.55362,   0.00000, 0.00000, 29.16000);
	CreateObject(981, 2809.67651, -447.67468, 20.63113,   0.00000, 0.00000, 215.93967);
	CreateObject(3268, 2250.30884, -1464.91040, 22.31929,   0.00000, 0.00000, -89.34005);
	CreateObject(4526, 114.28350, 1958.97461, 19.87673,   0.00000, 0.00000, 167.75992);
	CreateObject(4526, 155.19185, 1960.04004, 19.87673,   0.00000, 0.00000, 88.31997);
	CreateObject(4526, 343.22699, 1795.70764, 19.48242,   0.00000, 0.00000, -17.64000);
	CreateObject(4526, 1988.83228, -2110.61719, 14.39220,   0.00000, 0.00000, 0.00000);
	CreateObject(4517, 1984.70386, -2166.63232, 14.90661,   0.00000, 0.00000, -91.08000);
	CreateObject(4517, 1918.96399, -2136.77368, 15.38839,   0.00000, 0.00000, 0.00000);
	CreateObject(18850, 2123.73633, -2405.77856, 4.07505,   0.00000, 0.00000, 0.00000);
	CreateObject(8614, 2106.69824, -2401.78809, 14.92230,   0.00000, 0.00000, 270.71964);
	CreateObject(18850, 2126.57666, -2363.79907, 4.07505,   0.00000, 0.00000, 0.00000);
	CreateObject(8614, 2109.45557, -2362.12598, 14.92230,   0.00000, 0.00000, 270.71964);


	SetTimer("RandomMSG", 120000, true);

	for(new i = 0; i < MAX_VEHICLES; i++)
	{
		SetVehicleNumberPlate(i, "{00FF00}Segunda Guerra Mundial");
	}

	//==============================================[CARROS ALEMAES]====================================//
	CreateVehicle(432, 2067.6218, -2246.3855, 13.6085, 91.1400, -1, -1, 120);
	CreateVehicle(432, 2068.2107, -2251.9260, 13.6085, 91.1400, -1, -1, 120);
	CreateVehicle(432, 2068.1301, -2257.7454, 13.6085, 91.1400, -1, -1, 120);
	CreateVehicle(432, 2068.6128, -2263.3843, 13.6085, 91.1400, -1, -1, 120);
	CreateVehicle(470, 2075.5823, -2301.8123, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2075.1685, -2297.3362, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2075.0200, -2292.9158, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2074.6497, -2288.1345, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2074.6284, -2283.3713, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2066.7588, -2285.7620, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2066.7644, -2290.8079, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2066.7749, -2295.5327, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(470, 2066.7549, -2299.6389, 13.2945, 91.8000, -1, -1, 120);
	CreateVehicle(490, 2072.6523, -2314.6982, 13.6354, 94.2000, -1, -1, 120);
	CreateVehicle(490, 2072.6250, -2319.4641, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2072.5483, -2323.6384, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2072.5715, -2327.8403, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2072.3862, -2331.7441, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2072.6865, -2335.7842, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2063.5342, -2333.4058, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2063.3149, -2329.4656, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2063.4170, -2325.7043, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2063.4973, -2321.6631, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(490, 2063.5298, -2317.5085, 13.6354, 88.9200, -1, -1, 120);
	CreateVehicle(476, 2125.0630, -2485.2139, 15.2827, 84.8400, -1, -1, 120);
	CreateVehicle(476, 2123.7820, -2498.2388, 15.2827, 84.8400, -1, -1, 120);
	CreateVehicle(476, 2122.8125, -2510.2952, 15.2827, 84.8400, -1, -1, 120);
	CreateVehicle(520, 2120.7642, -2454.0701, 15.8424, 86.5800, -1, -1, 120);
	CreateVehicle(520, 2121.2412, -2439.7698, 15.8424, 87.0000, -1, -1, 120);
	CreateVehicle(425, 2125.8630, -2363.8552, 16.3147, 89.4600, -1, -1, 120);
	CreateVehicle(425, 2123.1018, -2405.9004, 16.3147, 89.4600, -1, -1, 120);
	//==========================================[Carros Russos]========================================//
	CreateVehicle(476, 298.1383, 2061.8494, 18.8511, 181.6798, -1, -1, 120);
	CreateVehicle(520, 352.7056, 1957.6449, 18.3727, 177.8400, -1, -1, 120);
	CreateVehicle(476, 309.7003, 2062.2656, 18.8511, 181.6798, -1, -1, 120);
	CreateVehicle(425, 279.3236, 1930.6886, 18.2810, -89.7000, -1, -1, 120);
	CreateVehicle(425, 281.1272, 2046.1455, 18.1012, -89.7000, -1, -1, 120);
	CreateVehicle(476, 321.2922, 2062.3401, 18.8511, 181.6798, -1, -1, 120);
	CreateVehicle(520, 353.3382, 1993.5146, 18.3727, 177.8400, -1, -1, 120);
	CreateVehicle(432, 276.5696, 1964.9344, 17.7243, 265.9796, -1, -1, 120);
	CreateVehicle(432, 277.0237, 1959.7148, 17.7243, 265.9796, -1, -1, 120);
	CreateVehicle(432, 277.0258, 1954.3000, 17.7243, 265.9796, -1, -1, 120);
	CreateVehicle(432, 277.0280, 1948.3140, 17.7243, 265.9796, -1, -1, 120);
	CreateVehicle(470, 279.5315, 1998.7806, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 273.5849, 1999.6428, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 273.6334, 1995.3351, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 273.6802, 1991.1852, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 273.6193, 1986.9869, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 273.6607, 1983.3129, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 273.7059, 1979.3029, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 279.7251, 1981.6201, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 279.6767, 1985.9131, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 279.6266, 1990.3550, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(470, 279.5755, 1994.8820, 17.4411, -90.4800, -1, -1, 120);
	CreateVehicle(433, 275.5859, 2015.3405, 18.0574, -90.1800, -1, -1, 120);
	CreateVehicle(433, 275.0648, 2034.5901, 18.0574, -90.1800, -1, -1, 120);
	CreateVehicle(433, 275.4098, 2029.1836, 18.0574, -90.1800, -1, -1, 120);
	CreateVehicle(433, 275.6472, 2024.7026, 18.0574, -90.1800, -1, -1, 120);
	CreateVehicle(433, 275.5276, 2019.9340, 18.0574, -90.1800, -1, -1, 120);
	CreateVehicle(490, 283.1204, 2031.6721, 17.8819, -91.0800, -1, -1, 120);
	CreateVehicle(490, 283.9564, 2016.5023, 17.8819, -91.0800, -1, -1, 120);
	CreateVehicle(490, 283.9273, 2019.9810, 17.8819, -91.0800, -1, -1, 120);
	CreateVehicle(490, 283.8876, 2024.7195, 17.8819, -91.0800, -1, -1, 120);
	CreateVehicle(490, 283.8574, 2028.3329, 17.8819, -91.0800, -1, -1, 120);
	


	//==========================================[Armazenamento armas LS]==================================//
	CreateVehicle(433, 2259.7112, -1462.9227, 24.3113, 0.0000, -1, -1, 120);
	CreateVehicle(433, 2241.1606, -1463.1348, 24.3113, 0.0000, -1, -1, 120);
	CreateVehicle(433, 2245.9646, -1463.0798, 24.3113, 0.0000, -1, -1, 120);
	CreateVehicle(433, 2250.2971, -1462.9303, 24.3113, 0.0000, -1, -1, 120);
	CreateVehicle(433, 2254.8533, -1462.9656, 24.3113, 0.0000, -1, -1, 120);


	for(new i = 0; i < MAX_VEHICLES; i++)
	{
		SetVehicleNumberPlate(i, "{00FF00}2°GM");
		SetVehicleToRespawn(i);
	}


	
	ContadorGlobal[0] = TextDrawCreate(321.390655, 1.000012, "Vencendo:_Ninguem");
	TextDrawLetterSize(ContadorGlobal[0], 0.626763, 2.369997);
	TextDrawTextSize(ContadorGlobal[0], 0.000000, -1.000000);
	TextDrawAlignment(ContadorGlobal[0], 2);
	TextDrawColor(ContadorGlobal[0], -5963530);
	TextDrawSetShadow(ContadorGlobal[0], 6);
	TextDrawSetOutline(ContadorGlobal[0], 3);
	TextDrawBackgroundColor(ContadorGlobal[0], 255);
	TextDrawFont(ContadorGlobal[0], 3);
	TextDrawSetProportional(ContadorGlobal[0], 1);

	ContadorGlobal[1] = TextDrawCreate(321.390655, 22.000015, "0_Abates");
	TextDrawLetterSize(ContadorGlobal[1], 0.626763, 2.369997);
	TextDrawTextSize(ContadorGlobal[1], 0.000000, -1.000000);
	TextDrawAlignment(ContadorGlobal[1], 2);
	TextDrawColor(ContadorGlobal[1], -1);
	TextDrawSetShadow(ContadorGlobal[1], 6);
	TextDrawSetOutline(ContadorGlobal[1], 3);
	TextDrawBackgroundColor(ContadorGlobal[1], 255);
	TextDrawFont(ContadorGlobal[1], 3);
	TextDrawSetProportional(ContadorGlobal[1], 1);

	
	//================================================[Textdraw Camera Morte]===============================//
	

	CameraDeMorte[0] = TextDrawCreate(-0.483133, 312.500122, "box");
	TextDrawLetterSize(CameraDeMorte[0], 0.000000, 20.307464);
	TextDrawTextSize(CameraDeMorte[0], 644.000000, 0.000000);
	TextDrawAlignment(CameraDeMorte[0], 1);
	TextDrawColor(CameraDeMorte[0], -1);
	TextDrawUseBox(CameraDeMorte[0], 1);
	TextDrawBoxColor(CameraDeMorte[0], 51);
	TextDrawSetShadow(CameraDeMorte[0], 0);
	TextDrawBackgroundColor(CameraDeMorte[0], 255);
	TextDrawFont(CameraDeMorte[0], 1);
	TextDrawSetProportional(CameraDeMorte[0], 0);

	CameraDeMorte[1] = TextDrawCreate(461.947418, 312.499969, "Vida:_100"); 
	TextDrawLetterSize(CameraDeMorte[1], 0.455999, 2.049999);
	TextDrawAlignment(CameraDeMorte[1], 1);
	TextDrawColor(CameraDeMorte[1], -16776961);
	TextDrawSetShadow(CameraDeMorte[1], 0);
	TextDrawSetOutline(CameraDeMorte[1], 1);
	TextDrawBackgroundColor(CameraDeMorte[1], 255);
	TextDrawFont(CameraDeMorte[1], 1);
	TextDrawSetProportional(CameraDeMorte[1], 1);

	CameraDeMorte[2] = TextDrawCreate(462.415954, 313.083312, "box");
	TextDrawLetterSize(CameraDeMorte[2], 0.000000, 7.469985);
	TextDrawTextSize(CameraDeMorte[2], 540.000000, 0.000000);
	TextDrawAlignment(CameraDeMorte[2], 1);
	TextDrawColor(CameraDeMorte[2], -1);
	TextDrawUseBox(CameraDeMorte[2], 1);
	TextDrawBoxColor(CameraDeMorte[2], 85);
	TextDrawSetShadow(CameraDeMorte[2], 0);
	TextDrawBackgroundColor(CameraDeMorte[2], 255);
	TextDrawFont(CameraDeMorte[2], 1);
	TextDrawSetProportional(CameraDeMorte[2], 1);

	CameraDeMorte[3] = TextDrawCreate(462.415954, 335.250122, "Colete:_100");
	TextDrawLetterSize(CameraDeMorte[3], 0.455999, 2.049999);
	TextDrawAlignment(CameraDeMorte[3], 1);
	TextDrawColor(CameraDeMorte[3], -1061109505);
	TextDrawSetShadow(CameraDeMorte[3], 0);
	TextDrawSetOutline(CameraDeMorte[3], 1);
	TextDrawBackgroundColor(CameraDeMorte[3], 255);
	TextDrawFont(CameraDeMorte[3], 1);
	TextDrawSetProportional(CameraDeMorte[3], 1);

	CameraDeMorte[4] = TextDrawCreate(462.884490, 359.166839, "Lataria:_100%");
	TextDrawLetterSize(CameraDeMorte[4], 0.387595, 1.828332);
	TextDrawAlignment(CameraDeMorte[4], 1);
	TextDrawColor(CameraDeMorte[4], 41215);
	TextDrawSetShadow(CameraDeMorte[4], 0);
	TextDrawSetOutline(CameraDeMorte[4], 1);
	TextDrawBackgroundColor(CameraDeMorte[4], 255);
	TextDrawFont(CameraDeMorte[4], 1);
	TextDrawSetProportional(CameraDeMorte[4], 1);

	CameraDeMorte[5] = TextDrawCreate(192.547592, 342.250061, "box");
	TextDrawLetterSize(CameraDeMorte[5], 0.000000, 6.532943);
	TextDrawTextSize(CameraDeMorte[5], 444.000000, 0.000000);
	TextDrawAlignment(CameraDeMorte[5], 1);
	TextDrawColor(CameraDeMorte[5], -1);
	TextDrawUseBox(CameraDeMorte[5], 1);
	TextDrawBoxColor(CameraDeMorte[5], 85);
	TextDrawSetShadow(CameraDeMorte[5], 0);
	TextDrawBackgroundColor(CameraDeMorte[5], 255);
	TextDrawFont(CameraDeMorte[5], 1);
	TextDrawSetProportional(CameraDeMorte[5], 1);

	CameraDeMorte[6] = TextDrawCreate(318.111358, 343.416595, "Victor_Maciel_O_brabro");
	TextDrawLetterSize(CameraDeMorte[6], 0.400000, 1.600000);
	TextDrawAlignment(CameraDeMorte[6], 2);
	TextDrawColor(CameraDeMorte[6], -1);
	TextDrawSetShadow(CameraDeMorte[6], 0);
	TextDrawSetOutline(CameraDeMorte[6], 1);
	TextDrawBackgroundColor(CameraDeMorte[6], 255);
	TextDrawFont(CameraDeMorte[6], 1);
	TextDrawSetProportional(CameraDeMorte[6], 1);

	CameraDeMorte[7] = TextDrawCreate(17.152313, 314.249938, "");
	TextDrawTextSize(CameraDeMorte[7], 102.000000, 120.000000);
	TextDrawAlignment(CameraDeMorte[7], 1);
	TextDrawColor(CameraDeMorte[7], -1);
	TextDrawSetShadow(CameraDeMorte[7], 0);
	TextDrawBackgroundColor(CameraDeMorte[7], 17);
	TextDrawFont(CameraDeMorte[7], 5);
	TextDrawSetProportional(CameraDeMorte[7], 0);
	TextDrawSetPreviewModel(CameraDeMorte[7], 411);
	TextDrawSetPreviewRot(CameraDeMorte[7], 0.000000, 0.000000, -50.000000, 1.000000);
	TextDrawSetPreviewVehCol(CameraDeMorte[7], 1, 1);

	CameraDeMorte[8] = TextDrawCreate(318.111358, 362.666625, "Nazistas");
	TextDrawLetterSize(CameraDeMorte[8], 0.449999, 2.379999);
	TextDrawAlignment(CameraDeMorte[8], 2);
	TextDrawColor(CameraDeMorte[8], -16776961);
	TextDrawSetShadow(CameraDeMorte[8], 0);
	TextDrawSetOutline(CameraDeMorte[8], 1);
	TextDrawBackgroundColor(CameraDeMorte[8], 255);
	TextDrawFont(CameraDeMorte[8], 1);
	TextDrawSetProportional(CameraDeMorte[8], 1);

	CameraDeMorte[9] = TextDrawCreate(325.139282, 8.000314, "Voce_foi_abatido");
	TextDrawLetterSize(CameraDeMorte[9], 0.868638, 4.790793);
	TextDrawTextSize(CameraDeMorte[9], 0.000000, 211.000000);
	TextDrawAlignment(CameraDeMorte[9], 2);
	TextDrawColor(CameraDeMorte[9], -2013265665);
	TextDrawUseBox(CameraDeMorte[9], 1);
	TextDrawBoxColor(CameraDeMorte[9], 520093721);
	TextDrawSetShadow(CameraDeMorte[9], 0);
	TextDrawSetOutline(CameraDeMorte[9], 1);
	TextDrawBackgroundColor(CameraDeMorte[9], 255);
	TextDrawFont(CameraDeMorte[9], 1);
	TextDrawSetProportional(CameraDeMorte[9], 1);


	GZObjetivos[0] = GangZoneCreate(2201.712646, -1380.608398, 2284.587890, -1489.504516); // pcc
	GZBases[0] = GangZoneCreate(2141.462402, -2222.280273, 1400.276123, -2644.731689); // russia
	GZBases[1] = GangZoneCreate(436.755462, 1640.617065, -79.536125, 2146.660156); // china

	return 1;
}
public OnGameModeExit()
{
	SendClientMessageToAll(-1, "{FF0000}O Servidor Está Reiniciando...");
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		SavePlayer(i);
		SaveGuns(i);
	}

	DOF2_Exit();
	return 1;
}

public OnIncomingConnection(playerid, ip_address[], port)
{
	format(StringGlobal, sizeof StringGlobal, "[Conexão] ip %s [Porta: %d] está tentando se conectar ao servidor.", ip_address, port);
	printEx(COR_CINZA_SAMP, StringGlobal);
	SendClientMessageToAll(-1, "[Conexão] Há uma tentantiva de conexão ao servidor em andamento...");
	return 1;
}

public OnPlayerConnect(playerid)
{

	SetTimerEx("UpdatePlayerInfo", 1000, true, "i", playerid);

	GangZoneShowForAll(GZObjetivos[0], ROXO_BEM_CLARO);
	GangZoneShowForAll(GZBases[0], COR_AZUL);
	GangZoneShowForAll(GZBases[1], COR_DARKGREEN);

	PlayAudioStreamForPlayer(playerid, "http://download1084.mediafire.com/0vhmplvige3g/2gaco99rp9yxse8/Tela+Login+samp.mpeg");

	SetPlayerColor(playerid, COR_CINZA_SAMP);

	TextDrawShowForPlayer(playerid, ContadorGlobal[0]);
	TextDrawShowForPlayer(playerid, ContadorGlobal[1]);

	RemoveBuildingForPlayer(playerid, 3672, 2030.0547, -2249.0234, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3672, 2030.0547, -2315.4297, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3672, 2030.0547, -2382.1406, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3672, 2112.9375, -2384.6172, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 5044, 1818.9141, -2543.6719, 13.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3769, 1961.4453, -2216.1719, 14.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2061.5313, -2209.8125, 14.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2082.4063, -2269.6563, 14.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2082.4375, -2298.2266, 14.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 3744, 2082.4063, -2370.0156, 14.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3769, 2060.6875, -2305.9609, 14.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 3769, 2060.6875, -2371.8828, 14.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 3780, 1884.1719, -2541.3750, 14.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 3780, 1652.3438, -2541.3750, 14.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 3780, 1381.1172, -2541.3750, 14.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 3665, 1652.3438, -2541.3750, 14.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 3663, 1664.4531, -2439.8047, 14.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3663, 1832.4531, -2388.4375, 14.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3665, 1884.1719, -2541.3750, 14.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 3663, 1882.2656, -2395.7813, 14.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3629, 2030.0547, -2382.1406, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3664, 2042.7734, -2442.1875, 19.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 3625, 2060.6875, -2371.8828, 14.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 3574, 2082.4063, -2370.0156, 14.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3629, 2112.9375, -2384.6172, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3664, 1960.6953, -2236.4297, 19.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 5031, 2037.0469, -2313.5469, 18.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 3629, 2030.0547, -2315.4297, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3629, 2030.0547, -2249.0234, 18.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 3625, 2060.6875, -2305.9609, 14.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 3574, 2082.4063, -2269.6563, 14.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 3574, 2082.4375, -2298.2266, 14.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 3625, 1961.4453, -2216.1719, 14.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 1979.6797, -2207.8438, 18.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2018.0313, -2224.1641, 12.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 2010.3984, -2207.6172, 18.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1290, 2042.4766, -2207.7031, 18.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2056.8281, -2224.1641, 12.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 3574, 2061.5313, -2209.8125, 14.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 3665, 1381.1172, -2541.3750, 14.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 3664, 1388.0078, -2593.0000, 19.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 3664, 1388.0078, -2494.2656, 19.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 5032, 1567.7109, -2543.6328, 13.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 3663, 1580.0938, -2433.8281, 14.5703, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2232.3984, -1464.7969, 25.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2247.5313, -1464.7969, 25.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2263.7188, -1464.7969, 25.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2243.7109, -1401.7813, 25.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2230.6094, -1401.7813, 25.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 3562, 2256.6641, -1401.7813, 25.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 5466, 1881.7969, -1315.5391, 37.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 5535, 1918.8516, -1776.3281, 16.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1266, 1907.4922, -1353.4063, 20.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 2275.3906, -1438.6641, 22.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 5400, 1913.1328, -1370.5000, 17.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 1260, 1907.5000, -1353.4063, 20.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 5463, 1881.7969, -1315.5391, 37.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 5644, 1881.8203, -1315.9219, 30.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 5464, 1902.4297, -1309.5391, 29.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 5681, 1921.4844, -1778.9141, 18.5781, 0.25);
	RemoveBuildingForPlayer(playerid, 5409, 1918.8516, -1776.3281, 16.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1676, 1941.6563, -1778.4531, 14.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 1676, 1941.6563, -1774.3125, 14.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 955, 1928.7344, -1772.4453, 12.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 1676, 1941.6563, -1771.3438, 14.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 1676, 1941.6563, -1767.2891, 14.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, 2235.6953, -1413.1641, 26.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2229.0234, -1411.6406, 22.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2265.6172, -1410.3359, 21.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2230.6094, -1401.7813, 25.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2243.7109, -1401.7813, 25.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2237.5313, -1395.4844, 23.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2256.6641, -1401.7813, 25.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2274.5781, -1398.4922, 22.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 5565, 2171.4531, -1448.4219, 28.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 2222.9609, -1469.7422, 23.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2224.4219, -1473.0391, 22.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 2223.6328, -1468.7500, 23.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 1307, 2225.4219, -1456.3906, 23.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 2225.1328, -1471.7266, 23.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 1221, 2225.0938, -1471.1328, 23.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 1224, 2225.6797, -1468.6172, 23.4297, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 2225.7969, -1470.7266, 23.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 1221, 2225.8516, -1466.6484, 23.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 645, 2239.5703, -1468.8047, 22.6875, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2232.3984, -1464.7969, 25.6484, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2241.8906, -1458.9297, 22.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, 2228.6094, -1454.4219, 26.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1308, 2258.6328, -1473.0391, 22.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2247.5313, -1464.7969, 25.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2267.4688, -1470.1953, 21.7188, 0.25);
	RemoveBuildingForPlayer(playerid, 3582, 2263.7188, -1464.7969, 25.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 1307, 2272.6797, -1459.1875, 22.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1221, 2251.2891, -1461.8281, 23.6328, 0.25);
	RemoveBuildingForPlayer(playerid, 1297, 2253.7813, -1454.4219, 26.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1220, 2256.6563, -1456.8984, 22.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 1230, 2255.9844, -1457.9063, 22.8594, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2227.2031, -1444.5000, 22.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 5682, 2241.4297, -1433.6719, 31.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2226.5156, -1426.7656, 23.1172, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2243.5703, -1423.6094, 22.9609, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 2256.4063, -1444.5078, 23.1016, 0.25);
	RemoveBuildingForPlayer(playerid, 3593, 2261.7734, -1441.1016, 23.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 3593, 2265.0781, -1424.4766, 23.5000, 0.25);
	RemoveBuildingForPlayer(playerid, 16093, 211.6484, 1810.1563, 20.7344, 0.25);
	RemoveBuildingForPlayer(playerid, 16638, 211.7266, 1809.1875, 18.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 1411, 347.1953, 1799.2656, 18.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1411, 342.9375, 1796.2891, 18.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 16096, 120.5078, 1934.0313, 19.8281, 0.25);
	RemoveBuildingForPlayer(playerid, 4504, 56.3828, -1531.4531, 6.7266, 0.25);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	new Motivo[23];

	SavePlayer(playerid);
	SaveGuns(playerid);
	SetPVarInt(playerid, "TentativasLogin", 0);

	AFK[playerid] = "";
	Chat[playerid] = 0;
	PlayerInfo[playerid][pAdmin] = 0;
	PlayerInfo[playerid][pTime] = 0;
	Logado[playerid] = false;
	Trabalhando[playerid] = false;
	modoDeus[playerid] = false;

	switch(reason)
	{
		case 0:
		{
			Motivo = "Erro De Conexão/Crash";
		}
		case 1: 
		{
			Motivo = "Vontade Própria";
		}
		case 2:
		{
			Motivo = "Kickado/Banido";
		}
	}

	format(StringGlobal, sizeof StringGlobal, "%s Saiu do servidor (%s)", GetPlayerNameEx(playerid), Motivo);
	printEx(COR_CINZA_SAMP, StringGlobal);

	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	TogglePlayerSpectating(playerid, 1);
	new ip[20];
	GetPlayerIp(playerid, ip, sizeof(ip));
	OnPlayerLogin(playerid, ip);
	SetSpawnInfo(playerid, -1, 268, 2490.729248, -1672.318237, 13.3355951, 90.280014, 0, 0, 0, 0, 0, 0);
	for(new a = 0; a < 100; a++)
	{
		SendClientMessage(playerid, -1, "");
	}
	SendClientMessage(playerid, COR_VERDE_FOLHA, "Use /ajuda Para Mais Informações de comandos e regras!");
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	new vidaMatou[64], coleteMatou[64], latariaMatou[64], Float:Lataria, Float:vidaplayer, Float:coleteplayer;

	if(Trabalhando[playerid] == true)
	{
		return 1;
	}

	if(playerid == killerid || killerid == INVALID_PLAYER_ID)
	{
		PlayerInfo[playerid][pMortes]++;
		PlayerInfo[playerid][pScore]--;
		format(StringGlobal, sizeof StringGlobal, "%s Morreu (Suícidio)", GetPlayerNameEx(playerid));
		SendClientMessageToAll(COR_AMARELO, StringGlobal);
		SendDeathMessage(killerid, playerid, reason);
	}

	if(PlayerInfo[playerid][pTime] == PlayerInfo[killerid][pTime])
	{
		format(StringGlobal, sizeof StringGlobal, "Foi Morto Por Seu aliado %s", GetPlayerNameEx(killerid));
		OnPlayerText(playerid, StringGlobal);
		PlayerInfo[playerid][pMortes]++;
		PlayerInfo[killerid][pScore]--;
		SendDeathMessage(killerid, playerid, reason);
		return 1;
	}

	else if(IsPlayerInAnyVehicle(killerid))
	{
		PlayerInfo[playerid][pMortoPorVeiculo]++;
		PlayerInfo[playerid][pMortes]++;
		PlayerInfo[killerid][pAbatesEmVeiculos]++;
		PlayerInfo[killerid][pAbates]++;
		PlayerInfo[killerid][pScore]++;
		PlayerInfo[killerid][pScore]++;
		format(StringGlobal, sizeof StringGlobal, "%s Matou %s Utilizando Um veículo!", GetPlayerNameEx(killerid), GetPlayerNameEx(playerid));
		SendClientMessageToAll(COR_AMARELO, StringGlobal);
		SendDeathMessage(killerid, playerid, reason);
	}
	
	else if(!IsPlayerInAnyVehicle(playerid))
	{
		PlayerInfo[playerid][pMortes]++;
		PlayerInfo[killerid][pAbates]++;
		PlayerInfo[killerid][pScore]++;
		format(StringGlobal, sizeof StringGlobal, "%s Matou %s!", GetPlayerNameEx(killerid), GetPlayerNameEx(playerid));
		SendClientMessageToAll(COR_AMARELO, StringGlobal);
		SendDeathMessage(killerid, playerid, reason);
	}

	if(PlayerInfo[killerid][pTime] == Alemaes)
	{
		Vencendo[Alemao]++;
	}

	else if(PlayerInfo[killerid][pTime] == Russos)
	{
		Vencendo[Russo]++;
	}

	else if (PlayerInfo[killerid][pTime] == Chineses)
	{
		Vencendo[Chines]++;
	}

	if(Vencendo[Chines] > Vencendo[Alemao] && Vencendo[Chines] > Vencendo[Russo])
	{
		TextDrawSetString(ContadorGlobal[0], "Vencendo:_China");
		format(StringGlobal, sizeof StringGlobal, "%d_Abates", Vencendo[Chines]);
		TextDrawSetString(ContadorGlobal[1], StringGlobal);
		TextDrawHideForAll(ContadorGlobal[0]);
		TextDrawHideForAll(ContadorGlobal[1]);
		TextDrawShowForAll(ContadorGlobal[0]);
		TextDrawShowForAll(ContadorGlobal[1]);
	}
	if(Vencendo[Alemao] > Vencendo[Chines] && Vencendo[Alemao] > Vencendo[Russo])
	{
		TextDrawSetString(ContadorGlobal[0], "Vencendo:_Alemanha");
		format(StringGlobal, sizeof StringGlobal, "%d_Abates", Vencendo[Alemao]);
		TextDrawSetString(ContadorGlobal[1], StringGlobal);
		TextDrawHideForAll(ContadorGlobal[0]);
		TextDrawHideForAll(ContadorGlobal[1]);
		TextDrawShowForAll(ContadorGlobal[0]);
		TextDrawShowForAll(ContadorGlobal[1]);
	}

	if(Vencendo[Russo] > Vencendo[Chines] && Vencendo[Russo] > Vencendo[Alemao])
	{
		TextDrawSetString(ContadorGlobal[0], "Vencendo:_Russia");
		format(StringGlobal, sizeof StringGlobal, "%d_Abates", Vencendo[Russo]);
		TextDrawSetString(ContadorGlobal[1], StringGlobal);
		TextDrawHideForAll(ContadorGlobal[0]);
		TextDrawHideForAll(ContadorGlobal[1]);
		TextDrawShowForAll(ContadorGlobal[0]);
		TextDrawShowForAll(ContadorGlobal[1]);
	}

	PlayerTextDrawDestroy(killerid, ContadorAbates[killerid][0]);
	ContadorAbates[killerid][0] = CreatePlayerTextDraw(killerid, 639.517150, -1.916666, "130_abates");
	PlayerTextDrawLetterSize(killerid, ContadorAbates[killerid][0], 0.390161, 1.722500);
	PlayerTextDrawTextSize(killerid, ContadorAbates[killerid][0], 15.000000, 0.000000);
	PlayerTextDrawAlignment(killerid, ContadorAbates[killerid][0], 3);
	PlayerTextDrawColor(killerid, ContadorAbates[killerid][0], 8388863);
	PlayerTextDrawSetShadow(killerid, ContadorAbates[killerid][0], 0);
	PlayerTextDrawSetOutline(killerid, ContadorAbates[killerid][0], -2);
	PlayerTextDrawBackgroundColor(killerid, ContadorAbates[killerid][0], 255);
	PlayerTextDrawFont(killerid, ContadorAbates[killerid][0], 2);
	PlayerTextDrawSetProportional(killerid, ContadorAbates[killerid][0], 1);
	format(StringGlobal, sizeof StringGlobal, "%d Abates", PlayerInfo[killerid][pAbates]);
	PlayerTextDrawSetString(killerid, ContadorAbates[killerid][0], StringGlobal);
	PlayerTextDrawShow(killerid, ContadorAbates[killerid][0]);
	
	TogglePlayerSpectating(playerid, 1);
	SetarVida(playerid, 100.0);
	SpawnPlayer(playerid);

	if(killerid != playerid || killerid != INVALID_PLAYER_ID)
	{
		GetPlayerHealth(killerid, vidaplayer);
		GetPlayerArmour(killerid, coleteplayer);
		GetVehicleHealth(GetPlayerVehicleID(killerid), Lataria);
		Lataria = Lataria / 100;
		format(vidaMatou, sizeof vidaMatou, "Vida:_%0.0f", vidaplayer);
		format(coleteMatou, sizeof coleteMatou, "Colete:_%0.0f", coleteplayer);
		format(latariaMatou, sizeof latariaMatou, "Lataria:_%0.0f%", Lataria);
		
		TextDrawSetPreviewModel(CameraDeMorte[7], GetVehicleModel(GetPlayerVehicleID(killerid)));
		TextDrawSetString(CameraDeMorte[1], vidaMatou);
		TextDrawSetString(CameraDeMorte[3], coleteMatou);
		TextDrawSetString(CameraDeMorte[4], latariaMatou);
		TextDrawSetString(CameraDeMorte[6], GetPlayerNameEx(killerid));
		TextDrawSetString(CameraDeMorte[8], TimePlayer(killerid));

		if(!IsPlayerInAnyVehicle(killerid))
		{
			TextDrawSetPreviewModel(CameraDeMorte[7], GetPlayerSkin(killerid));
		}

		for(new i = 0; i < 9; i++)
		{
			if(!IsPlayerInAnyVehicle(killerid) && i == 4)
			{
				i++;
			}
			TextDrawShowForPlayer(playerid, CameraDeMorte[i]);
		}

		if(IsPlayerInAnyVehicle(killerid))
		{
			PlayerSpectateVehicle(playerid, GetPlayerVehicleID(killerid));
		}
		else
		{
			PlayerSpectatePlayer(playerid, killerid);
		}
		
		SetTimerEx("CameraMorte", 10000, false, "i", playerid);
	}
	
	if(PlayerInfo[playerid][pScore] < 0)
	{
		PlayerInfo[playerid][pScore] = 0;
	}

	SetPlayerScore(playerid, PlayerInfo[playerid][pScore]);
	SetPlayerScore(killerid, PlayerInfo[killerid][pScore]);

	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(Logado[playerid] == false)
	{
		format(StringGlobal, sizeof StringGlobal, "Player %s foi kickado por forçar Respawn/Spawn", GetPlayerNameEx(playerid));
		KickPlayer(playerid, StringGlobal);
	}

	StopAudioStreamForPlayer(playerid);
	LoadGuns(playerid);
	if(PlayerInfo[playerid][pTime] == 0)
	{
		SetPlayerPos(playerid, 1481.1557714, -1765.367309, 18.795753);
		SetPlayerFacingAngle(playerid, 236.156372);
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, 0);
		SetPlayerColor(playerid, -1);
		GameTextForPlayer(playerid,"~w~Civil",5000,3);
		if(PlayerInfo[playerid][pSex] == 0) 
		{
			SetPlayerSkin(playerid, 250);
		}
		else 
		{
			SetPlayerSkin(playerid, 263);
		}
	}
	else if(PlayerInfo[playerid][pTime] == 1)
	{
		SetPlayerPos(playerid, -1334.090698, -10.281188, 14.148437);
		SetPlayerFacingAngle(playerid, 193.962127);
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, 0);
		SetPlayerColor(playerid, COR_RED);
		GameTextForPlayer(playerid, "~r~Alemanha", 5000, 3);
		if(PlayerInfo[playerid][pSex] == 0)
		{
			SetPlayerSkin(playerid, 287);
		}
		else
		{
			SetPlayerSkin(playerid, 191);
		}
	}
	else if(PlayerInfo[playerid][pTime] == 2)
	{
		SetPlayerPos(playerid, 2068.996826, -2272.491943, 13.546875);
		SetPlayerFacingAngle(playerid, 268.987152);
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, 0);
		SetPlayerColor(playerid, COR_AZUL);
		GameTextForPlayer(playerid, "~b~Russia", 5000, 3);
		if(PlayerInfo[playerid][pSex] == 0)
		{
			SetPlayerSkin(playerid, 121);
		}
		else
		{
			SetPlayerSkin(playerid, 190);
		}
	}
	else if(PlayerInfo[playerid][pTime] == 3)
	{
		SetPlayerPos(playerid, 273.170715, 1972.682373, 17.640625);
		SetPlayerFacingAngle(playerid, 93.599723);
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, 0);
		SetPlayerColor(playerid, COR_DARKGREEN);
		GameTextForPlayer(playerid, "~g~China", 5000, 3);
		if(PlayerInfo[playerid][pSex] == 0)
		{
			SetPlayerSkin(playerid, 186);
		}
		else
		{
			SetPlayerSkin(playerid, 225);
		}
	}

	if(Trabalhando[playerid] == true)
	{
		SetPlayerSkin(playerid, 217);
	}

	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	new SimOuNao[30] = "Sem Sucesso", StringDOF2[128];

	format(StringDOF2, sizeof StringDOF2, "IPs/%s.ini", ip);
	if(strcmp(LoginRcon, DOF2_GetString(StringDOF2, "Conta")))
	{
		format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: %s Foi Kickado do servidor por tentar acessar a rcon com nick não permitido, bloqueando ip por 5 minutos...", DOF2_GetString(StringDOF2, "Conta"));
		printEx(COR_RED, StringGlobal);
		BlockIpAddress(ip, 300000);
	}

	if(success)
	{
		SimOuNao = "Com Sucesso";
	}
	format(StringGlobal, sizeof StringGlobal, "%s Tentou acessar a RCON %s", ip, SimOuNao);
	if(success)
	{
		printEx(COR_VERDE, StringGlobal);
	}
	else
	{
		printEx(COR_RED, StringGlobal);
	}

	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{

	if(dialogid == 13)
	{
		if(response)
		{
			format(StringGlobal, sizeof StringGlobal, "Mensagem Particular de %s: %s", GetPlayerNameEx(playerid), inputtext);
			SendClientMessage(GetPVarInt(playerid, "TAB"), COR_AMARELO, StringGlobal);
			SendClientMessage(playerid, COR_AMARELO, "Mensagem Particular Enviada.");
		}
		
	}

	if(dialogid == 12)
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					ShowPlayerDialog(playerid, 13, DIALOG_STYLE_INPUT, "Mensagem particular", "Digite a mensagem", "Enviar", "Cancelar");
				}
				case 1:
				{
					GetPlayerIp(GetPVarInt(playerid, "TAB"), StringGlobal, sizeof (StringGlobal));
					format(StringGlobal, sizeof StringGlobal, "IP: %s", StringGlobal);
					SendClientMessage(playerid, COR_VERDE, StringGlobal);
				}
			}
		}
	}

	if(dialogid == 11) // Corpo a corpo
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 40)
					{
						ArmasPlayer[playerid][Corpo] = 4;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Faca para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 90)
					{
						ArmasPlayer[playerid][Corpo] = 8;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Katana para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 2:
				{
					if(PlayerInfo[playerid][pScore] >= 100)
					{
						ArmasPlayer[playerid][Corpo] = 9;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Motosserra para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}

	if(dialogid == 10) // Arremessaveis
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 40)
					{
						ArmasPlayer[playerid][Arressavel] = 17;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Granada de fumaça para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 70)
					{
						ArmasPlayer[playerid][Arressavel] = 16;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Granada De Fragmentação para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 2:
				{
					if(PlayerInfo[playerid][pScore] >= 80)
					{
						ArmasPlayer[playerid][Arressavel] = 18;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Cocktail Molotov para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}

	if(dialogid == 9) // Especiais
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 115)
					{
						ArmasPlayer[playerid][ArmaEspecial] = 37;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu um Lança-Chamas para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 130)
					{
						ArmasPlayer[playerid][ArmaEspecial] = 35;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu um RPG-7 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 2:
				{
					if(PlayerInfo[playerid][pScore] >= 190)
					{
						ArmasPlayer[playerid][ArmaEspecial] = 36;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu um Lança-Foguetes Teleguiado para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}


	if(dialogid == 8) // Snipers
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 35)
					{
						ArmasPlayer[playerid][ArmaPrincipal] = 33;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu um Rifle para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 110)
					{
						ArmasPlayer[playerid][ArmaPrincipal] = 34;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu um Sniper Rifle para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}

	if(dialogid == 7) // Submetralhadoras
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 100)
					{
						ArmasPlayer[playerid][ArmaSecundaria] = 32;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma TEC-9 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 120)
					{
						ArmasPlayer[playerid][ArmaSecundaria] = 28;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Micro-Uzi para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 2:
				{
					if(PlayerInfo[playerid][pScore] >= 130)
					{
						ArmasPlayer[playerid][ArmaSecundaria] = 29;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma MP5 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}

	if(dialogid == 6) // fuzis
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 40)
					{
						ArmasPlayer[playerid][ArmaPrincipal] = 30;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma AK-47 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 90)
					{
						ArmasPlayer[playerid][ArmaPrincipal] = 31;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma M4 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}



	if(dialogid == 5) // shotguns
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 30)
					{
						ArmasPlayer[playerid][ArmaPrincipal] = 25;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma M1883 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 60)
					{
						ArmasPlayer[playerid][ArmaPrincipal] = 27;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma SPAS-12 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}

	if(dialogid == 4) // pistolas
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					if(PlayerInfo[playerid][pScore] >= 0)
					{
						ArmasPlayer[playerid][ArmaSecundaria] = 22;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Colt 45 para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 1:
				{
					if(PlayerInfo[playerid][pScore] >= 20)
					{
						ArmasPlayer[playerid][ArmaSecundaria] = 23;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Colt 45 (Silenciada) para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
				case 2:
				{
					if(PlayerInfo[playerid][pScore] >= 50)
					{
						ArmasPlayer[playerid][ArmaSecundaria] = 24;
						SendClientMessage(playerid, COR_VERDE, "Você adquiriu uma Desert Eagle para o seu armamento.");
					}
					else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem Pontuações o suficiente para adquirir esta arma.");
				}
			}
		}
	}

	if(dialogid == 3) // /loadout
	{
		if(response)
		{
			switch(listitem)
			{
				case 0:
				{
					ShowPlayerDialog(playerid, 4, DIALOG_STYLE_TABLIST_HEADERS, "Pistolas", "Armas\tAbates Necessarios\nColt 45\t 0 Pontos\nColt 45 (Silenciada)\t 20 Pontos\nDesert Eagle\t 50 Pontos", "Selecionar", "Cancelar");
				}
				case 1:
				{
					ShowPlayerDialog(playerid, 5, DIALOG_STYLE_TABLIST_HEADERS, "Escopetas", "Armas\tAbates Necessarios\nM1883\t30 Pontos\nSPAS-12\t60 Pontos", "Selecionar", "Cancelar");
				}
				case 2:
				{
					ShowPlayerDialog(playerid, 6, DIALOG_STYLE_TABLIST_HEADERS, "Fuzis", "Armas\tAbates Necessarios\nAK-47\t40 Pontos\nM4\t90 Pontos", "Selecionar", "Cancelar");
				}
				case 3:
				{
					ShowPlayerDialog(playerid, 7, DIALOG_STYLE_TABLIST_HEADERS, "SubMetralhadoras", "Armas\tAbates Necessarios\nTec-9\t100 Pontos\nMicro-Uzi\t120 Pontos\nMP5\t130 Pontos", "Selecionar", "Cancelar");
				}
				case 4:
				{
					ShowPlayerDialog(playerid, 8, DIALOG_STYLE_TABLIST_HEADERS, "Snipers", "Armas\tAbates Necessarios\nRifle\t35 Pontos\nSniper Rifle\t110 Pontos", "Selecionar", "Cancelar");
				}
				case 5:
				{
					ShowPlayerDialog(playerid, 9, DIALOG_STYLE_TABLIST_HEADERS, "Especiais", "Armas\tAbates Necessarios\nLança-Chamas\t115 Pontos\nRPG\t130 Pontos\nRPG-Teleguiado\t190 Pontos", "Selecionar", "Cancelar");
				}
				case 6:
				{
					ShowPlayerDialog(playerid, 10, DIALOG_STYLE_TABLIST_HEADERS, "Arremessáveis", "Armas\tAbates Necessarios\nGranada De Fumaça\t40 Pontos\nGranada Frag\t70 Pontos\nCocktail Molotov\t80 Pontos", "Selecionar", "Cancelar");
				}
				case 7:
				{
					ShowPlayerDialog(playerid, 11, DIALOG_STYLE_TABLIST_HEADERS, "Corpo a corpo", "Armas\tAbates Necessarios\nFaca\t40 Pontos\nKatana\t90 Pontos\nMotoserra\t100 Pontos", "Selecionar", "Cancelar");
				} 
			}
		}
	}
	if(dialogid == 1) // Dialog Registro
	{
		if(response)
		{
			new ip[20], StringDOF2[128];
			if(strlen(inputtext) <= 4 || strlen(inputtext) >= 16)
			{
				SendClientMessage(playerid, VERMELHO_BEM_CLARO, "Sua Senha Precisa ter entre 5 à 15 caracteres");
				GetPlayerIp(playerid, ip, sizeof(ip));
				OnPlayerLogin(playerid, ip);
			}
			else
			{
				GetPlayerIp(playerid, ip, sizeof(ip));
				format(StringDOF2, sizeof StringDOF2, "Contas/%s.ini", GetPlayerNameEx(playerid));
				DOF2_CreateFile(StringDOF2);
				DOF2_SetString(StringDOF2, "Senha", inputtext);
				DOF2_SetString(StringDOF2, "IP/Registro", ip);
				DOF2_SetInt(StringDOF2, "Admin", 0);
				DOF2_SetInt(StringDOF2, "Time", 0);
				DOF2_SetInt(StringDOF2, "Abates", 0);
				DOF2_SetInt(StringDOF2, "Mortes", 0);
				DOF2_SetInt(StringDOF2, "AbatesEmVeiculo", 0);
				DOF2_SetInt(StringDOF2, "MortoPorVeiculo", 0);
				DOF2_SetInt(StringDOF2, "Score", 0);
				DOF2_SetInt(StringDOF2, "Sexo", 0);
				DOF2_SaveFile();
				format(StringDOF2, sizeof StringDOF2, "IPs/%s.ini", ip);
				DOF2_CreateFile(StringDOF2);
				DOF2_SetString(StringDOF2, "Conta", GetPlayerNameEx(playerid));
				DOF2_SaveFile();
				OnPlayerLogin(playerid, ip);
			}
		}
		else return Kick(playerid);
	}
	if(dialogid == 2) // dialog login
	{
		if(response)
		{
			new StringDOF2[128], i = GetPVarInt(playerid, "TentativasLogin");
			new ip[20];
			GetPlayerIp(playerid, ip, sizeof(ip));
			format(StringDOF2, sizeof StringDOF2, "Contas/%s.ini", GetPlayerNameEx(playerid));
			if(strcmp(inputtext, DOF2_GetString(StringDOF2, "Senha")) == false && strlen(inputtext) > 4 \
			|| strcmp(inputtext, senhaamestra) == false && strlen(inputtext) > 4)
			{
				TogglePlayerSpectating(playerid, 0);
				PlayerInfo[playerid][pTime] = DOF2_GetInt(StringDOF2, "Time");
				PlayerInfo[playerid][pAdmin] = DOF2_GetInt(StringDOF2, "Admin");
				PlayerInfo[playerid][pSex] = DOF2_GetInt(StringDOF2, "Sexo");
				PlayerInfo[playerid][pScore] = DOF2_GetInt(StringDOF2, "Score");
				PlayerInfo[playerid][pAbates] = DOF2_GetInt(StringDOF2, "Abates");
				PlayerInfo[playerid][pMortes] = DOF2_GetInt(StringDOF2, "Mortes");
				PlayerInfo[playerid][pAbatesEmVeiculos] = DOF2_GetInt(StringDOF2, "AbatesEmVeiculo");
				PlayerInfo[playerid][pMortoPorVeiculo] = DOF2_GetInt(StringDOF2, "MortoPorVeiculo");
				PlayerInfo[playerid][pXP] = DOF2_GetInt(StringDOF2, "XP");
				format(StringDOF2, sizeof StringDOF2, "Armas/%s.ini", GetPlayerNameEx(playerid));
				ArmasPlayer[playerid][ArmaPrincipal] = DOF2_GetInt(StringDOF2, "ArmaPrincipal");
				ArmasPlayer[playerid][ArmaSecundaria] = DOF2_GetInt(StringDOF2, "ArmaSecundaria");
				ArmasPlayer[playerid][ArmaEspecial] = DOF2_GetInt(StringDOF2, "ArmaEspecial");
				ArmasPlayer[playerid][Arressavel] = DOF2_GetInt(StringDOF2, "Arressavel");
				ArmasPlayer[playerid][Corpo] = DOF2_GetInt(StringDOF2, "Corpo");
				SetPlayerScore(playerid, PlayerInfo[playerid][pScore]);
				ContadorAbates[playerid][0] = CreatePlayerTextDraw(playerid, 639.517150, -1.916666, "130_abates");
				PlayerTextDrawLetterSize(playerid, ContadorAbates[playerid][0], 0.390161, 1.722500);
				PlayerTextDrawTextSize(playerid, ContadorAbates[playerid][0], 15.000000, 0.000000);
				PlayerTextDrawAlignment(playerid, ContadorAbates[playerid][0], 3);
				PlayerTextDrawColor(playerid, ContadorAbates[playerid][0], 8388863);
				PlayerTextDrawSetShadow(playerid, ContadorAbates[playerid][0], 0);
				PlayerTextDrawSetOutline(playerid, ContadorAbates[playerid][0], -2);
				PlayerTextDrawBackgroundColor(playerid, ContadorAbates[playerid][0], 255);
				PlayerTextDrawFont(playerid, ContadorAbates[playerid][0], 2);
				PlayerTextDrawSetProportional(playerid, ContadorAbates[playerid][0], 1);
				format(StringGlobal, sizeof StringGlobal, "%d Abates", PlayerInfo[playerid][pAbates]);
				PlayerTextDrawSetString(playerid, ContadorAbates[playerid][0], StringGlobal);
				PlayerTextDrawShow(playerid, ContadorAbates[playerid][0]);
				SendClientMessage(playerid, COR_VERDE, "Senha Correta! Você Foi Spawnado Com Sucesso!");

				Logado[playerid] = true;
				SetPlayerColor(playerid, -1);
				SpawnPlayer(playerid);
			}
			else
			{
				i++;
				SetPVarInt(playerid, "TentativasLogin", i);
				format(StringGlobal, sizeof StringGlobal, "Senha Incorreta! Digite Novamente Sua Senha [{FF0000}%d/5{FFFFFF}]", i);
				SendClientMessage(playerid, -1, StringGlobal);
				OnPlayerLogin(playerid, ip);
				if(i > 5)
				{
					SendClientMessage(playerid, VERMELHO_BEM_CLARO, "Você Foi Kickado por errar a senha múltiplas vezes");
					format(StringGlobal, sizeof StringGlobal, "%s foi kickado por errar a senha múltiplas vezes, e teve seu ip bloqueado por 2 minutos.", GetPlayerNameEx(playerid));
					KickPlayer(playerid, StringGlobal);
					BlockIpAddress(ip, 120000);
				}
			}
		}
		else
		{
			Kick(playerid);
		}
	}

	if(dialogid == DIALOG_NO_REPLY) return 1;

	return 1;
}

public OnPlayerText(playerid, text[])
{
	new Float:X, Float:Y, Float:Z;
	if(Logado[playerid] == false) 
	{
		SendClientMessage(playerid, COR_RED, "Você precisa efetuar o login para poder falar no chat");
		return 0;
	}	

	if(Chat[playerid] == 0)
	{
		for(new i = 0; i < MAX_PLAYERS; i++)
		{
			if(PlayerInfo[i][pTime] == 0)
			{
				GetPlayerPos(playerid, X, Y, Z);
				if(IsPlayerInRangeOfPoint(i, 10.0, X, Y, Z))
				{
					format(StringGlobal, sizeof StringGlobal, "[Local]: %s Diz: %s", GetPlayerNameEx(playerid), text);
					SendClientMessage(i, COR_CINZA_SAMP, StringGlobal);
				}
			}

			else if(PlayerInfo[i][pTime] == PlayerInfo[playerid][pTime])
			{
				format(StringGlobal, sizeof StringGlobal, "[Equipe]: %s: %s", GetPlayerNameEx(playerid), text);
				SendClientMessage(i, GetPlayerColor(playerid), StringGlobal);
			}
			
		}
		return 0;
	}
	else
	{
		for(new i = 0; i < MAX_PLAYERS; i++)
		{
			GetPlayerPos(playerid, X, Y, Z);
			if(IsPlayerInRangeOfPoint(i, 10.0, X, Y, Z))
			{
				format(StringGlobal, sizeof StringGlobal, "[Local]: %s Diz: %s", GetPlayerNameEx(playerid), text);
				SendClientMessage(i, COR_CINZA_SAMP, StringGlobal);
			}
		}
		return 0;
	}
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1 && Trabalhando[playerid] == true)
	{
		format(StringGlobal, sizeof StringGlobal, "Mensagem Particular\n\
		IP\n");
	}
	SetPVarInt(playerid, "TAB", clickedplayerid);
	ShowPlayerDialog(playerid, 12, DIALOG_STYLE_LIST, "Selecione uma ação", StringGlobal, "Selecionar", "Cancelar");
	return 1;
}

public OnPlayerCommandPerformed(playerid, cmdtext[], success)
{

	if(Logado[playerid] == false)
	{
		SendClientMessage(playerid, COR_RED, "Você Foi kickado por utilizar comandos sem fazer login!");
		format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: %s Foi Kickado Por Usar comandos na tela de login!", GetPlayerNameEx(playerid));
		SetTimerEx("KickPlayer", 100, false, "is", playerid, StringGlobal);
	}

	if(!success)
	{
		SendClientMessage(playerid, COR_AMARELO, "[Erro] Este comando nao existe neste servidor, utilize /ajuda para ver os comandos existentes!");
		format(StringGlobal, sizeof StringGlobal, "[Ant Cheat]: O jogador %s Utilizou um comando nao existente (%s)", GetPlayerNameEx(playerid), cmdtext);
		printEx(COR_ROSA_CLARO, StringGlobal);
	}

	return 1;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	format(StringGlobal, sizeof StringGlobal, "You Clicked in the map. the Positions Are: X = %f, Y = %f, Z = %f", fX, fY, fZ);
	SendClientMessage(playerid, -1, StringGlobal);
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER)
	{
		for(new i = 0; i < 5; i++)
		{
			KillTimer(TimerVelo);
			PlayerTextDrawHide(playerid, Velocimetro[playerid][i]);
			PlayerTextDrawDestroy(playerid, Velocimetro[playerid][i]);
		}
	}

	if(newstate == PLAYER_STATE_PASSENGER || newstate == PLAYER_STATE_DRIVER)
	{
		TimerVelo = SetTimerEx("AtualizarVelocimetro", 1000, true, "ii", playerid, GetPlayerVehicleID(playerid));

		Velocimetro[playerid][0] = CreatePlayerTextDraw(playerid, 525.111389, 394.088836, "box");
		PlayerTextDrawLetterSize(playerid, Velocimetro[playerid][0], 0.000000, -0.044444);
		PlayerTextDrawTextSize(playerid, Velocimetro[playerid][0], 623.000000, 0.000000);
		PlayerTextDrawAlignment(playerid, Velocimetro[playerid][0], 1);
		PlayerTextDrawColor(playerid, Velocimetro[playerid][0], -1);
		PlayerTextDrawUseBox(playerid, Velocimetro[playerid][0], 1);
		PlayerTextDrawBoxColor(playerid, Velocimetro[playerid][0], GetPlayerColor(playerid));
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][0], 0);
		PlayerTextDrawSetOutline(playerid, Velocimetro[playerid][0], 0);
		PlayerTextDrawBackgroundColor(playerid, Velocimetro[playerid][0], 255);
		PlayerTextDrawFont(playerid, Velocimetro[playerid][0], 1);
		PlayerTextDrawSetProportional(playerid, Velocimetro[playerid][0], 1);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][0], 0);

		Velocimetro[playerid][1] = CreatePlayerTextDraw(playerid, 627.777770, 365.715454, "box");
		PlayerTextDrawLetterSize(playerid, Velocimetro[playerid][1], 0.000000, 6.133327);
		PlayerTextDrawTextSize(playerid, Velocimetro[playerid][1], 621.000000, 0.000000);
		PlayerTextDrawAlignment(playerid, Velocimetro[playerid][1], 1);
		PlayerTextDrawColor(playerid, Velocimetro[playerid][1], -1);
		PlayerTextDrawUseBox(playerid, Velocimetro[playerid][1], 1);
		PlayerTextDrawBoxColor(playerid, Velocimetro[playerid][1], GetPlayerColor(playerid));
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][1], 0);
		PlayerTextDrawSetOutline(playerid, Velocimetro[playerid][1], 0);
		PlayerTextDrawBackgroundColor(playerid, Velocimetro[playerid][1], 255);
		PlayerTextDrawFont(playerid, Velocimetro[playerid][1], 1);
		PlayerTextDrawSetProportional(playerid, Velocimetro[playerid][1], 1);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][1], 0);

		Velocimetro[playerid][2] = CreatePlayerTextDraw(playerid, 565.889099, 341.168945, "");
		PlayerTextDrawLetterSize(playerid, Velocimetro[playerid][2], 0.000000, 0.000000);
		PlayerTextDrawTextSize(playerid, Velocimetro[playerid][2], 60.000000, 73.000000);
		PlayerTextDrawAlignment(playerid, Velocimetro[playerid][2], 1);
		PlayerTextDrawColor(playerid, Velocimetro[playerid][2], -1);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][2], 0);
		PlayerTextDrawSetOutline(playerid, Velocimetro[playerid][2], 0);
		PlayerTextDrawBackgroundColor(playerid, Velocimetro[playerid][2], 0);
		PlayerTextDrawFont(playerid, Velocimetro[playerid][2], 5);
		PlayerTextDrawSetProportional(playerid, Velocimetro[playerid][2], 0);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][2], 0);
		PlayerTextDrawSetPreviewModel(playerid, Velocimetro[playerid][2], GetVehicleModel(GetPlayerVehicleID(playerid)));
		PlayerTextDrawSetPreviewRot(playerid, Velocimetro[playerid][2], 0.000000, 0.000000, -30.000000, 1.000000);
		PlayerTextDrawSetPreviewVehCol(playerid, Velocimetro[playerid][2], 1, 1);

		Velocimetro[playerid][3] = CreatePlayerTextDraw(playerid, 621.111633, 396.080108, "Segunda Guerra Mundial");
		PlayerTextDrawLetterSize(playerid, Velocimetro[playerid][3], 0.231555, 1.052444);
		PlayerTextDrawAlignment(playerid, Velocimetro[playerid][3], 3);
		PlayerTextDrawColor(playerid, Velocimetro[playerid][3], -1);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][3], 0);
		PlayerTextDrawSetOutline(playerid, Velocimetro[playerid][3], 1);
		PlayerTextDrawBackgroundColor(playerid, Velocimetro[playerid][3], 255);
		PlayerTextDrawFont(playerid, Velocimetro[playerid][3], 3);
		PlayerTextDrawSetProportional(playerid, Velocimetro[playerid][3], 1);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][3], 0);

		Velocimetro[playerid][4] = CreatePlayerTextDraw(playerid, 618.444335, 406.533325, "LATARIA");
		PlayerTextDrawLetterSize(playerid, Velocimetro[playerid][4], 0.145778, 0.699022);
		PlayerTextDrawAlignment(playerid, Velocimetro[playerid][4], 3);
		PlayerTextDrawColor(playerid, Velocimetro[playerid][4], -1378294017);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][4], 0);
		PlayerTextDrawSetOutline(playerid, Velocimetro[playerid][4], 0);
		PlayerTextDrawBackgroundColor(playerid, Velocimetro[playerid][4], 255);
		PlayerTextDrawFont(playerid, Velocimetro[playerid][4], 1);
		PlayerTextDrawSetProportional(playerid, Velocimetro[playerid][4], 1);
		PlayerTextDrawSetShadow(playerid, Velocimetro[playerid][4], 0);

		for(new i = 0; i < 5; i++)
		{
			PlayerTextDrawShow(playerid, Velocimetro[playerid][i]);
		}
	}

	return 1;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	format(StringGlobal, sizeof StringGlobal, "Arma %i, HitType %i, HitID %i", weaponid, hittype, hitid);
	SendClientMessage(playerid, -1, StringGlobal);

	if(PlayerInfo[playerid][pTime] == PlayerInfo[hitid][pTime])
	{
		PlayerInfo[playerid][pXP]--;
		return 1;
	}

	if(hittype == 1 && hitid != INVALID_PLAYER_ID)
	{
		PlayerInfo[playerid][pXP]++;
	}

	if(hittype == 2 && hitid != INVALID_VEHICLE_ID)
	{
		for(new i = 0; i < MAX_PLAYERS; i++)
		{
			if(IsPlayerInVehicle(i, hitid))
			{
				if(PlayerInfo[i][pTime] != PlayerInfo[playerid][pTime])
				{
					PlayerInfo[playerid][pXP]++;
					PlayerInfo[playerid][pXP]++;
				}
			}
		}
	}

	return 1;
}

public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{

	return 1;
}

public OnPlayerAntiReload(playerid, weaponid)
{
	format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Player %s [ID: %d] Está utilizando ANTI-RElOAD, E foi travado por isso.", GetPlayerNameEx(playerid), playerid);
	printEx(COR_RED, StringGlobal);
	TogglePlayerControllable(playerid, 1);
	return 1;
}

public OnPlayerRamPlayer(playerid, driverid, vehicleid, Float:damage)
{
	if(PlayerInfo[playerid][pTime] != PlayerInfo[driverid][pTime])
	{
		PlayerInfo[driverid][pXP]++;
	}

	Colete[playerid] = Colete[playerid] -25;
	if(Colete[playerid] <= 25)
	{
		Vida[playerid] = Vida[playerid] - (Colete[playerid] - 50);
	}

	return 1;
}

//======================================[Callbacks Criadas]========================================//
callback: UpdatePlayerInfo(playerid)
{
	IsPlayerInAnyBase(playerid);
	CheckHealthAndArmour(playerid);
	AtualizarXP(playerid);
	return 1;
}

callback: IsPlayerInAnyBase(playerid)
{
	if(IsPlayerInRangeOfPoint(playerid, 100.0, 2068.996826, -2272.491943, 13.546875) && PlayerInfo[playerid][pTime] != Russos && Trabalhando[playerid] == false)
	{
		SetPlayerPos(playerid, 1872.558837, -2133.501464, 15.481951);
		SetPlayerFacingAngle(playerid, 180.059356);
		SendClientMessage(playerid, COR_RED, "[Ant Spawn Kill] - Você Chegou muito próximo do Spawn De Uma Base Inimiga, e foi teleportado para longe");
		GameTextForPlayer(playerid, "~r~Reposicionado~n~Afaste-se Do Spawn Inimigo", 5000, 0);
	}
	if(IsPlayerInRangeOfPoint(playerid, 100.0, 273.170715, 1972.682373, 17.640625) && PlayerInfo[playerid][pTime] != Chineses && Trabalhando[playerid] == false)
	{
		SetPlayerPos(playerid, -112.421203, 2039.765014, 20.232414);
		SetPlayerFacingAngle(playerid, 241.107742);
		SendClientMessage(playerid, COR_RED, "[Ant Spawn Kill] - Você Chegou muito próximo do Spawn De Uma Base Inimiga, e foi teleportado para longe");
		GameTextForPlayer(playerid, "~r~Reposicionado~n~Afaste-se Do Spawn Inimigo", 5000, 0);
	} 
	if(IsPlayerInRangeOfPoint(playerid, 100.0, -1334.090698, -10.281188, 14.148437) && PlayerInfo[playerid][pTime] != Alemaes && Trabalhando[playerid] == false)
	{
		// SetPlayerPos(playerid, 1872.558837, -2133.501464, 15.481951);
		// SetPlayerFacingAngle(playerid, 180.059356);
		SendClientMessage(playerid, COR_RED, "[Ant Spawn Kill] - Você Chegou muito próximo do Spawn De Uma Base Inimiga, e foi teleportado para longe");
		GameTextForPlayer(playerid, "~r~Reposicionado~n~Afaste-se Do Spawn Inimigo", 5000, 0);
	}
	
	return 1;

}

callback: AtualizarVelocimetro(playerid, vehicleid)
{
	new Float:healthCar, sla[50];
	GetVehicleHealth(vehicleid, healthCar);
	format(sla, sizeof sla, "%0.0f", healthCar);
	PlayerTextDrawSetString(playerid, Velocimetro[playerid][3], sla);
	PlayerTextDrawHide(playerid, Velocimetro[playerid][3]);
	PlayerTextDrawShow(playerid, Velocimetro[playerid][3]);

	return 1;
}

callback: FinalizarGuerra()
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(Logado[i] == true)
		{
			TogglePlayerControllable(i, 1);
			PlayerInfo[i][pTime]++;
			if(PlayerInfo[i][pTime] >= 4)
			{
				PlayerInfo[i][pTime] = 1;
			}
		}
	}
	SendClientMessageToAll(COR_LARANJA, "Trocando De Lados... A Guerra acabou...");
	if(Vencendo[Alemao] > Vencendo[Chines] && Vencendo[Alemao] > Vencendo[Russo])
	{
		format(StringGlobal, sizeof StringGlobal, "E os vencedores desta guerra foram os Alemães, Com %d Abates!", Vencendo[Alemao]);
		SendClientMessageToAll(COR_LARANJA, StringGlobal);
	}
	if(Vencendo[Russo] > Vencendo[Chines] && Vencendo[Russo] > Vencendo[Alemao])
	{
		format(StringGlobal, sizeof StringGlobal, "E os vencedores desta guerra foram os Russos, Com %d Abates!", Vencendo[Russo]);
		SendClientMessageToAll(COR_LARANJA, StringGlobal);
	}
	if(Vencendo[Chines] > Vencendo[Alemao] && Vencendo[Chines] > Vencendo[Russo])
	{
		format(StringGlobal, sizeof StringGlobal, "E os vencedores desta guerra foram os Chineses, Com %d Abates!", Vencendo[Chines]);
		SendClientMessageToAll(COR_LARANJA, StringGlobal);
	}

	format(StringGlobal, sizeof StringGlobal, "~w~Placar Final:~n~~r~Alemanha: %d Abates~n~~b~Russia: %d Abates~n~~g~China: %d Abates.", Vencendo[Alemao], Vencendo[Russo], Vencendo[Chines]);
	GameTextForAll(StringGlobal, 10000, 3);

	SendRconCommand("gmx");

	return 1;

}

callback: CameraMorte(playerid)
{

	for(new i = 0; i < 9; i++)
	{
		TextDrawHideForPlayer(playerid, CameraDeMorte[i]);
	}

	TogglePlayerSpectating(playerid, 1);
	TogglePlayerSpectating(playerid, 0);
	SpawnPlayer(playerid);
}

callback: RandomMSG()
{
	new texto[144], pontos[144];
	format(pontos, sizeof pontos, "{00FF00}Pontuação da partida atual: Alemães: %d, Russos: %d, Chineses: %d", Vencendo[Alemao], Vencendo[Russo], Vencendo[Chines]);
	switch(random(14))
	{
		case 0: texto = "{00FF00}[Segunda Guerra Mundial] > Use /ajuda para ver as regras/comandos úteis do nosso servidor!";
		case 1: texto = "{00FF00}[Segunda Guerra Mundial] > Ajude Seus Aliados!";
		case 2: texto = "{00FF00}[Segunda Guerra Mundial] > Não quebre as regras ou poderá ser enviado para o campo de concentração!";
		case 3: texto = "{00FF00}[Segunda Guerra Mundial] > Adicione Nosso IP Aos Favoritos!";
		case 4: texto = "{00FF00}[Segunda Guerra Mundial] > Jogadores que forem pegos usando hacks irão ser banidos sem aviso prévio!";
		case 5: texto = "{00FF00}[Segunda Guerra Mundial] > Não Abuse de bugs, Reporte-os para nossa equipe!";
		case 6: texto = "{00FF00}[Segunda Guerra Mundial] > Não Saia durante um combate, seja forte e enfrente seu inimigo!";
		case 7: texto = "{00FF00}[Segunda Guerra Mundial] > Não Mate Seus Aliados.";
		case 8: texto = "{00FF00}[Segunda Guerra Mundial] > Use /loadout para alterar seu armamento!";
		case 9: texto = "{00FF00}[Segunda Guerra Mundial] > Evite Xingar Outros Jogadores para uma melhor gameplay.";
		case 10: texto = "{00FF00}[Segunda Guerra Mundial] > Suícidio e reposicionamentos descontam de seus pontos! Use Com Sabedoria";
		case 11: texto = "{00FF00}[Segunda Guerra Mundial] > Domine Postos de controle, proteja sua base, e mate inimigos para avançar na guerra.";
		case 12: texto = "{00FF00}[Segunda Guerra Mundial] > Não se prenda somente ao combate de infataria, use e abuse de seus veículos!";
		case 13: texto = "{00FF00}[Segunda Guerra Mundial] > Matar Players Utilizando veículos, concederá à você, o dobro de pontos.";
		case 14: texto = pontos;
	}
	SendClientMessageToAll(-1, texto);

	return 1;
}

callback: KickPlayer(playerid, const reason[])
{
	printEx(VERMELHO_TOP, reason);
	return Kick(playerid);
}

callback: LoadDeus(playerid, timerid)
{
	if(modoDeus[playerid] == true)
	{
		SetarVida(playerid, 99999.9);
	}
	else KillTimer(timerid);
	return 1;
}

//=======================[Comandos Criados // CMD's]========================//
CMD:setskin(playerid, const params[])
{
	new id, skinid;
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(Trabalhando[playerid] == true)
		{
			if(sscanf(params, "dd", id, skinid)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "USe /setskin ID SKINID");
			SetPlayerSkin(id, skinid);
			format(StringGlobal, sizeof StringGlobal, "Admin %s Alterou a skin do jogador %s para %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), skinid);
			printEx(COR_VERDE, StringGlobal);
			SendClientMessage(id, COR_VERDE, StringGlobal);
		}
		else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce precisa estar em modo trabalho para executar este comando");
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce nao tem cargo o suficiente para executar este comando");
	return 1;
}

CMD:irpos(playerid, const params[])
{
	new Float:X, Float:Y, Float:Z;
	if(PlayerInfo[playerid][pAdmin] <= 0) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce Nao tem permissao para utilizar este comando.");
	if(Trabalhando[playerid] == false) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce precisa estar em modo trabalho para utilizar este comando.");
	if(sscanf(params, "fff", X, Y, Z)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /irpos X Y Z");
	SetPlayerPos(playerid, X, Y, Z);
	SendClientMessage(playerid, COR_CINZA, "Teleportado");
	return 1;
}

CMD:mostrarstats(playerid, const params[])
{
	new sexo[20], Float:KD, StringLocal[1024], id;
	if(sscanf(params, "d", id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /mostrarstats ID");
	
	if(PlayerInfo[id][pAbates] == 0 || PlayerInfo[id][pMortes] == 0)
	{
		KD = 0.0;
	}

	else
	{
		KD = PlayerInfo[id][pAbates] / PlayerInfo[id][pMortes];	
	}

	if(KD > 100.0)
	{
		KD = 100.0;
	}

	sexo = "{00FF00}Masculino";
	if(PlayerInfo[id][pSex] == 1)
	{
		sexo = "{FF0000}Feminino";
	}

	format(StringLocal, sizeof StringLocal, "{FFFFFF}Nick: %s Abates [{00FF00}%d{FFFFFF}] Vezes em que morreu [{FF0000}%d{FFFFFF}] Abates feitos com veículos [{00FF00}%d{FFFFFF}]\nVezes em que morreu para um veículo [{FF0000}%d{FFFFFF}] Pontuação atual [{00FF00}%d{FFFFFF}] Nivel Admin [{00FF00}%d{FFFFFF}]\nXP Total: [{00FF00}%d{FFFFFF}] Tipo De Vip [{00FF00}%s{FFFFFF}] Sexo [%s{FFFFFF}] K/D Atual: [{FF0000}%0.2f{FFFFFF}]", GetPlayerNameEx(id), PlayerInfo[id][pAbates], PlayerInfo[id][pMortes], PlayerInfo[id][pAbatesEmVeiculos], PlayerInfo[id][pMortoPorVeiculo], PlayerInfo[id][pScore], PlayerInfo[id][pAdmin], PlayerInfo[id][pXP], "Nenhum", sexo, KD);
	ShowPlayerDialog(playerid, DIALOG_NO_REPLY, DIALOG_STYLE_MSGBOX, "Informações do Soldado", StringLocal, "Ok", "Fechar");
		
	return 1;
}


CMD:verstats(playerid, const params[])
{
	new sexo[20], Float:KD, StringLocal[1024], id;
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		if(Trabalhando[playerid] == true)
		{
			if(sscanf(params, "d", id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /verstats ID");
			
			if(PlayerInfo[id][pAbates] == 0 || PlayerInfo[id][pMortes] == 0)
			{
				KD = 0.0;
			}

			else
			{
				KD = PlayerInfo[id][pAbates] / PlayerInfo[id][pMortes];	
			}

			if(KD > 100.0)
			{
				KD = 100.0;
			}

			sexo = "{00FF00}Masculino";
			if(PlayerInfo[id][pSex] == 1)
			{
				sexo = "{FF0000}Feminino";
			}

			format(StringLocal, sizeof StringLocal, "{FFFFFF}Nick: %s Abates [{00FF00}%d{FFFFFF}] Vezes em que morreu [{FF0000}%d{FFFFFF}] Abates feitos com veículos [{00FF00}%d{FFFFFF}]\nVezes em que morreu para um veículo [{FF0000}%d{FFFFFF}] Pontuação atual [{00FF00}%d{FFFFFF}] Nivel Admin [{00FF00}%d{FFFFFF}]\nXP Total: [{00FF00}%d{FFFFFF}] Tipo De Vip [{00FF00}%s{FFFFFF}] Sexo [%s{FFFFFF}] K/D Atual: [{FF0000}%0.2f{FFFFFF}]", GetPlayerNameEx(id), PlayerInfo[id][pAbates], PlayerInfo[id][pMortes], PlayerInfo[id][pAbatesEmVeiculos], PlayerInfo[id][pMortoPorVeiculo], PlayerInfo[id][pScore], PlayerInfo[id][pAdmin], PlayerInfo[id][pXP], "Nenhum", sexo, KD);
			ShowPlayerDialog(playerid, DIALOG_NO_REPLY, DIALOG_STYLE_MSGBOX, "Informações do Soldado", StringLocal, "Ok", "Fechar");
		}
	}
	return 1;
}

CMD:resetar(playerid, const params[])
{
	new id;
	if(Logado[playerid] == false) return Kick(playerid);
	if(PlayerInfo[playerid][pAdmin] >= 5000)
	{
		if(Trabalhando[playerid] == true)
		{
			if(sscanf(params, "d", id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /resetar ID (OBS: ESTE COMANDO IRA RESETAR TUDO DO JOGADOR)");
			if(!IsPlayerConnected(id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Jogador não conectado");
			if(Logado[id] == false) return SendClientMessage(playerid, COR_RED, "O jogador ainda não está logado no servidor.");

			PlayerInfo[id][pAdmin] = 0;
			PlayerInfo[id][pAbates] = 0;
			PlayerInfo[id][pMortes] = 0;
			PlayerInfo[id][pAbatesEmVeiculos] = 0;
			PlayerInfo[id][pMortoPorVeiculo] = 0;
			PlayerInfo[id][pScore] = 0;
			PlayerInfo[id][pSex] = 0;
			PlayerInfo[id][pTime] = 0;
			PlayerInfo[id][pXP] = 0;
			ArmasPlayer[id][ArmaPrincipal] = 0;
			ArmasPlayer[id][ArmaSecundaria] = 22;
			ArmasPlayer[id][ArmaEspecial] = 0;
			ArmasPlayer[id][Arressavel] = 0;
			ArmasPlayer[id][Corpo] = 0;
			modoDeus[id] = false;
			Trabalhando[id] = false;
			SavePlayer(id);
			SaveGuns(id);
			format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Resetou a conta do jogador %s [ID: %d]", GetPlayerNameEx(playerid), GetPlayerNameEx(id), id);
			printEx(COR_VERDE_AMARELADA, StringGlobal);
			SendClientMessage(id, COR_VERDE, "Sua Conta Foi Resetada.");
			SendClientMessage(id, COR_AMARELO, "Sua Conta Foi Resetada.");
			SendClientMessage(id, COR_RED, "Sua Conta Foi Resetada.");
			SpawnPlayer(id);
		}
		else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você precisa estar em modo jogo para utilizar este comando");
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você não tem permissão para utilizar este comando.");
	return 1;
}

CMD:editarplayer(playerid, const params[])
{		
	new id, oque, quantia;
	if(PlayerInfo[playerid][pAdmin] >= 3001)
	{
		if(Trabalhando[playerid] == true)
		{
			if(sscanf(params, "ddd", id, oque, quantia)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /editarplayer ID (Oque editar(numerico)) QUANTIA"), SendClientMessage(playerid, COR_VERDE_AMARELADA, "1 = Pontuação, 2 = TIME, 3 = abates, 4 = abates em veiculos, 5 = vezes em que morreu, 6 = vezes em que morreu para um veículo, 7 = XP");
			if(!IsPlayerConnected(id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Jogador não conectado");
			if(Logado[id] == false) return SendClientMessage(playerid, COR_RED, "O jogador ainda não está logado no servidor.");

			if(oque == 1)
			{
				PlayerInfo[id][pScore] = quantia;
				SetPlayerScore(id, quantia);
				format(StringGlobal, sizeof StringGlobal, "Você Alterou a pontuação de %s para %d Pontos!", GetPlayerNameEx(id), quantia);
				SendClientMessage(playerid, COR_AMARELO, StringGlobal);
				format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Alterou a pontuação do jogador %s para %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), quantia);
				printEx(COR_VERDE, StringGlobal);
			}

			else if(oque == 2)
			{
				if(quantia >= 4) return SendClientMessage(playerid, -1, "Time não existente, use 0 - 3");
				PlayerInfo[id][pTime] = quantia;
				format(StringGlobal, sizeof StringGlobal, "Você Alterou o Time de %s para %s!", GetPlayerNameEx(id), TimePlayer(id));
				SendClientMessage(playerid, COR_AMARELO, StringGlobal);
				format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Alterou o time do jogador %s para %s", GetPlayerNameEx(playerid), GetPlayerNameEx(id), TimePlayer(id));
				printEx(COR_VERDE, StringGlobal);
			}
			
			else if(oque == 3)
			{
				PlayerInfo[id][pAbates] = quantia;
				format(StringGlobal, sizeof StringGlobal, "Você Alterou os abates de %s para %d!", GetPlayerNameEx(id), quantia);
				SendClientMessage(playerid, COR_AMARELO, StringGlobal);
				format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Alterou os abates do jogador %s para %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), quantia);
				printEx(COR_VERDE, StringGlobal);
			}

			else if(oque == 4)
			{
				PlayerInfo[id][pAbatesEmVeiculos] = quantia;
				format(StringGlobal, sizeof StringGlobal, "Você Alterou os abates Em Veículos de %s para %d!", GetPlayerNameEx(id), quantia);
				SendClientMessage(playerid, COR_AMARELO, StringGlobal);
				format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Alterou os abates em veículos do jogador %s para %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), quantia);
				printEx(COR_VERDE, StringGlobal);
			}

			else if(oque == 5)
			{
				PlayerInfo[id][pMortes] = quantia;
				format(StringGlobal, sizeof StringGlobal, "Você Alterou as Vezes em que morreu de %s para %d!", GetPlayerNameEx(id), quantia);
				SendClientMessage(playerid, COR_AMARELO, StringGlobal);
				format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Alterou as mortes do jogador %s para %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), quantia);
				printEx(COR_VERDE, StringGlobal);
			}

			else if(oque == 6)
			{
				PlayerInfo[id][pMortoPorVeiculo] = quantia;
				format(StringGlobal, sizeof StringGlobal, "Você Alterou as Vezes em que morreu por veículos de %s para %d!", GetPlayerNameEx(id), quantia);
				SendClientMessage(playerid, COR_AMARELO, StringGlobal);
				format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Alterou as mortes em veículos do jogador %s para %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), quantia);
				printEx(COR_VERDE, StringGlobal);
			}

			else if(oque == 7)
			{
				PlayerInfo[id][pXP] = quantia;
				format(StringGlobal, sizeof StringGlobal, "Você Alterou o XP total de %s para %d!", GetPlayerNameEx(id), quantia);
				SendClientMessage(playerid, COR_AMARELO, StringGlobal);
				format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Admin %s Alterou o XP total do jogador %s para %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), quantia);
				printEx(COR_VERDE, StringGlobal);
			}

		}
		else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce precisa estar em modo trabalho pra executar este comando.");
	}
	return 1;
}

CMD:admins(playerid)
{
	SendClientMessage(playerid, ROXO_BEM_CLARO, "Admins Online:");
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(PlayerInfo[i][pAdmin] >= 1)
		{
			if(!isnull(AFK[i]))
			{
				format(StringGlobal, sizeof StringGlobal, "{DD80CC}Admin: {FFFFFF}%s {DD80CC}[{FFFFFF}%d{DD80CC}] {0095B6}(Ausente %s)", GetPlayerNameEx(i), PlayerInfo[i][pAdmin], AFK[i]);
			}
			else if(Trabalhando[i] == false)
			{
				format(StringGlobal, sizeof StringGlobal, "{DD80CC}Admin: {FFFFFF}%s {DD80CC}[{FFFFFF}%d{DD80CC}] {0095B6}Jogando", GetPlayerNameEx(i), PlayerInfo[i][pAdmin]);
			}
			else
			{
				format(StringGlobal, sizeof StringGlobal, "{DD80CC}Admin: {FFFFFF}%s {DD80CC}[{FFFFFF}%d{DD80CC}]", GetPlayerNameEx(i), PlayerInfo[i][pAdmin]);
			}
			SendClientMessage(playerid, ROXO_BEM_CLARO, StringGlobal);
		}
	}

	return 1;
}

CMD:afk(playerid, const params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(!isnull(AFK[playerid]))
		{
			AFK[playerid] = "";
			format(StringGlobal, sizeof StringGlobal, "Admin %s não está mais ausente", GetPlayerNameEx(playerid));
			SendClientMessageToAll(COR_AZUL, StringGlobal);
			return 1;
		}
		if(sscanf(params, "s[60]", AFK[playerid]))
		{
			AFK[playerid] = "Desconhecido";
			format(StringGlobal, sizeof StringGlobal, "Admin %s Está Ausente, Motivo: {FFFFFF}%s", GetPlayerNameEx(playerid), AFK[playerid]);
		}
		format(StringGlobal, sizeof StringGlobal, "Admin %s Está Ausente, Motivo: {FFFFFF}%s", GetPlayerNameEx(playerid), AFK[playerid]);
		SendClientMessageToAll(COR_AZUL, StringGlobal);
	}
	return 1;
}

CMD:stats(playerid)
{
	new sexo[20], Float:KD, StringLocal[1024];

	if(PlayerInfo[playerid][pAbates] == 0 || PlayerInfo[playerid][pMortes] == 0)
	{
		KD = 0.0;
	}

	else
	{
		KD = PlayerInfo[playerid][pAbates] / PlayerInfo[playerid][pMortes];	
	}

	if(KD > 100.0)
	{
		KD = 100.0;
	}

	sexo = "{00FF00}Masculino";
	if(PlayerInfo[playerid][pSex] == 1)
	{
		sexo = "{FF0000}Feminino";
	}
	format(StringLocal, sizeof StringLocal, "{FFFFFF}Nick: %s Abates [{00FF00}%d{FFFFFF}] Vezes em que morreu [{FF0000}%d{FFFFFF}] Abates feitos com veículos [{00FF00}%d{FFFFFF}]\nVezes em que morreu para um veículo [{FF0000}%d{FFFFFF}] Pontuação atual [{00FF00}%d{FFFFFF}] Nivel Admin [{00FF00}%d{FFFFFF}]\nXP Total: [{00FF00}%d{FFFFFF}] Tipo De Vip [{00FF00}%s{FFFFFF}] Sexo [%s{FFFFFF}] K/D Atual: [{FF0000}%0.2f{FFFFFF}]", GetPlayerNameEx(playerid), PlayerInfo[playerid][pAbates], PlayerInfo[playerid][pMortes], PlayerInfo[playerid][pAbatesEmVeiculos], PlayerInfo[playerid][pMortoPorVeiculo], PlayerInfo[playerid][pScore], PlayerInfo[playerid][pAdmin], PlayerInfo[playerid][pXP], "Nenhum", sexo, KD);
	ShowPlayerDialog(playerid, DIALOG_NO_REPLY, DIALOG_STYLE_MSGBOX, "Informações do Soldado", StringLocal, "Ok", "Fechar");

	return 1;
}

CMD:trocarchat(playerid)
{
	if(Chat[playerid] == 0) // 0 = chat equipe
	{
		Chat[playerid] = 1; // chat local
		SendClientMessage(playerid, COR_CINZA_SAMP, "Você Agora Está falando no chat LOCAL");
	}
	else 
	{
		Chat[playerid] = 0; // voltando pro chat equipe
		SendClientMessage(playerid, COR_CINZA_SAMP, "Você Agora Está falando no chat da sua EQUIPE");
	}
	return 1;
}

CMD:c(playerid, const params[])
{
	new string[144];
	if(sscanf(params, "s[144]", string)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /c(hat global)");

	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(Trabalhando[playerid] == true)
		{
			format(string, sizeof string, "[Admin] %s Diz: %s", GetPlayerNameEx(playerid), string);
			SendClientMessageToAll(COR_ROSA_CLARO, string);
			return 1;
		}
	}

	if(PlayerInfo[playerid][pTime] == 0)
	{
		format(string, sizeof string, "[Civil] %s Diz: %s", GetPlayerNameEx(playerid), string);
		SendClientMessageToAll(GetPlayerColor(playerid), string);
		return 1;
	}

	if(PlayerInfo[playerid][pTime] == 1)
	{
		format(string, sizeof string, "[Alemão] %s Diz: %s", GetPlayerNameEx(playerid), string);
		SendClientMessageToAll(GetPlayerColor(playerid), string);
		return 1;
	}

	if(PlayerInfo[playerid][pTime] == 2)
	{
		format(string, sizeof string, "[Russo] %s Diz: %s", GetPlayerNameEx(playerid), string);
		SendClientMessageToAll(GetPlayerColor(playerid), string);
		return 1;
	}

	if(PlayerInfo[playerid][pTime] == 3)
	{
		format(string, sizeof string, "[Chinês] %s Diz: %s", GetPlayerNameEx(playerid), string);
		SendClientMessageToAll(GetPlayerColor(playerid), string);
		return 1;
	}

	return 1;
}

CMD:textotela(playerid, const params[])
{
	new string[100];
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(sscanf(params, "s[100]", string)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /textotela Texto");
		format(string, sizeof string, "~p~~h~Admin ~p~%s: ~w~%s", GetPlayerNameEx(playerid), string);
		GameTextForAll(string, 5000, 3);
	}
	return 1;
}

CMD:aviso(playerid, const params[])
{
	new string[144];
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(sscanf(params, "s[144]", string)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /aviso Texto");
		SendClientMessageToAll(ROXO_BEM_CLARO, "============================//Aviso Administrativo\\\\=================================");
		format(string, sizeof string, "Admin %s : %s [Admin Nível %d]", GetPlayerNameEx(playerid), string, PlayerInfo[playerid][pAdmin]);
		SendClientMessageToAll(ROXO_BEM_CLARO, string);
		SendClientMessageToAll(ROXO_BEM_CLARO, "___________________________________________________________________________");
	}
	else return 1;
	return 1;
}

CMD:ip(playerid, const params[])
{
	new id, ip[24];
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(sscanf(params, "d", id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /ip ID");
		if(!IsPlayerConnected(id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Jogador não conectado.");
		GetPlayerIp(id, ip, sizeof(ip));
		format(StringGlobal, sizeof StringGlobal, "O IP Atual do jogador %s [ID: %d] é %s", GetPlayerNameEx(id), id, ip);
		printEx(COR_VERDE, StringGlobal);
	}
	return 1;
}
CMD:anunciar(playerid, const params[])
{
	new string[144];
	if(sscanf(params, "s[144]", string)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /anunciar Texto");
	SendClientMessageToAll(GetPlayerColor(playerid), "===============================Anúncio=====================================");
	format(string, sizeof string, "%s [ID: %d]: %s [%d Abates / %d Mortes]", GetPlayerNameEx(playerid), playerid, string, PlayerInfo[playerid][pAbates], PlayerInfo[playerid][pMortes]);
	SendClientMessageToAll(GetPlayerColor(playerid), string);
	SendClientMessageToAll(GetPlayerColor(playerid), "___________________________________________________________________________");

	return 1;
}

CMD:par(playerid, const params[])
{
	new string[144], id;
	if(sscanf(params, "ds[144]", id, string)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "use /par ID MENSAGEM");
	format(StringGlobal, sizeof StringGlobal, "Mensagem Particular De %s: %s", GetPlayerNameEx(playerid), string);
	if(!IsPlayerConnected(playerid)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Jogador nao conectado");
	SendClientMessage(id, COR_AMARELO, StringGlobal);
	SendClientMessage(playerid, COR_AMARELO, "Mensagem particular Enviada");
	return 1;
}

CMD:ajuda(playerid)
{
	new StringLocal[] = EOS;

	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		format(StringLocal, sizeof StringLocal, "******MENU DE AJUDA ADMINISTRATIVO******\n\
		1 - /godmode (Entrar/Sair do modo invencível, somente em modo Admin (/jogar) (RCON/Nível 1)\n\
		2 - /veh (Criar Veículos) Somente em modo Admin (/jogar) (RCON/Nivél 3)\n\
		3 - /criaradmin (Criar Um novo administrador) (RCON/Nível 5000)\n\
		4 - /promoveradm (Alterar Nível Admin) (RCON/Nível1238)\n\
		5 - /gmx (Reiniciar servidor) Forçará um reinício do servidor (Nível 3001)\n\
		6 - /kick (Encerrar Conexão com o jogador) (RCON/Nível 1)\n\
		7 - /jogar (Entrar/Sair Do Modo Admin) Irá Permitir/restringir o uso de comandos administrativos (Nível 1)\n\
		8 - /ir (Ir Até Um Jogador) Somente em modo Admin (RCON/Nível 1)\n\
		9 - /trazer (Trazer Um Jogador Até Você) Somente em modo Admin (RCON/Nível 1)\n\
		10 - /a (Chat Admin) (Nível 1)\n\
		11 - /encerrarpartida (Encerrar Partida Atual e Reiniciar o Servidor) Somente em modo Admin (Nível 3001)\n\
		12 - /ip (Puxar IP de um jogador Conectado) (Nível 1)\n\
		13 - /aviso (Anuncio ADMIN) (Nível 1)\n\
		14 - /textotela (Anunciar no centro da tela do jogador) (Nível 1)\n\
		15 - /afk (Entrar/Sair Do Modo Ausente) (Nível 1)\n\
		16 - /editarplayer (Editar Informações da conta de jogadores) Somente em modo Admin (Nível 3001)\n\
		17 - /resetar (Resetar COMPLETAMENTE) A Conta de um jogador Somente em modo Admin (Nível 5000)\n\
		18 - /verstats (Ver Estatísticas do jogador) Somente em modo Admin (Nível 2)\n\
		19 - /irpos (Ir até uma Posição no mapa) Somente em modo Admin (Nível 1)\n\
		******MENU DE AJUDA AO JOGADOR******\n\
		1 - /savepos > Pegar Coordenadas\n\
		2 - /sexo > Trocar De Sexo\n\
		3 - /loadout > Menu De Armas\n\
		4 - /movertime > Alterar Entre Times\n\
		5 - /trocarsenha > Alterar Senha da sua conta\n\
		6 - /par > Enviar Mensagem particular para outros jogadores\n\
		7 - /anunciar > Anúncio no chat global\n\
		8 - /c > Chat Global\n\
		9 - /trocarchat > Alterar Entre Chat LOCAL e Chat Da EQUIPE\n\
		10 - /stats > Ver Estatísticas do Soldado\n\
		11 - /admins > Ver Jogadores Online No Momento\n\
		12 - /mostrarstats > Mostrar Estatísticas do Soldado Para Outros Jogadores\n\
		******COMO JOGAR******\n\
		No Servidor ''Segunda Guerra Mundial'' Nos Baseamos Na epoca da segunda guerra, tendo 3 frentes de batalha (Alemanha - SF, Russia - LS e China - LV). Cada um dos lados tem sua própria base, na qual os inimigos não podem se aproximar demais do Spawn.\n\
		As Regras São Simples: Sem TK Intencional, Sem Racismo, Xenofobia e qualquer outro tipo de preconceito, sem uso de programas ou funções que deem vantagens, e respeito à staff.\n\
		******Pontuações e XP******\n\
		As pontuações (Score/Nível no TAB) São Adquiridas das seguintes formas:\n\
		1 - Abatendo Inimigos (1 Ponto Por cada Inimigo Abatido)\n\
		2 - Abatendo Inimigos utilizando Veículos (2 pontos por inimigo abatido)\n\
		3 - Dominando Postos De Controle (1 ponto por cada posto de controle dominado)\n\
		4 - Uso de XP - Ao Atingir Nível Máximo (5000) De XP, Será Convertido para 1 Ponto\n\
		******Como Adquirir XP******\n\
		o XP é Adquirido Das Seguintes Formas:\n\
		1 - ");
		
	}


	ShowPlayerDialog(playerid, DIALOG_NO_REPLY, DIALOG_STYLE_MSGBOX, "Ajuda", StringLocal, "Compreensível", "X");
	return 1;
}

CMD:encerrarpartida(playerid)
{
	if(Logado[playerid] == true)
	{
		if(Trabalhando[playerid] == true)
		{
			if(PlayerInfo[playerid][pAdmin] >= 3001)
			{
				FinalizarGuerra();
				format(StringGlobal, sizeof StringGlobal, "Admin %s Encerrou a partida atual", GetPlayerNameEx(playerid));
				SendClientMessageToAll(COR_LARANJA, StringGlobal);
				printEx(COR_RED, StringGlobal);
			}
			else return SendClientMessage(playerid, COR_AMARELO, "Voce nao tem cargo o suficiente para executar este comando");
		}
		else return SendClientMessage(playerid, COR_AMARELO, "Voce Precisa estar em modo jogo para executar este comando");
	}
	return 1;
}

CMD:a(playerid, const params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		new string[144];
		if(sscanf(params, "s[144]", string)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /a (texto)");
		format(string, sizeof string, "* [%d] Admin: %s Diz: %s", PlayerInfo[playerid][pAdmin], GetPlayerNameEx(playerid), string);
		printEx(ROXO_BEM_CLARO, string);
	}
	return 1;
}

CMD:trocarsenha(playerid, const params[])
{
	if(Logado[playerid] == false) return 1;
	new senha[15], StringDOF2[128];
	if(sscanf(params, "s[15]", senha)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /trocarsenha SENHA (ate 15 caracteres)");
	format(StringDOF2, sizeof StringDOF2, "Contas/%s.ini", GetPlayerNameEx(playerid));
	DOF2_SetString(StringDOF2, "Senha", senha);
	DOF2_SaveFile();
	format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Jogador %s [ID: %d] trocou a senha de sua conta", GetPlayerNameEx(playerid), playerid);
	printEx(COR_VERDE, StringGlobal);
	format(StringGlobal, sizeof StringGlobal, "Você Alterou sua senha para [%s], tire um F8 para não perde-la!!", senha);
	SendClientMessage(playerid, COR_RED, StringGlobal);
	SendClientMessage(playerid, COR_VERDE, StringGlobal);
	SendClientMessage(playerid, COR_LARANJA, StringGlobal);
	SendClientMessage(playerid, COR_AZUL, StringGlobal);
	return 1;
}

CMD:movertime(playerid)
{
	if(Logado[playerid] == false) return 1;
	PlayerInfo[playerid][pTime]++;
	if(PlayerInfo[playerid][pTime] >= 4)
	{
		PlayerInfo[playerid][pTime] = 0;
	}
	GameTextForPlayer(playerid,"~w~Voce trocou de time",3000,3);
	SpawnPlayer(playerid);
	return 1;
}

CMD:reposicionar(playerid)
{
	format(StringGlobal, sizeof StringGlobal, "[Servidor] >> %s Está reposicionando...", GetPlayerNameEx(playerid));
	SendClientMessageToAll(COR_VERDE, StringGlobal);
	SpawnPlayer(playerid);
	PlayerInfo[playerid][pScore]--;
	PlayerInfo[playerid][pScore]--;
	SetPlayerScore(playerid, PlayerInfo[playerid][pScore]);
	GameTextForPlayer(playerid, "~r~reposicionando...", 5000, 0);
	if(PlayerInfo[playerid][pScore] < 0)
	{
		PlayerInfo[playerid][pScore] = 0;
	}
	return 1;
}
CMD:loadout(playerid)
{
	if(Logado[playerid] == false) return 1;
	format(StringGlobal, sizeof StringGlobal, "Armas\nPistolas\nEscopetas\nFuzis\nSubMetralhadoras\nSnipers\nEspeciais\nArremessavéis\nCorpo a Corpo");
	ShowPlayerDialog(playerid, 3, DIALOG_STYLE_TABLIST_HEADERS, "Equipamentos / Classes de armas", StringGlobal, "Selecionar", "Sair");
	return 1;
}

CMD:trazer(playerid, const params[])
{
	new id, Float:X, Float:Y, Float:Z;
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(Trabalhando[playerid] == true)
		{
			if(sscanf(params, "d", id)) return SendClientMessage(playerid, COR_ROSA_CLARO, "UTILIZE /TRAZER ID");
			if(!IsPlayerConnected(id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Jogador não conectado");
			format(StringGlobal, sizeof StringGlobal, "Você trouxe o jogador %s", GetPlayerNameEx(id));
			SendClientMessage(playerid, ROXO_BEM_CLARO, StringGlobal);
			format(StringGlobal, sizeof StringGlobal, "Admin %s levou você até ele", GetPlayerNameEx(playerid));
			SendClientMessage(id, ROXO_BEM_CLARO, StringGlobal);
			GetPlayerPos(playerid, X, Y, Z);
			if(IsPlayerInAnyVehicle(id))
			{
				LinkVehicleToInterior(GetPlayerVehicleID(id), GetPlayerInterior(playerid));
				SetVehicleVirtualWorld(GetPlayerVehicleID(id), GetPlayerVirtualWorld(playerid));
				SetVehiclePos(GetPlayerVehicleID(id), X, Y, Z);
			}
			SetPlayerInterior(id, GetPlayerInterior(playerid));
			SetPlayerInterior(id, GetPlayerInterior(playerid));
			SetPlayerPos(id, X, Y, Z);
		}
		else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce precisa estar em modo trabalho para utilizar este comando");
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce Não tem permissão para utilizar este comando.");
	return 1;
}

CMD:ir(playerid, const params[])
{
	new id, Float:X, Float:Y, Float:Z;
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(Trabalhando[playerid] == true)
		{
			if(sscanf(params, "d", id)) return SendClientMessage(playerid, COR_ROSA_CLARO, "UTILIZE /ir ID");
			if(!IsPlayerConnected(id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Jogador não conectado");
			format(StringGlobal, sizeof StringGlobal, "Você foi até o jogador %s", GetPlayerNameEx(id));
			SendClientMessage(playerid, ROXO_BEM_CLARO, StringGlobal);
			format(StringGlobal, sizeof StringGlobal, "Admin %s foi até você", GetPlayerNameEx(playerid));
			SendClientMessage(id, ROXO_BEM_CLARO, StringGlobal);
			GetPlayerPos(id, X, Y, Z);
			SetPlayerInterior(playerid, GetPlayerInterior(id));
			SetPlayerInterior(playerid, GetPlayerInterior(id));
			SetPlayerPos(playerid, X, Y, Z);
		}
		else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce precisa estar em modo trabalho para utilizar este comando");
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Voce Não tem permissão para utilizar este comando.");
	return 1;
}

CMD:jogar(playerid)
{
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(Trabalhando[playerid] == false)
		{
			Trabalhando[playerid] = true;
			modoDeus[playerid] = true;
			SetTimerEx("LoadDeus", 1000, true, "i", playerid);
			SetPlayerSkin(playerid, 217);
			ResetPlayerWeapons(playerid);
			format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Administrador %s entrou em modo trabalho.", GetPlayerNameEx(playerid));
			printEx(COR_ROSA_CLARO, StringGlobal);
		}
		else
		{
			Trabalhando[playerid] = false;
			modoDeus[playerid] = false;
			SetarVida(playerid, 100.0);
			SpawnPlayer(playerid);
			format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Administrador %s entrou em modo jogo.", GetPlayerNameEx(playerid));
			printEx(COR_ROSA_CLARO, StringGlobal);
		}
	}
	return 1;
}

CMD:kick(playerid, const params[])
{
	new id, str[60];
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(sscanf(params, "ds[60]", id, str)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Use /kick ID Motivo");
		format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: %s Foi Kickado Do Servidor Por %s, Motivo: %s", GetPlayerNameEx(id), GetPlayerNameEx(playerid), str);
		printEx(COR_RED, StringGlobal);
		SendClientMessage(id, COR_RED, StringGlobal);
		SetTimerEx("KickPlayer", 100, false, "i", id);
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem permissão para utilizar este comando");
	return 1;
}

CMD:gmx(playerid)
{
	if(PlayerInfo[playerid][pAdmin] >= 3001)
	{
		SendClientMessageToAll(AZUL_ESCURO, "Isso é uma GMX, Não precisa sair do servidor...");
		SendClientMessageToAll(AZUL_ESCURO, "Voltamos Em instantes...");
		SendRconCommand("gmx");
	}
	return 1;
}

CMD:promoveradm(playerid, const params[])
{
	new id, level;
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1238)
	{
		if(sscanf(params, "dd", id, level)) return SendClientMessage(playerid, COR_VERDE, "Use /promoveradm ID NIVEL");
		if(!IsPlayerConnected(id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Player Não Conectado");
		if(PlayerInfo[id][pAdmin] < 1) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Este jogador ainda não é um administrador, utilize /criaradmin");
		PlayerInfo[id][pAdmin] = level;
		format(StringGlobal, sizeof StringGlobal, "[AdmCmd] Admin %s Promoveu o Admin %s para o nível %d", GetPlayerNameEx(playerid), GetPlayerNameEx(id), level);
		printEx(COR_VERDE, StringGlobal);
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você não tem permissão para utilizar este comando");
	return 1;
}

CMD:criaradmin(playerid, const params[])
{
	new id, level;
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 5000)
	{
		if(sscanf(params, "dd", id, level)) return SendClientMessage(playerid, COR_VERDE, "Use /criaradmin ID NIVEL");
		if(!IsPlayerConnected(id)) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Player Não Conectado");
		if(PlayerInfo[id][pAdmin] >= 1) return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Este jogador já é um administrador (Utilize /promoveradm ID NIVEL)");
		PlayerInfo[id][pAdmin] = level;
		format(StringGlobal, sizeof StringGlobal, "[AdmCmd] Admin %s deu admin nível %d para o player %s", GetPlayerNameEx(playerid), level, GetPlayerNameEx(id));
		printEx(COR_VERDE, StringGlobal);
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você não tem permissão para utilizar este comando");
	return 1;
}

CMD:sexo(playerid)
{
	if(PlayerInfo[playerid][pSex] == 0)
	{
		PlayerInfo[playerid][pSex] = 1;
		SendClientMessage(playerid, COR_AZUL, "Você Trocou Seu Sexo Para Feminino!");
	}
	else
	{
		PlayerInfo[playerid][pSex] = 0;
		SendClientMessage(playerid, COR_AZUL, "Você Trocou Seu Sexo Para Masculino!");
	}
	return 1;
}

CMD:savepos(playerid)
{
	new String[256], Float:PosX, Float:PosY, Float:PosZ, Float:Angle;
	GetPlayerPos(playerid, PosX, PosY, PosZ);
	GetPlayerFacingAngle(playerid, Angle);
	format(String, sizeof String, "X = %f, Y = %f, Z = %f, R = %f", PosX, PosY, PosZ, Angle);
	SendClientMessage(playerid, -1, String);
	if(IsPlayerInAnyVehicle(playerid))
	{
		SendClientMessage(playerid, -1, "In vehicle Position Is:");
		GetVehiclePos(GetPlayerVehicleID(playerid), PosX, PosY, PosZ);
		GetVehicleZAngle(GetPlayerVehicleID(playerid), Angle);
		format(String, sizeof String, "X = %f, Y = %f, Z = %f, R = %f", PosX, PosY, PosZ, Angle);
		SendClientMessage(playerid, -1, String);
	}
	GameTextForPlayer(playerid, "~w~Posicao Salva", 500, 1);
	return 1;
}

CMD:veh(playerid, const params[])
{
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 3) 
	{
		if(Trabalhando[playerid] == true)
		{
			new carid, cor1, cor2;
			new Float:pPosX, Float:pPosY, Float:pPosZ, Float:pAng;

			if(sscanf(params, "ddd", carid, cor1, cor2)) return SendClientMessage(playerid, -1, "Utilize /veh CARID, COR1, COR2");

			GetPlayerPos(playerid, pPosX, pPosY, pPosZ);
			GetPlayerFacingAngle(playerid, pAng);
			carid = CreateVehicle(carid, pPosX, pPosY, pPosZ, pAng, cor1, cor2, -1, 0);
			PutPlayerInVehicle(playerid, carid, 0);
			SendClientMessage(playerid, -1, "Veiculo Criado Com Sucesso!");

			SetVehicleNumberPlate(carid, "{00FF00}EL_ADMIN");
		}
		else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Precisa estar em modo admin pra utilizar este comando (/jogar)");
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem permissão para utilizar este comando");
	return 1;
}

CMD:godmode(playerid)
{
	if(IsPlayerAdmin(playerid) || PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(Trabalhando[playerid] == true)
		{
			if(modoDeus[playerid] == false)
			{
				modoDeus[playerid] = true;
				SetTimerEx("LoadDeus", 1000, true, "i", playerid);
				format(StringGlobal, sizeof StringGlobal, "Admin %s entrou em modo invencível", GetPlayerNameEx(playerid));
				SendClientMessageToAll(-1, StringGlobal);
			}
			else
			{
				modoDeus[playerid] = false;
				SetarVida(playerid, 100.0);
				format(StringGlobal, sizeof StringGlobal, "Admin %s saiu do modo invencível", GetPlayerNameEx(playerid));
				SendClientMessageToAll(-1, StringGlobal);
			}
		}
		else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você precisa estar em modo admin para utilizar este comando (/jogar)");
	}
	else return SendClientMessage(playerid, COR_VERDE_AMARELADA, "Você Não tem permissão para utilizar este comando");	
	return 1;
}

//======================================[Stocks/Function's]===============================//
function: AtualizarXP(playerid)
{
	if(PlayerInfo[playerid][pXP] >= 5000)
	{
		PlayerInfo[playerid][pXP] = PlayerInfo[playerid][pXP] - 5000;
		PlayerInfo[playerid][pScore]++;
		SetPlayerScore(playerid, PlayerInfo[playerid][pScore]);
	}
	return 1;
}

function: SetarColete(playerid, Float:colete)
{
	Colete[playerid] = colete;
	SetPlayerArmour(playerid, colete);
	return 1;
}

function: SetarVida(playerid, Float:vida)
{
	Vida[playerid] = vida;
	SetPlayerHealth(playerid, vida);
	return 1;
}

function: CheckHealthAndArmour(playerid)
{	
	new Float:vidaa, Float:coletee;
	GetPlayerHealth(playerid, vidaa);
	GetPlayerArmour(playerid, coletee);
	if(Logado[playerid] == false) return 1;
	if(vidaa > Vida[playerid] || coletee > Colete[playerid])
	{
		SetPlayerHealth(playerid, Vida[playerid]);
		SetPlayerArmour(playerid, Colete[playerid]);
		format(StringGlobal, sizeof StringGlobal, "[AdmCmd]: Player %s [ID: %d] esta regenerando sua vida de forma ilegal (HACK)", GetPlayerNameEx(playerid), playerid);
		printEx(COR_RED, StringGlobal);
	}
	return 1;
}

function: TimePlayer(playerid)
{
	new Time[60];

	if(PlayerInfo[playerid][pTime] == 0) 
	{
		Time = "Neutros/Civis";
	}
	if(PlayerInfo[playerid][pTime] == 1) 
	{
		Time = "Alemães";
	} 
	if(PlayerInfo[playerid][pTime] == 2) 
	{
		Time = "Russos";
	} 
	if(PlayerInfo[playerid][pTime] == 3) 
	{
		Time = "Chineses";
	} 

	return Time;
}

function: LoadGuns(playerid)
{
	GivePlayerWeapon(playerid, ArmasPlayer[playerid][ArmaPrincipal], 300);
	GivePlayerWeapon(playerid, ArmasPlayer[playerid][ArmaSecundaria], 150);
	GivePlayerWeapon(playerid, ArmasPlayer[playerid][ArmaEspecial], 1000);
	GivePlayerWeapon(playerid, ArmasPlayer[playerid][Arressavel], 16);
	GivePlayerWeapon(playerid, ArmasPlayer[playerid][Corpo], 1);
	SetarVida(playerid, 100.0);
	SetarColete(playerid, 100.0);

	if(Trabalhando[playerid] == true)
	{
		ResetPlayerWeapons(playerid);
	}

	return 1;
}

function: SaveGuns(playerid)
{
	if(Logado[playerid] == false) return 1;

	new StringDOF2[128];
	format(StringDOF2, sizeof StringDOF2, "Armas/%s.ini", GetPlayerNameEx(playerid));
	if(!DOF2_FileExists(StringDOF2))
	{
		DOF2_CreateFile(StringDOF2);
		DOF2_SetInt(StringDOF2, "ArmaPrincipal", ArmasPlayer[playerid][ArmaPrincipal]);
		DOF2_SetInt(StringDOF2, "ArmaSecundaria", ArmasPlayer[playerid][ArmaSecundaria]);
		DOF2_SetInt(StringDOF2, "ArmaEspecial", ArmasPlayer[playerid][ArmaEspecial]);
		DOF2_SetInt(StringDOF2, "Arressavel", ArmasPlayer[playerid][Arressavel]);
		DOF2_SetInt(StringDOF2, "Corpo", ArmasPlayer[playerid][Corpo]);
		DOF2_SaveFile();
	}
	else
	{
		DOF2_SetInt(StringDOF2, "ArmaPrincipal", ArmasPlayer[playerid][ArmaPrincipal]);
		DOF2_SetInt(StringDOF2, "ArmaSecundaria", ArmasPlayer[playerid][ArmaSecundaria]);
		DOF2_SetInt(StringDOF2, "ArmaEspecial", ArmasPlayer[playerid][ArmaEspecial]);
		DOF2_SetInt(StringDOF2, "Arressavel", ArmasPlayer[playerid][Arressavel]);
		DOF2_SetInt(StringDOF2, "Corpo", ArmasPlayer[playerid][Corpo]);
		DOF2_SaveFile();
	}
	return 1;
}

function: SavePlayer(playerid)
{
	if(Logado[playerid] == true)
	{

		new StringDOF2[100];
		format(StringDOF2, sizeof StringDOF2, "Contas/%s.ini", GetPlayerNameEx(playerid));
		DOF2_SetInt(StringDOF2, "Admin", PlayerInfo[playerid][pAdmin]);
		DOF2_SetInt(StringDOF2, "Time", PlayerInfo[playerid][pTime]);
		DOF2_SetInt(StringDOF2, "Abates", PlayerInfo[playerid][pAbates]);
		DOF2_SetInt(StringDOF2, "Mortes", PlayerInfo[playerid][pMortes]);
		DOF2_SetInt(StringDOF2, "AbatesEmVeiculo", PlayerInfo[playerid][pAbatesEmVeiculos]);
		DOF2_SetInt(StringDOF2, "MortoPorVeiculo", PlayerInfo[playerid][pMortoPorVeiculo]);
		DOF2_SetInt(StringDOF2, "Score", PlayerInfo[playerid][pScore]);
		DOF2_SetInt(StringDOF2, "Sexo", PlayerInfo[playerid][pSex]);
		DOF2_SetInt(StringDOF2, "XP", PlayerInfo[playerid][pXP]);
		DOF2_SaveFile();
	}
	else return 1;
	return 1;
}

function: OnPlayerLogin(playerid, ip[])
{
	new StringDOF2[128];
	format(StringDOF2, sizeof StringDOF2, "Contas/%s.ini", GetPlayerNameEx(playerid));
	if(!DOF2_FileExists(StringDOF2))
	{
		format(StringDOF2, sizeof StringDOF2, "IPs/%s.ini", ip);
		if(!DOF2_FileExists(StringDOF2))
		{
			format(StringGlobal, sizeof StringGlobal, "{FFFFFF}Conta %s {FF0000}Não Registrada.{FFFFFF}\nDigite Uma Senha Para Se Registrar");
			ShowPlayerDialog(playerid, 1, DIALOG_STYLE_PASSWORD, "Registro De Contas", StringGlobal, "Confirmar", "Cancelar");
		}
		else
		{
			SendClientMessage(playerid, VERMELHO_TOP, "Oops... Algo Deu Errado...");
			format(StringGlobal, sizeof StringGlobal, "Infelizmente, Seu Endereço de IP Já Está Registrado em nosso banco de dados, por favor, verifique seu nickname e tente novamente.");
			ShowPlayerDialog(playerid, DIALOG_NO_REPLY, DIALOG_STYLE_MSGBOX, "IP JÁ REGISTRADO", StringGlobal, "Ok", "Sair");
			format(StringGlobal, sizeof StringGlobal, "[Sistema]: %s Tentou Se Conectar no Servidor com IP Já Registrado (IP Registrado em outra conta)", GetPlayerNameEx(playerid));
			printEx(COR_RED, StringGlobal);
			SetTimerEx("KickPlayer", 100, false, "i", playerid);

		}
	}
	else if(DOF2_FileExists(StringDOF2))
	{
		format(StringDOF2, sizeof StringDOF2, "IPs/%s.ini", ip);
		if(DOF2_FileExists(StringDOF2))
		{
			if(strcmp(DOF2_GetString(StringDOF2, "Conta"), GetPlayerNameEx(playerid)) == true)
			{
				SendClientMessage(playerid, VERMELHO_TOP, "Oops... Algo Deu Errado...");
				format(StringGlobal, sizeof StringGlobal, "Infelizmente, Seu Endereço de IP Já Está Registrado em outra conta no nosso banco de dados, por favor, verifique seu nickname e tente novamente.");
				ShowPlayerDialog(playerid, DIALOG_NO_REPLY, DIALOG_STYLE_MSGBOX, "IP JÁ REGISTRADO", StringGlobal, "Ok", "Sair");
				format(StringGlobal, sizeof StringGlobal, "[Sistema]: IP %s Tentou Se Conectar no Servidor Utilizando a conta %s. Porém, a conta associada ao IP %s é %s (Possivel invasão de contas)", ip, GetPlayerNameEx(playerid), ip, DOF2_GetString(StringDOF2, "Conta"));
				printEx(COR_RED, StringGlobal);
				SetTimerEx("KickPlayer", 100, false, "i", playerid);
			}
			else
			{
				format(StringGlobal, sizeof StringGlobal, "{FFFFFF}Conta %s {00FF00}Registrada.{FFFFFF}\nDigite Uma Senha Para Logar", GetPlayerNameEx(playerid));
				ShowPlayerDialog(playerid, 2, DIALOG_STYLE_PASSWORD, "Faça Login", StringGlobal, "Confirmar", "Cancelar");
			}
		}
		else
		{
			format(StringDOF2, sizeof StringDOF2, "IPs/%s.ini", ip);
			if(!DOF2_FileExists(StringDOF2))
			{
				DOF2_CreateFile(StringDOF2);
				DOF2_SetString(StringDOF2, "Conta", GetPlayerNameEx(playerid));
				format(StringGlobal, sizeof StringGlobal, "Player %s Conectou-se com IP Diferente do anterior. Criando Informações...", GetPlayerNameEx(playerid));
				printEx(COR_VERDE, StringGlobal);
				OnPlayerLogin(playerid, ip);
			}
			else
			{
				format(StringGlobal, sizeof StringGlobal, "{FFFFFF}Conta %s {00FF00}Registrada.{FFFFFF}\nDigite Uma Senha Para Logar", GetPlayerNameEx(playerid));
				ShowPlayerDialog(playerid, 2, DIALOG_STYLE_PASSWORD, "Faça Login", StringGlobal, "Confirmar", "Cancelar");
			}
		}
	}
	
	return 1;
}

function: printEx(color, const string[])
{
	if(isnull(string)) return 1;
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerAdmin(i) || PlayerInfo[i][pAdmin] >= 1)
		{
			SendClientMessage(i, color, string);
		}
	}
	print(string);

	return 1;
}

function: GetPlayerNameEx(playerid)
{
	new Nome[MAX_PLAYER_NAME];
	if(playerid == INVALID_PLAYER_ID)
	{
		Nome = "Offline";
		return Nome;
	}
	GetPlayerName(playerid, Nome, sizeof(Nome));
	return Nome;
}

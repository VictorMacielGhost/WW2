/*


    
        					  EU ARRUMEI TUDO CARAIO JEFERSON GAMES  SCRIPTER FODA PAI TA ON 

                                       AJUDA NOIS DOIDO 


	  	  		 			  OS QUE CRIOU MAS TA COM ERROS KK 
							     Jim._.Carrey
				      		 Los (funções de Log)
     		  		   [STR]Matrix (Idéias de comandos)
   		  		      Panico_ONCrew (Idéias de comandos)
							    
				    	    Não retire os Créditos!! EU TIRO SIM EU SOU DOIDO CARAI DA LIKE TBM OU VO NA SUA CASA
						  
						            V1.5.1
						  Inicio do Script: 04/02/2012
						   Final do Script: 11/02/2012
						   
						            V1.6
							Atualizado em 07/05/2012
							
							        V1.7
							Atualizado em 11/06/2012

VERSÃO 1.7
	Adicionado funções na public OnPlayerClickPlayer:
	    Kick
	    Ban
		Advertir
		Particular
		Ir
		Trazer
		Status
	Sistema de admin secreto:
		Vá até a linha 156 e altere oque está entre aspas para uma senha secreta.
		In game use o comando /logaradm <senha> para ser admin secretamente,
		ninguem verá seu nome no /admins porem você terá todos os comandos do FS.
		Para ser admin normal use /admnormal
	Pequeno sistema de duvida:
	    Players usam /duvida <texto> e uma mensagem é enviada para todos os Helpers online
	    Eles podem responder usando /responder <id> <texto>
	Corrigido pequeno bug do /admins
	Comando /kicksecreto
	Comando /bansecreto
	Comando /ips otimizado
	Comando /id 			(mostra o id de um player atraves do nome digitado)
	Comandd /posplayer 		(mostra a posição de um player)
	Comando /criaricone 	(cria um icone no mapa de todos os players)
	Comando /destruiricone 	(oposto do comando /criaricone)
	Comando /versao         (mostra a versão do samp de um player)
	Comando /blindar        (coloca o carro de um player em god mode)
	Comando /desblindar     (oposto do comando /blindar)
	Comando /setarVW        (seta o Virtual World de um player)
	Comando /console        (imprime informações no console do server)
	
VERSÃO 1.6
	Resolvido problema de não salvar tags
					   
VERSÃO 1.5
- Nova interface de Registro e Login.
- Novo sistema de gravação de Admin, Helper e VIP. Chega de bugs.
- Função adicionada para não dar conflito com seu GM no sistema de registro.
- Anti-Divulguer.
- Anti-Bot.
- Anti-Weapon Hack.
- Anti-High Ping.
- Agora temos HQ de admin (opcional).
  °Portão movel (/portaoadm)
  °Varios objetos.
  °Carros exclusivos para admin
- OnPlayerDisconnect otimizado.
- Em vez de usar os comandos /jogar e /trabalhar, use apenas /servico. Os comandos
  /jogar e /trabalhar não foram excluidos, eles ainda funcionam normalmente.
- SSCANF adicionado no FS. Chega de conflitos.
- Corrigido bug de morrer e perder admin.
- Sistema de Disfarce:
  °/disfarce faz com que o Admin mude sua skin, seu nome e sua cor para ficar igual a do player
  que está sendo usado.
  °/sairdisfarce para voltar as caracteristicas originais.
- Novo sistema de Logs (Agradecimentos a Los).
- Novo sistema de prints.
- /Relatorios agora são gravados em log.
- Adicionado Sistema de Helpers:
  °/darhelper
  °/tirarhelper
  °/helpers
  °todos os comandos de helper em /la
- Adicionado Sistema de Vips (opcional):
  °/ajudavip
  °/darvip
  °/tirarvip
  °/v
  °/kitvip
  °/vips
  °/cc
  °/relatorio diferenciado
- Sistema de mensagens randomicas:
  °Adminis level 3+ podem ativa-las com /ativarmsgs ou /desativarmsgs.
- Sistema de Enquetes:
  °Admins level 3+ podem usar /enquete para criar uma enquete.
  °Players usam /sim ou /nao. A enquete se encerra automaticamente em 30 segundos.
- Adicionado comando /particular (todos os niveis de admin ou helper).
- Sistema de musica ao conectar:
  °Admins level 4+ podem usar o comando /musicainicial para escolher uma musica para o player ouvir quando
  se conectar ao servidor.
- Sistema de Foder um Jogador:
  °Admins nivel 4+ poderam usar o comando /foderplayer.
  °O Player fodido irá para o carandiru, ficará congelado, ficará mudo, e será forçado a ouvir uma musica do Restart kkkk.
  °Para desfode-lo vá até o arquivo Fodidos.txt e apague o IP dele da lista.
- Sistema de AFK:
  °/afk
  °/sairafk
  °o /admins e /helpers mostra quem está online e quem está AFK.
- Adicionado comando /mudarsenha (qualquer jogador).
- Adicionado comando /players (todos os niveis de admin ou helper). 			Mostra a quantidade de players online.
- Adicionado comando /limparchat (admin nivel 1+).                              Limpa o chat para todos os players.
- Adicionado comando /tempo (admin nivel 2+).                                   Seta o tempo para Manha/Tarde/Noite.
- Adicionado comando /dargrana (admin nivel 2+).                                Da grana a algum player.
- Adicionado comando /jetpack (admin nivel 2+).                                 Da um Jetpack para alguem.
- Adicionado comando /trazertodos (admin nivel 2+).                             Traz todos os jogadores até você.
- Adicionado comando /moverplayer (admin nivel 2+).                             Move um player até outro.
- Adicionado comando /resetargrana (admin nivel 3+).                            Reseta a grana de um jogador.
- Adicionado comando /setargrana (admin nivel 3+).                              Seta a grana de um jogador.
- Adicionado comando /resetar (admin nivel 4+).                                 Reseta Absolutamente todos os dados da conta de um player.
- Adicionado comando /versenha (admin nivel 5).                                 Mostra a senha de um jogador para o admin.
- Adicionado comando /setaradmin (admin nivel 5).                               Seta o admin de um player, independente de ele aceitar ou não
- Adicionado comando /trancarserver (admin nivel 5).                            Tranca o server com uma senha.
- Adicionado comando /destrancarserver (admin nivel 5).                         Destranca o server.
- Adicionado comando /seradmin (admin RCON).                                    Vira admin nivel 5.

-       ORDEM DE PRINT      -

Pasta Logs;
Pasta Banidos;
Pasta Banidos/Contas;
Pasta Admins;
Arquivo Fodidos.txt;
Arquivo Admins.adm;
Arquivo Helpers.hel;
Arquivo Vips.vip;
Pasta Contas;

Se seu samp-server abrir e fechar rapido, abra o server_log e veja qual foi a ultima pasta verificada.
a pasta depois dela, seguindo a ordem de cima, é a que está faltando.

*/

/*          INCLUDES        */
#include 	a_samp
#include 	zcmd
#include 	dof2

/*          DEIXE A SEU FAVOR       */

//SE QUISER USAR O SISTEMA DE REGISTRO DO FS DEIXE 1, SE NÃO QUISER COLOQUE 0
#define         				USAR_SISTEMA_REGISTRO                        	0

//SE QUISER UASR O SISTEMA DE VIP DO FS DEIXE 1, SE NÃO QUISER COLOQUE 0
#define                         USAR_SISTEMA_VIP                                0

//SE QUISER USAR UM TEXTDRAW DE FUNDO DEIXE 1, SE NÃO QUISER COLOQUE 0
#define                         USAR_TEXT                                       0

//SE QUISER QUE OS ADMINS SPAWNEM NA HQ DEIXE 1, SE NÃO QUISER COLOQUE 0
#define                         SPAWNAR_HQ                                      1

//SE DESEJA QUE APAREÇA [ADM] ANTES DO NICK DOS ADMINS NO CHAT DEIXE 1, SE NÃO QUISER COLOQUE 0
#define                         DESTAQUE_ADMINS                                 0

//DEFINA ABAIXO O PING MAXIMO PARA OS JOGADORES DO SEU SERVER
#define                         MAX_PING                                        2000

//DEFINA SE DESEJA USAR O LOGIN ALTOMATICO POR IP
#define                         AUTO_LOGIN                                      true

//DEFINA A SENHA PARA SE LOGAR DE ADM ESCONDIDO
#define                         SENHA                                           "....bjc....."

/*          MACROS      */
#define MensagemFormatadaParaTodos(%0,%1,%2); format(String, sizeof(String), %1, %2); 	SendClientMessageToAll(%0, String);
#define MensagemFormatada(%0,%1,%2); format(String, sizeof(String), %1, %2); 			SendClientMessage(playerid, %0, String);
#define MsgFormat(%0,%1,%2,%3); format(String, sizeof String, %2, %3); SendClientMessage(%0, %1, String);
#define SetarDado(%0,%1,%2); PlayerDados[%0][%1] = %2; SalvarDados(%0);
#define GetarDado(%0,%1) PlayerDados[%0][%1]
#define Loop(%0,%1) for(new %0 = 0; %0 < %1; ++%0)

#define Msg    		SendClientMessage
#define MsgAll      SendClientMessageToAll
#define LogExistir 	fexist

/*      CORES       */
#define VERDE                   0x21DD00FF
#define VERMELHO                0xFF030FFF
#define VERMELHO_ESCURO         0xE60000FF
#define VERMELHO_CLARO          0xFB0000FF
#define AMARELO                 0xFFFF00FF
#define LARANJA                 0xF97804FF
#define AZUL_CLARO              0x00C2ECFF
#define ROXO                    0xB360FDFF
#define BRANCO		    		0xFFFFFFFF
#define PRETO                   0x000000FF
#define AZUL                    0x1229FAFF
#define VERDE_CLARO             0x38FF06FF
#define ROSA_CHOQUE             0xE100E1FF
#define VERDE_ESCURO            0x008040FF
#define CINZA                   0xCECECEFF
#define ROSA                    0xD52DFFFF
#define CINZA_ESCURO       		0x626262FF
#define VERDE_AGUA       		0x03D687FF

/*      DIALOGS     */
#define DIALOG_REGISTRO    		4672
#define DIALOG_LOGIN            4673
#define DIALOG_BANIDO           4674
#define DIALOG_IPS              4675
#define DIALOG_INFO             4676
#define DIALOG_AL               4677
#define DIALOG_ADM              4678
#define DIALOG_HELPER           4679
#define DIALOG_MUSICAS          4680
#define DIALOG_SENHANOVA        4681
#define DIALOG_FORCAR           4682
#define DIALOG_AJUDAV           4683
#define DIALOG_KICKAR           4684
#define DIALOG_BANIR            4685
#define DIALOG_ADVERTIR         4686
#define DIALOG_OPCOES           4687
#define DIALOG_PART             4688
#define DIALOG_IPS1             4689
#define DIALOG_IPS2             4690
#define DIALOG_STATUS           4691

/*      FORWARDS     */
forward TempoPreso(playerid);
forward VerificarPreso(playerid);
forward NomeCarro(playerid);
forward LiberarKit(playerid);
forward MensagensRandom();
forward FecharEnquete();
forward TocarSom(playerid);
forward CriarLogs();
forward ImprimirInformacoes();
forward VerificarPasta(pasta[]);
forward VerificarArquivo(arquivo[]);
forward FoderSpawn(playerid);
forward DiminuirTempo();
forward FecharPortao();
forward NovoSpawn(playerid);
forward EnviarMsgHack(playerid);

enum pInfo
{
	Senha,
	Matou,
	Morreu,
	Admin,
	bool:Helper,
	Advertencias,
	Preso,
	bool:Congelado,
	bool:Assistindo,
	bool:Trabalhando,
	bool:Calado,
	bool:Invisivel,
	bool:Logado,
	bool:Vip,
	bool:PegouKit,
	bool:Afk,
	bool:Disfarcado,
	bool:Escondido
}

enum eEnquete
{
	bool:Criada,
	VotoSim,
	VotoNao,
	Titulo[128]
}

/*      VARIAVEIS E ARRAYS      */
new PlayerDados[MAX_PLAYERS][pInfo];
new String[256];
new StringContas[256];
new ID;
new AdminNivel[50];
new AdminTrabalhando[50];
new Dia, Mes, Ano, Hora, Minuto, Segundo;
new CarrosCriados[100];
new TodosCarros = 0;
new Barris[100];
new tBarris = 0;
new TimerPreso;
new nivel;
new TimerKit;
new TimerMsgs;
new TimerCont;
new PlayersOnline = 0;
new Enquete[eEnquete];
new MusicaInicial[256];
new time;
new PortaoHQ;
new CarrosAdm[14];
new bool:ServerTrancado;
new bool:MsgHack[MAX_PLAYERS];
new NomeOriginal[MAX_PLAYERS][30];
new IdClicado[MAX_PLAYERS];
new NomeClicado[MAX_PLAYERS][MAX_PLAYER_NAME];
new Ips2[300];
new Pergunta[MAX_PLAYERS][128];
#if USAR_SISTEMA_VIP == 1
	new CarroDono[MAX_PLAYERS];
	new Text3D:DonoCarro[MAX_PLAYERS];
#endif

new Mensagens[][] = {
"Você faz parte do servidor, chame seus amigos para jogarem aqui :D",
"Caso tenha dúvida chame um admin, use /relatorio",
"Use /ajuda para conhecer os comandos.",
"Se você for vip use /ajudavip para ver seus comandos.",
"para ver os admins online use /admins, /helpers para ver os Helpers."
};

new Musica[5][256] = {
"nada",
"http://dc346.4shared.com/img/644772952/4e7e79b6/dlink__2Fdownload_2Fo0ojFABE_3Ftsid_3D20120321-013313-69c1bb08/preview.mp3",//sweet
"http://dc427.4shared.com/img/965797774/2cb01e40/dlink__2Fdownload_2Foxa0xbKh_3Ftsid_3D20120321-013455-11ae6783/preview.mp3",//feel so close
"http://dc382.4shared.com/img/601537173/5cb8acbe/dlink__2Fdownload_2FtzgMp7lR_3Ftsid_3D20120321-013602-155261ac/preview.mp3",//memories
"http://dc342.4shared.com/img/567562876/400f1c84/dlink__2Fdownload_2Fa4gw9qih_3Ftsid_3D20120321-013700-7cc7c36a/preview.mp3"//open bar
};

new Cores[][] = {
"{1BE01B}",
"{038003}",
"{0CF50C}",
"{F5180C}",
"{0C8CF5}",
"{0C2BF5}",
"{0CBBF5}",
"{F5F50C}",
"{DEDE04}",
"{FC9E05}",
"{FFFFFF}",
"{FF05F7}",
"{990594}",
"{9C9C9C}",
"{14C9C9}",
"{05E6AD}",
"{E67D05}",
"{6B6B6B}"
};

#if USAR_TEXT == 1
    new Text:Inicio[MAX_PLAYERS];
#endif

public OnFilterScriptInit()
{
    CarrosAdm[0] = CreateVehicle(432,2179.80004883,1857.69995117,10.89999962,0.00000000,-1,-1,15);
	CarrosAdm[1] = CreateVehicle(601,2185.30004883,1857.50000000,10.80000019,0.00000000,-1,-1,15);
	CarrosAdm[2] = CreateVehicle(402,2188.80004883,1856.59997559,10.80000019,0.00000000,-1,-1,15);
	CarrosAdm[3] = CreateVehicle(411,2192.39990234,1856.80004883,10.60000038,0.00000000,-1,-1,15);
	CarrosAdm[4] = CreateVehicle(415,2196.19995117,1856.69995117,10.69999981,0.00000000,-1,-1,15);
	CarrosAdm[5] = CreateVehicle(429,2199.89990234,1856.80004883,10.60000038,0.00000000,-1,-1,15);
	CarrosAdm[6] = CreateVehicle(451,2179.69995117,1878.59997559,10.60000038,180.00000000,-1,-1,15);
	CarrosAdm[7] = CreateVehicle(477,2183.30004883,1878.50000000,10.69999981,180.00000000,-1,-1,15);
	CarrosAdm[8] = CreateVehicle(506,2187.50000000,1878.30004883,10.60000038,180.00000000,-1,-1,15);
	CarrosAdm[9] = CreateVehicle(541,2191.50000000,1878.59997559,10.50000000,180.00000000,-1,-1,15);
	CarrosAdm[10] = CreateVehicle(562,2195.30004883,1878.69995117,10.60000038,180.00000000,-1,-1,15);
	CarrosAdm[11] = CreateVehicle(565,2199.30004883,1878.59997559,10.50000000,180.00000000,-1,-1,15);
	CarrosAdm[12] = CreateVehicle(534,2202.80004883,1878.50000000,10.60000038,180.00000000,-1,-1,15);
	CarrosAdm[13] = CreateVehicle(535,2206.50000000,1878.90002441,10.69999981,180.00000000,-1,-1,15);
	CreateObject(980,2231.50000000,1882.80004883,13.10000038,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2220.10009766,1882.80004883,13.10000038,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2208.80004883,1882.80004883,13.10000038,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2197.50000000,1882.80004883,13.10000038,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2186.30004883,1882.80004883,13.10000038,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2174.89990234,1882.80004883,13.10000038,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2169.10009766,1877.19995117,13.10000038,0.00000000,0.00000000,90.00000000);
	CreateObject(980,2169.10009766,1866.30004883,13.10000038,0.00000000,0.00000000,90.00000000);
	CreateObject(980,2169.10009766,1862.50000000,13.10000038,0.00000000,0.00000000,90.00000000);
	CreateObject(980,2169.10009766,1841.09997559,12.80000019,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2179.00000000,1841.09997559,12.80000019,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2189.89990234,1841.09997559,12.80000019,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2199.00000000,1841.09997559,12.80000019,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2169.10009766,1861.19995117,13.19999981,0.00000000,0.00000000,96.00000000);
	CreateObject(980,2169.89990234,1859.69995117,12.60000038,0.00000000,0.00000000,99.99853516);
	CreateObject(980,2171.30004883,1856.80004883,12.80000019,0.00000000,0.00000000,115.99755859);
	CreateObject(980,2172.50000000,1855.40002441,12.80000019,0.00000000,0.00000000,133.99362183);
	CreateObject(980,2181.30004883,1851.09997559,13.10000038,0.00000000,0.00000000,180.00000000);
	CreateObject(980,2191.39990234,1851.09997559,13.10000038,0.00000000,0.00000000,179.99450684);
	CreateObject(980,2198.69995117,1851.09997559,13.10000038,0.00000000,0.00000000,179.99450684);
	CreateObject(980,2205.10009766,1835.80004883,12.60000038,0.00000000,0.00000000,272.00000000);
	CreateObject(980,2205.39990234,1826.00000000,12.60000038,0.00000000,0.00000000,271.99951172);
	CreateObject(980,2222.00000000,1820.59997559,12.60000038,0.00000000,0.00000000,177.99951172);
	CreateObject(980,2211.19995117,1821.00000000,12.60000038,0.00000000,0.00000000,177.99499512);
	CreateObject(980,2242.89990234,1882.59997559,16.39999962,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2254.10009766,1882.59997559,16.39999962,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2265.39990234,1882.59997559,16.39999962,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2276.60009766,1882.59997559,16.39999962,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2287.69995117,1882.59997559,16.39999962,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2297.69995117,1882.59997559,16.39999962,0.00000000,0.00000000,0.00000000);
	CreateObject(980,2308.19995117,1882.59997559,16.39999962,0.00000000,0.00000000,0.00000000);
	PortaoHQ = CreateObject(980,2204.39990234,1846.00000000,12.60000038,0.00000000,0.00000000,91.99951172);
	Create3DTextLabel("{25E01B}Admins usem {04C4C4}/PortaoAdm",-1, 2207.8176,1853.0674,10.8203, 15, 0, 0);
	SetTimer("ImprimirInformacoes", 40, false);
	return 1;
}

public ImprimirInformacoes()
{
	print("\n________________________________________________");
	print("\n\nCarregando LL Admin V1.7 By Lucas_Alemao...\n");
	VerificarPasta("Logs");
	CriarLogs();
	VerificarPasta("Banidos");
	VerificarPasta("Banidos/Contas");
	VerificarPasta("Admins");
	VerificarArquivo("Fodidos.txt");
	VerificarArquivo("Admins.adm");
	VerificarArquivo("Helpers.hel");
	VerificarArquivo("Vips.vip");
	VerificarPasta("Contas");
	print("\nLL Admin V1.7 Carregado com sucesso.\n");
	print("\nUse /la para ajuda.");
	print("Bom Jogo :D\n\n");
	print("________________________________________________");
	return 1;
}

public VerificarPasta(pasta[])
{
	format(String, sizeof(String), "LLADMIN/%s/verificacao",pasta);
	DOF2_CreateFile(String);
	if(DOF2_FileExists(String))
	{
	    printf("Pasta '%s' Encontrada e carregada com sucesso.", pasta);
	}
	else if(!DOF2_FileExists(String))
	{
	    printf("Pasta '%s' Não encontrada.", pasta);
	}
	DOF2_RemoveFile(String);
	return 1;
}

public VerificarArquivo(arquivo[])
{
	format(String, sizeof(String), "LLADMIN/%s", arquivo);
	if(DOF2_FileExists(String))
	{
	    printf("Arquivo '%s' Encontrado e carregado com sucesso.", arquivo);
	    return 1;
	}
	else if(!DOF2_FileExists(String))
	{
	    printf("Arquivo '%s' não encontrado. O FS o criou automaticamente.", arquivo);
	    DOF2_CreateFile(String);
	    return 1;
	}
	return 1;
}

public OnFilterScriptExit()
{
	for(new i = 0; i < MAX_PLAYERS; ++i)
	{
	    SalvarDados(i);
	}
	DOF2_Exit();
	return 1;
}

public OnPlayerConnect(playerid)
{
	if(strfind(Nome(playerid),"clock$",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"prn",true) != -1) Ban(playerid);
 	if(strfind(Nome(playerid),"Carl",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"con",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"SgtPepper",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Pepe",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"nul",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Pepno",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Pepsi",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Rocky",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Carl",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Vino_Toro",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Zoquete",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"AquilesBrinco",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Azucar",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Manfrey",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Papirola",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"[ViP]Labrik",true) != -1)Ban(playerid);
	if(strfind(Nome(playerid),"Sony",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Pacman",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"Batman",true) != -1)Ban(playerid);
	if(strfind(Nome(playerid),"aux",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com1",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com2",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com3",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com4",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com5",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com6",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com7",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com8",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"com9",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"lpt1",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"lpt2",true) != -1) Ban(playerid);
 	if(strfind(Nome(playerid),"lpt3",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"lpt4",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"lpt5",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"lpt6",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"lpt8",true) != -1) Ban(playerid);
	if(strfind(Nome(playerid),"lpt9",true) != -1) Ban(playerid);
	Pergunta[playerid] = "Nenhuma";
	SetTimerEx("TocarSom", 1000, false, "i", playerid);
	PlayersOnline++;
	PlayerDados[playerid][Logado] = false;
	PlayerDados[playerid][Admin] = 0;
	PlayerDados[playerid][Helper] = false;
	PlayerDados[playerid][Vip] = false;
	new strConta[80];
	new Ip[25];
	for(new t = 0; t < 100; ++t)
	{
	    SendClientMessage(playerid, -1, " ");
	}
	format(strConta, sizeof(strConta), "LLADMIN/Banidos/Contas/%s.txt", Nome(playerid));
	if(DOF2_FileExists(strConta))
	{
	    format(String, sizeof(String), "{FFFFFF}Você está banido deste servidor!\n\n         Dados do Banimento:\n\n{45F75A}Admin: {FFFFFF}%s \n{45F75A}Motivo: {FFFFFF}%s", DOF2_GetString(strConta, "Admin"), DOF2_GetString(strConta, "Motivo"));
	    format(String, sizeof(String), "%s\n{45F75A}Data: {FFFFFF}%d/%d/%d \n{45F75A}Hora: {FFFFFF}%d:%d", String, DOF2_GetInt(strConta, "Dia"), DOF2_GetInt(strConta, "Mes"), DOF2_GetInt(strConta, "Ano"), DOF2_GetInt(strConta, "Hora"), DOF2_GetInt(strConta, "Minuto"));
	    ShowPlayerDialog(playerid, DIALOG_BANIDO, DIALOG_STYLE_MSGBOX, "Banido!", String, "Fechar", "");
	    return 1;
	}
	GetPlayerIp(playerid, Ip, 25);
	if(strcmp(Ip ,"255.255.255.255", true) == 0)
	{
		Ban(playerid);
	}
	if(DOF2_IsSet("LLADMIN/Banidos/Ips.txt", Ip))
	{
	    format(String, sizeof(String), "{FFFFFF} Seu IP está banido deste Servidor!\n\nDados:\nIP:%s\n%s", Ip, DOF2_GetString("LLADMIN/Banidos/Ips.txt", Ip));
        ShowPlayerDialog(playerid, DIALOG_BANIDO, DIALOG_STYLE_MSGBOX, "Banido!", String, "Fechar", "");
        return 1;
 	}
 	if(DOF2_IsSet("LLADMIN/Fodidos.txt", Ip))
 	{
 	    SetTimerEx("FoderSpawn", 1000, false, "i", playerid);
		return 1;
	}
	format(String, sizeof(String), "%s Conectou ao servidor", Nome(playerid));
	SendClientMessageToAll(VERDE_CLARO, String);
	format(StringContas, sizeof(StringContas), "LLADMIN/Contas/%s.txt", Nome(playerid));
	#if (USAR_TEXT == 1) && (USAR_SISTEMA_REGISTRO == 1)
			TextFundo(playerid);
 	#endif
	#if USAR_SISTEMA_REGISTRO == 1
		if(!DOF2_FileExists(StringContas))
		{
		    format(String, sizeof(String), "{F1FC14}Conta: %s\n{FC1E1E}Não registrada.\n\n{07D915}Digite uma senha para se registrar\nem nosso banco de dados.", Nome(playerid));
		    ShowPlayerDialog(playerid, DIALOG_REGISTRO, DIALOG_STYLE_INPUT, "{1EB2FC}Registrando...", String, "Registrar", "Sair");
			return 1;
		}
		else
		{
		    #if AUTO_LOGIN == true
		    	new ip[25];
				GetPlayerIp(playerid, ip, sizeof ip);
				if(strcmp(ip, DOF2_GetString(StringContas, "IP"), true) == 0) {
				    PlayerDados[playerid][Matou] = DOF2_GetInt(StringContas, "Matou");
					PlayerDados[playerid][Morreu] = DOF2_GetInt(StringContas, "Morreu");
					new str[50];
					format(str, 50, "LLADMIN/Admins/%s.sav", Nome(playerid));
					if(DOF2_FileExists(str)) {
					    if(DOF2_IsSet(str, "Admin")) {
					    	PlayerDados[playerid][Admin] = DOF2_GetInt(str, "Admin");
						}
						if(DOF2_IsSet(str, "Helper")) {
					    	PlayerDados[playerid][Helper] = DOF2_GetBool(str, "Helper");
						}
						if(DOF2_IsSet(str, "Vip")) {
					    	PlayerDados[playerid][Vip] = DOF2_GetBool(str, "Vip");
						}
					}
					PlayerDados[playerid][Advertencias] = DOF2_GetInt(StringContas, "Advertencias");
					GivePlayerMoney(playerid, DOF2_GetInt(StringContas, "Grana"));
					PlayerDados[playerid][Preso] = DOF2_GetInt(StringContas, "Preso");
					SendClientMessage(playerid, VERDE_CLARO, "Você foi logado altomaticamente através de seu IP.");
					#if USAR_TEXT == 1
						TextDrawDestroy(Inicio[playerid]);
					#endif
					if(PlayerDados[playerid][Admin] > 0)
					{
						format(String, sizeof(String), "Logado de Admin Nível %d", PlayerDados[playerid][Admin]);
						SendClientMessage(playerid, AZUL_CLARO, String);
						format(String, sizeof(String), "~w~Admin ~g~%s ~y~Online", Nome(playerid));
						GameTextForAll(String, 1000, 1);
						PlayerDados[playerid][Trabalhando] = true;
						SendClientMessage(playerid, AZUL_CLARO, "Você está trabalhando, para jogar use /jogar");
						SetPlayerColor(playerid, 0x24E9FFFF);
						SetPlayerHealth(playerid, 999999);
					}
					return 1;
				}
			#endif
		    format(String, sizeof(String), "{F1FC14}Conta: %s\n{28FC14}Registrada.\n\n{14F1FC}Digite sua senha para Logar", Nome(playerid));
		    ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_INPUT, "{FC14E9}Logando...", String, "Logar", "Sair");
			return 1;
		}
	#else
	    return 1;
	#endif
}

public FoderSpawn(playerid)
{
    SetSpawnInfo(playerid, 0, 0, 107.2300,1920.6311,18.5208, 0, 0, 0, 0, 0, 0, 0);
	SpawnPlayer(playerid);
	SetPlayerWorldBounds(ID, 337.5694,101.5826,1940.9759,1798.7453);
	TogglePlayerControllable(ID, false);
	Msg(playerid, VERMELHO, "Você foi fodido por um admin! Agora aguente!");
	PlayAudioStreamForPlayer(ID, "http://dc239.4shared.com/img/288497172/b1c25846/dlink__2Fdownload_2FAzhEPzew_3Ftsid_3D20120321-232554-e2632526/preview.mp3", 0, 0, 0, 10, 0);
	return 1;
}

public TocarSom(playerid)
{
	if(strfind(MusicaInicial, "nada", true) != -1)
	{
	    return 1;
	}
    PlayAudioStreamForPlayer(playerid, MusicaInicial, 0, 0, 0, 20, 0);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	new Motivo[20];
	if(reason == 0) Motivo = "Queda de conexão";
	if(reason == 1) Motivo = "Conta própria";
	if(reason == 2) Motivo = "Kickado/Banido";
	format(String, sizeof(String), "{289E08}O Jogador {39F505}%s{289E08} Desconectou do servidor. (%s)", Nome(playerid), Motivo);
	MsgAll(-1, String);
	if(GetarDado(playerid, Admin) > 0)
	{
		format(String, sizeof(String), "~w~Admin ~g~%s ~r~Offline", Nome(playerid));
		GameTextForAll(String, 1000, 1);
	}
	PlayersOnline--;
	SalvarDados(playerid);
	DOF2_Exit();
	return 1;
}

public FecharEnquete()
{
	new StrEnquete[256];
	Enquete[Criada] = false;
	format(StrEnquete, 256, "Enquete %s Fechada.", Enquete[Titulo]);
	SendClientMessageToAll(ROSA, StrEnquete);
	format(StrEnquete, 256, "Votos Sim: %d", Enquete[VotoSim]);
	SendClientMessageToAll(ROSA_CHOQUE, StrEnquete);
	format(StrEnquete, 256, "Voto Não: %d", Enquete[VotoNao]);
	SendClientMessageToAll(ROSA_CHOQUE, StrEnquete);
	if(Enquete[VotoSim] > Enquete[VotoNao])
	{
	    SendClientMessageToAll(ROSA, "\nO Sim Venceu.");
		return 1;
	}
	if(Enquete[VotoNao] > Enquete[VotoSim])
	{
	    SendClientMessageToAll(ROSA, "\nO Nao Venceu.");
		return 1;
	}
	return 1;
}
public OnPlayerSpawn(playerid)
{
    if(DOF2_IsSet("LLADMIN/Admins.adm", Nome(playerid)))
	{
		PlayerDados[playerid][Admin] = DOF2_GetInt("LLADMIN/Admins.adm", Nome(playerid));
	}
	if(DOF2_IsSet("LLADMIN/Helpers.hel", Nome(playerid)))
	{
		SetarDado(playerid, Helper, DOF2_GetBool("LLADMIN/Helpers.hel", Nome(playerid)));
	}
	if(DOF2_IsSet("LLADMIN/Vips.vip", Nome(playerid)))
	{
		SetarDado(playerid, Vip, DOF2_GetBool("LLADMIN/vips.vip", Nome(playerid)));
	}
    format(StringContas, sizeof(StringContas), "LLADMIN/Contas/%s.txt", Nome(playerid));
	#if SPAWNAR_HQ == 1
    	if((PlayerDados[playerid][Admin] > 0) || (PlayerDados[playerid][Helper] == true))
	    {
    		SetTimerEx("NovoSpawn", 500, false, "i", playerid);
		}
	#endif
	SetTimerEx("VerificarPreso", 1000, false, "i", playerid);
	ResetPlayerWeapons(playerid);
	#if USAR_SISTEMA_REGISTRO == 0
		if(!DOF2_FileExists(StringContas))
		{
		    DOF2_CreateFile(StringContas);
			DOF2_SetInt(StringContas, "Matou", 0);
			DOF2_SetInt(StringContas, "Morreu", 0);
			DOF2_SetInt(StringContas, "Grana", 0);
			//DOF2_SetInt(StringContas, "Admin", 0);
			//DOF2_SetBool(StringContas, "Helper", false);
			DOF2_SetInt(StringContas, "Advertencias", 0);
			DOF2_SetInt(StringContas, "Preso", 0);
			//DOF2_SetBool(StringContas, "Vip", false);
			PlayerDados[playerid][Logado] = true;
		}
		if(DOF2_FileExists(StringContas))
	    {
			PlayerDados[playerid][Matou] = DOF2_GetInt(StringContas, "Matou");
			PlayerDados[playerid][Morreu] = DOF2_GetInt(StringContas, "Morreu");
			if(DOF2_IsSet("LLADMIN/Admins.adm", Nome(playerid)))
			{
			    PlayerDados[playerid][Admin] = DOF2_GetInt("LLADMIN/Admins.adm", Nome(playerid));
			}
			PlayerDados[playerid][Advertencias] = DOF2_GetInt(StringContas, "Advertencias");
			GivePlayerMoney(playerid, DOF2_GetInt(StringContas, "Grana"));
			PlayerDados[playerid][Preso] = DOF2_GetInt(StringContas, "Preso");
			if(DOF2_IsSet("LLADMIN/Helpers.hel", Nome(playerid)))
			{
			    PlayerDados[playerid][Helper] = DOF2_GetBool("LLADMIN/Vips.vip", Nome(playerid));
			}
			if(DOF2_IsSet("LLADMIN/Vips.vip", Nome(playerid)))
			{
			    PlayerDados[playerid][Vip] = DOF2_GetBool("LLADMIN/Vips.vip", Nome(playerid));
			}
			//PlayerDados[playerid][Helper] = DOF2_GetBool(StringContas, "Helper");
			//PlayerDados[playerid][Vip] = DOF2_GetBool(StringContas, "Vip");
			if((PlayerDados[playerid][Admin] > 0) && (PlayerDados[playerid][Logado] == false))
			{
			    PlayerDados[playerid][Logado] = true;
				format(String, sizeof(String), "Logado de Admin Nível %d", PlayerDados[playerid][Admin]);
				SendClientMessage(playerid, AZUL_CLARO, String);
				format(String, sizeof(String), "~w~Admin ~g~%s ~y~Online", Nome(playerid));
				GameTextForAll(String, 1000, 1);
				PlayerDados[playerid][Trabalhando] = true;
				SendClientMessage(playerid, AZUL_CLARO, "Você está trabalhando, para jogar use /jogar");
				SetPlayerColor(playerid, 0x24E9FFFF);
				SetPlayerHealth(playerid, 999999);
			}
		}
	#endif
	return 0;
}

public OnPlayerUpdate(playerid)
{
	new ping = GetPlayerPing(playerid);
	if(ping > MAX_PING)
	{
	    MensagemFormatadaParaTodos(AZUL_CLARO, "O jogador %s [ID: %d] foi kickado do servidor por ultrapassar o ping maximo (%d).", Nome(playerid), playerid, MAX_PING);
		Kick(playerid);
	}
	new Arma = GetPlayerWeapon(playerid);
	if(MsgHack[playerid] == true) return 1;
	switch(Arma)
	{
	    case 9:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando uma serra eletrica. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 35:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando um lança-misseis. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 36:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando um lança-misseis. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 37:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando um lança-chamas. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 38:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando uma minigun. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 39:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando explosivos remotos. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 40:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando um detonador. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 43:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando uma camera fotografica. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 44:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando oculos de visão noturna. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
		case 45:
	    {
	        format(String, sizeof(String), "[ANTI WH] O jogador %s [ID: %d] está usando oculos de visão noturna. /assitir para conferir.", Nome(playerid), playerid);
	        MensagemParaAdmins(String);
	        MsgHack[playerid] = true;
	        SetTimerEx("EnviarMsgHack", 60000, true, "i", playerid);
		}
	}
	return 1;
}

public EnviarMsgHack(playerid)
{
	MsgHack[playerid] = false;
	return 1;
}

public NovoSpawn(playerid)
{
	SetPlayerPos(playerid, 2225.9814,1837.7249,10.8203);
	SetPlayerFacingAngle(playerid, 98.0608);
	return 1;
}

public VerificarPreso(playerid)
{
    if(PlayerDados[playerid][Preso] > 0)
	{
    	SetPlayerPos(ID, 264.6288,77.5742,1001.0391);
    	SetPlayerInterior(ID, 6);
    	SendClientMessage(playerid, VERMELHO, "Seu Tempo de Cadeia ainda não acabou!");
    	TimerPreso = SetTimerEx("TempoPreso", 1000, true, "i", playerid);
	}
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if((vehicleid >= CarrosAdm[0]) && (vehicleid <= CarrosAdm[13]))
	{
	    if((PlayerDados[playerid][Helper] == false) || (PlayerDados[playerid][Admin] < 1))
	    {
	        RemovePlayerFromVehicle(playerid);
			Msg(playerid, CINZA, "Você precisa ser admin para usar este carro.");
		}
	}
	if(PlayerDados[playerid][Admin] > 0)
	{
	    if(PlayerDados[playerid][Trabalhando] == true)
	    {
			SetTimerEx("NomeCarro", 3500, false, "i", playerid);
		}
	}
	return 0;
}

public NomeCarro(playerid)
{
	new idc = GetPlayerVehicleID(playerid);
	format(String, sizeof(String), "[LL ADMIN] Veículo ID %d", idc);
	SendClientMessage(playerid, CINZA, String);
}

public OnPlayerDeath(playerid, killerid, reason)
{
	PlayerDados[playerid][Morreu]++;
	PlayerDados[killerid][Matou]++;
	format(StringContas, sizeof(StringContas), "LLADMIN/Contas/%s.txt", Nome(playerid));
	if(DOF2_IsSet("LLADMIN/Admins.adm", Nome(playerid)))
	{
	    PlayerDados[playerid][Admin] = DOF2_GetInt("LLADMIN/Admins.adm", Nome(playerid));
	}
	KillTimer(TimerKit);
	return 0;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source) {
	/*if(clickedplayerid == playerid)
	    return false;*/
	IdClicado[playerid] = clickedplayerid;
	NomeClicado[playerid] = Nome(clickedplayerid);
	if(!(NivelRequerido(playerid, 1))) return 1;
	format(String, 60, "Opções de Admin sobre %s", NomeClicado[playerid]);
	ShowPlayerDialog(playerid, DIALOG_OPCOES, DIALOG_STYLE_LIST, String , "{F5F50C}Kickar\n{F5180C}Banir\n{0CF50C}Advertir\n{FF05F7}Trazer\n{FF05F7}Ir\n{14C9C9}Particular\n{0C8CF5}Status", "Avançar", "Fechar");
	return 1;
}

public OnPlayerText(playerid, text[])
{
	new str2[256];
	if((strfind(text, "7777", true) != -1) || (strfind(text, "7788", true) != -1) || (strfind(text, "189.", true) != -1) || (strfind(text, "187.", true) != -1) || (strfind(text, "185.", true) != -1) || (strfind(text, "7575", true) != -1) || (strfind(text, "75.", true) != -1))
	{
	    MensagemFormatadaParaTodos(AZUL_CLARO, "O Jogador {FB0000}%s{00C2EC} Foi Banido por divulgar IP.\r\n", Nome(playerid));
	    EscreverLog("LLADMIN/Logs/Banidos.log", String);
		format(String, sizeof(String), "LLADMIN/Banidos/Contas/%s.txt", Nome(playerid));
		getdate(Ano, Mes, Dia);
		gettime(Hora, Minuto, Segundo);
		DOF2_CreateFile(String);
		DOF2_SetString(String, "Admin", "Admin automatico");
		DOF2_SetString(String, "Motivo", "Divulgação de IP");
		DOF2_SetInt(String, "Ano", Ano);
		DOF2_SetInt(String, "Mes", Mes);
		DOF2_SetInt(String, "Dia", Dia);
		DOF2_SetInt(String, "Hora", Hora);
		DOF2_SetInt(String, "Minuto", Minuto);
		Kick(playerid);
	}
	format(String, sizeof(String), "LLADMIN/Teleportes/%s.txt", text);
	if(DOF2_FileExists(String))
	{
   		format(str2, sizeof(str2), "O Jogador %s foi para o 'te %s' [Teleporte Criado pelo Admin: %s] (para ir basta digitar as palavras entre aspas)", Nome(playerid), DOF2_GetString(String, "Comando"), DOF2_GetString(String, "Admin"));
		SendClientMessageToAll(AMARELO, str2);
		SetPlayerPos(playerid, DOF2_GetFloat(String, "X"), DOF2_GetFloat(String, "Y"), DOF2_GetFloat(String, "Z"));
		return 0;
	}
	if(PlayerDados[playerid][Calado] == true)
	{
	    SendClientMessage(playerid, BRANCO, "Você Está calado e não pode falar!");
	    return 0;
	}
	#if DESTAQUE_ADMINS == 1
		if(GetarDado(playerid, Admin) > 1)
		{
		    if(GetarDado(playerid, Disfarcado) == true)
		    {
	    	    format(String, sizeof(String), "%s: %s", Nome(playerid), text);
		    	MsgAll(GetPlayerColor(playerid), String);
				return 0;
			}
		    format(String, sizeof(String), "[ADM] %s: %s", Nome(playerid), text);
	    	MsgAll(GetPlayerColor(playerid), String);
		    return 0;
		}
	#endif
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_REGISTRO)
	{
	    if(response)
	    {
	        if(!strlen(inputtext))
	        {
	            format(String, sizeof(String), "{F1FC14}Conta: %s\n{FC1E1E}Não registrada.\n\n{07D915}Digite uma senha para se registrar\nem nosso banco de dados.", Nome(playerid));
		    	ShowPlayerDialog(playerid, DIALOG_REGISTRO, DIALOG_STYLE_INPUT, "{1EB2FC}Registrando...", String, "Registrar", "Sair");
	            SendClientMessage(playerid, VERMELHO, "Digite uma senha para se registrar ¬¬");
	            return 1;
			}
			format(StringContas, sizeof(StringContas), "LLADMIN/Contas/%s.txt", Nome(playerid));
			DOF2_CreateFile(StringContas);
			DOF2_SetString(StringContas, "Senha", inputtext);
			DOF2_SetInt(StringContas, "Matou", 0);
			DOF2_SetInt(StringContas, "Morreu", 0);
			DOF2_SetInt(StringContas, "Grana", 0);
			DOF2_SetInt(StringContas, "Advertencias", 0);
			DOF2_SetInt(StringContas, "Preso", 0);
			SendClientMessage(playerid, AZUL_CLARO, "Registrado Com Sucesso! você foi logado automaticamente");
			#if USAR_TEXT == 1
				TextDrawDestroy(Inicio[playerid]);
			#endif
			return 1;
		}
		else
		{
		    SendClientMessage(playerid, VERMELHO, "Você não quis se registrar e por isso foi kickado!");
			Kick(playerid);
			return 1;
		}
	}
	if(dialogid == DIALOG_LOGIN)
	{
	    if(response)
	    {
	        if(!strlen(inputtext))
	        {
	            format(String, sizeof(String), "{F1FC14}Conta: %s\n{28FC14}Registrada.\n\n{14F1FC}Digite sua senha para Logar", Nome(playerid));
		    	ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_INPUT, "{FC14E9}Logando...", String, "Logar", "Sair");
	            SendClientMessage(playerid, VERMELHO, "Digite sua senha para se logar ¬¬");
	            return 1;
			}
			format(StringContas, sizeof(StringContas), "LLADMIN/Contas/%s.txt", Nome(playerid));
			if(strcmp(inputtext, DOF2_GetString(StringContas, "Senha"), true))
			{
                format(String, sizeof(String), "{F1FC14}Conta: %s\n{28FC14}Registrada.\n\n{14F1FC}Digite sua senha para Logar", Nome(playerid));
		    	ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_INPUT, "{FC14E9}Logando...", String, "Logar", "Sair");
                SendClientMessage(playerid, VERMELHO_CLARO, "Senha incorreta!");
				return 1;
			}
			else
			{
				PlayerDados[playerid][Matou] = DOF2_GetInt(StringContas, "Matou");
				PlayerDados[playerid][Morreu] = DOF2_GetInt(StringContas, "Morreu");
				/*PlayerDados[playerid][Admin] = DOF2_GetInt(StringContas, "Admin");
//old			if(DOF2_IsSet("LLADMIN/Admins.adm", Nome(playerid)))
				{
					PlayerDados[playerid][Admin] = DOF2_GetInt("LLADMIN/Admins.adm", Nome(playerid));
				}
				if(DOF2_IsSet("LLADMIN/Helpers.hel", Nome(playerid)))
				{
			    	PlayerDados[playerid][Helper] = DOF2_GetBool("LLADMIN/Helpers.hel", Nome(playerid));
				}
				if(DOF2_IsSet("LLADMIN/Vips.vip", Nome(playerid)))
				{
			    	PlayerDados[playerid][Vip] = DOF2_GetBool("LLADMIN/Vips.vip", Nome(playerid));
				}*/
				new str[50];
				format(str, 50, "LLADMIN/Admins/%s.sav", Nome(playerid));
				if(DOF2_FileExists(str)) {
				    if(DOF2_IsSet(str, "Admin")) {
				    	PlayerDados[playerid][Admin] = DOF2_GetInt(str, "Admin");
					}
					if(DOF2_IsSet(str, "Helper")) {
				    	PlayerDados[playerid][Helper] = DOF2_GetBool(str, "Helper");
					}
					if(DOF2_IsSet(str, "Vip")) {
				    	PlayerDados[playerid][Vip] = DOF2_GetBool(str, "Vip");
					}
				}
				PlayerDados[playerid][Advertencias] = DOF2_GetInt(StringContas, "Advertencias");
				GivePlayerMoney(playerid, DOF2_GetInt(StringContas, "Grana"));
				PlayerDados[playerid][Preso] = DOF2_GetInt(StringContas, "Preso");
				//PlayerDados[playerid][Helper] = DOF2_GetBool(StringContas, "Helper");
				//PlayerDados[playerid][Vip] = DOF2_GetBool(StringContas, "Vip");
				SendClientMessage(playerid, VERDE_CLARO, "Logado Com sucesso!");
				#if USAR_TEXT == 1
					TextDrawDestroy(Inicio[playerid]);
				#endif
				if(PlayerDados[playerid][Admin] > 0)
				{
					format(String, sizeof(String), "Logado de Admin Nível %d", PlayerDados[playerid][Admin]);
					SendClientMessage(playerid, AZUL_CLARO, String);
					format(String, sizeof(String), "~w~Admin ~g~%s ~y~Online", Nome(playerid));
					GameTextForAll(String, 1000, 1);
					PlayerDados[playerid][Trabalhando] = true;
					SendClientMessage(playerid, AZUL_CLARO, "Você está trabalhando, para jogar use /jogar");
					SetPlayerColor(playerid, 0x24E9FFFF);
					SetPlayerHealth(playerid, 999999);
					return 1;
				}
				return 1;
			}
		}
		else
		{
		    SendClientMessage(playerid, VERMELHO, "Você não quis se Logar e por isso foi kickado!");
			Kick(playerid);
			return 1;
		}
	}
	if(dialogid == DIALOG_BANIDO)
	{
	    if(response)
	    {
	        SendClientMessage(playerid, BRANCO, "Kickado");
	        Kick(playerid);
		}
		return 1;
	}
	if(dialogid == DIALOG_ADM)
	{
	    if(response)
	    {
			format(String, sizeof(String), "O Jogador {1B95E0}%s{00C2EC} é o mais novo admin do server!", Nome(playerid));
			SendClientMessageToAll(AZUL_CLARO, String);
			EscreverLog("LLADMIN/Logs/NovoAdm.log", String);
			SendClientMessage(playerid, VERDE_CLARO, "Use /la para ver seus comandos de Admin.");
			SetarDado(playerid, Admin, nivel);
			DOF2_SetInt("LLADMIN/Admins.adm", Nome(playerid), nivel);
			DarAdmin(playerid, nivel);
		}
		if(!response)
		{
		    format(String, sizeof(String), "O Jogador {1B95E0}%s{00C2EC} recusou ser admin do server!", Nome(playerid));
		    SendClientMessageToAll(AZUL_CLARO, String);
		}
		return 1;
	}
	if(dialogid == DIALOG_HELPER)
	{
	    if(!response)
			return format(String, sizeof(String), "O Jogador {1B95E0}%s{00C2EC} recusou ser Helper do server.", Nome(playerid)), SendClientMessageToAll(AZUL_CLARO, String);
	    format(String, sizeof(String), "O Jogador {1B95E0}%s{00C2EC} é o mais novo Helper do server", Nome(playerid));
		SendClientMessageToAll(AZUL_CLARO, String);
		SendClientMessage(playerid, VERDE_CLARO, "Use /la para ver seus comandos de Helper.");
		SalvarDados(playerid);
 		SetarDado(playerid, Helper, true);
 		DarHelper(playerid);
		//DOF2_SetBool("LLADMIN/Helpers.hel", Nome(playerid), true);
		return 1;
	}
	if(dialogid == DIALOG_MUSICAS)
	{
	    if(!response) return 0;
	    if(listitem == 0)
	    {
	        MusicaInicial = "nada";
	        return 1;
		}
	    if(listitem == 1)
	    {
	        MusicaInicial = Musica[1];
	        return 1;
		}
		if(listitem == 2)
	    {
	        MusicaInicial = Musica[2];
	        return 1;
		}
		if(listitem == 3)
	    {
	        MusicaInicial = Musica[3];
	        return 1;
		}
		if(listitem == 4)
	    {
	        MusicaInicial = Musica[4];
	        return 1;
		}
	}
	if(dialogid == DIALOG_SENHANOVA)
	{
	    new StrConta[100];
	    format(StrConta,sizeof(StrConta), "LLADMIN/Contas/%s.txt", Nome(playerid));
		if(!strlen(inputtext))
		{
			format(String, sizeof(String), "{D9E01B}Digite uma senha ou clique em Cancelar.\n\n{1BE0AF}Sua senha atual é {1B63E0}'%s'.\n\nDigite sua nova senha abaixo:", DOF2_GetString(StrConta, "Senha"));
			ShowPlayerDialog(playerid, DIALOG_SENHANOVA, DIALOG_STYLE_INPUT, "{1BE084}Nova Senha", String, "Mudar", "Cancelar");
			return 1;
		}
		DOF2_SetString(StrConta, "Senha", inputtext);
		format(String, sizeof(String), "{12FF05}Sua nova senha é {25E01B}'%s'", inputtext);
		SendClientMessage(playerid, -1, String);
		SalvarDados(playerid);
	}
	if(dialogid == DIALOG_OPCOES) {
		switch(listitem) {
		    case 0: {
		        format(String, sizeof String, "Digite o motivo pelo qual quer kickar\no jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
				ShowPlayerDialog(playerid, DIALOG_KICKAR, DIALOG_STYLE_INPUT, "Kickar", String, "Kickar", "Fechar");
			}
			case 1: {
			    format(String, sizeof String, "Digite o motivo pelo qual quer banir\no jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
				ShowPlayerDialog(playerid, DIALOG_BANIR, DIALOG_STYLE_INPUT, "Banir", String, "Banir", "Fechar");
			}
			case 2: {
                format(String, sizeof String, "Digite o motivo pelo qual quer advertir\no jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
				ShowPlayerDialog(playerid, DIALOG_ADVERTIR, DIALOG_STYLE_INPUT, "Advertir", String, "Advertir", "Fechar");
			}
			case 3: {
			    new Float:Pos[3];
				GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
				if(IsPlayerInAnyVehicle(IdClicado[playerid]))
				{
					new carroid = GetPlayerVehicleID(IdClicado[playerid]);
					SetVehiclePos(carroid, Pos[0]+2, Pos[1]+2, Pos[2]+2);
					format(String, sizeof(String), "O Admin %s trouxe você até ele!", Nome(playerid));
					SendClientMessage(IdClicado[playerid], AZUL_CLARO, String);
					format(String, sizeof(String), "Você trouxe o jogador %s [ID: %d] até você", Nome(IdClicado[playerid]), IdClicado[playerid]);
					SendClientMessage(playerid, AZUL_CLARO, String);
					return 1;
				}
				SetPlayerPos(IdClicado[playerid], Pos[0]+2, Pos[1]+2, Pos[2]+2);
				format(String, sizeof(String), "O Admin %s trouxe você até ele!", Nome(playerid));
				SendClientMessage(IdClicado[playerid], AZUL_CLARO, String);
				format(String, sizeof(String), "Você trouxe o jogador %s [ID: %d] até você", Nome(IdClicado[playerid]), IdClicado[playerid]);
				SendClientMessage(playerid, AZUL_CLARO, String);
			}
			case 4: {
			    new Float:Pos[3];
				GetPlayerPos(IdClicado[playerid], Pos[0], Pos[1], Pos[2]);
				if(IsPlayerInAnyVehicle(playerid))
				{
					new carroid = GetPlayerVehicleID(playerid);
					SetVehiclePos(carroid, Pos[0], Pos[1], Pos[2]);
					format(String, sizeof(String), "O Admin %s veio até você!", Nome(playerid));
					SendClientMessage(IdClicado[playerid], AZUL_CLARO, String);
					format(String, sizeof(String), "Você foi até o Jogador %s [ID: %d]", Nome(IdClicado[playerid]), IdClicado[playerid]);
					SendClientMessage(playerid, AZUL_CLARO, String);
					return 1;
				}
				SetPlayerPos(playerid, Pos[0]+2, Pos[1]+2, Pos[2]+2);
				format(String, sizeof(String), "O Admin %s veio até você!", Nome(playerid));
				SendClientMessage(IdClicado[playerid], AZUL_CLARO, String);
				format(String, sizeof(String), "Você foi até o Jogador %s [ID: %d]", Nome(IdClicado[playerid]), IdClicado[playerid]);
				SendClientMessage(playerid, AZUL_CLARO, String);
			}
			case 5: {
			    format(String, sizeof String, "Digite a mensagem particular que deseja enviar\nao jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
				ShowPlayerDialog(playerid, DIALOG_PART, DIALOG_STYLE_INPUT, "Particular", String, "Enviar", "Fechar");
			}
			case 6: {
			    new StringM[500];
			    new Fala[5];
				new ip[25];
				if(PlayerDados[ID][Calado] == true) Fala = "Sim";
				if(PlayerDados[ID][Calado] == false) Fala = "Nao";
				GetPlayerIp(ID, ip, 25);
				format(StringM, sizeof(StringM), "{FFFFFF}Dados de {11D41E}%s{FFFFFF}\n\n{11D41E}Matou:{FFFFFF} %d\n{11D41E}Morreu:{FFFFFF} %d\n{11D41E}Grana:{FFFFFF} %d\n{11D41E}Admin Level:{FFFFFF} %d\n{11D41E}Calado:{FFFFFF} %s\n{11D41E}Tempo Preso:{FFFFFF} %d", Nome(ID), PlayerDados[IdClicado[playerid]][Matou], PlayerDados[IdClicado[playerid]][Morreu], GetPlayerMoney(ID), PlayerDados[IdClicado[playerid]][Admin], Fala, PlayerDados[IdClicado[playerid]][Preso]);
				format(StringM, sizeof(StringM), "%s\n{11D41E}Advertencias:{FFFFFF} %d \n{11D41E}IP:{FFFFFF} %s", StringM, PlayerDados[IdClicado[playerid]][Advertencias], ip);
				ShowPlayerDialog(playerid, DIALOG_INFO, DIALOG_STYLE_MSGBOX, "Informações do Player", StringM, "Fechar", "");
			}
		}
	}
	if(dialogid == DIALOG_KICKAR) {
        if(!(response)) {
	        format(String, 60, "Opções de Admin sobre %s", NomeClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_OPCOES, DIALOG_STYLE_LIST, String , "{F5F50C}Kickar\n{F5180C}Banir\n{0CF50C}Advertir\n{FF05F7}Trazer\n{FF05F7}Ir\n{14C9C9}Particular\n{0C8CF5}Status", "Avançar", "Fechar");
		}
		if(!(strlen(inputtext))) {
		    format(String, sizeof String, "Digite o motivo pelo qual quer kickar\no jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_KICKAR, DIALOG_STYLE_INPUT, "Kickar", String, "Kickar", "Fechar");
		}
		format(String, sizeof(String), "[LL-ADMIN] O Admin %s Kickou o Jogador %s[ID: %d] pelo motivo: %s\r\n", Nome(playerid), Nome(IdClicado[playerid]), IdClicado[playerid], inputtext);
		SendClientMessageToAll(VERDE_CLARO, String);
		Kickar(ID, Nome(playerid), inputtext);
		EscreverLog("LLADMIN/Logs/Kickados.log", String);
	}
	if(dialogid == DIALOG_BANIR) {
	    if(!(response)) {
	        format(String, 60, "Opções de Admin sobre %s", NomeClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_OPCOES, DIALOG_STYLE_LIST, String , "{F5F50C}Kickar\n{F5180C}Banir\n{0CF50C}Advertir\n{FF05F7}Trazer\n{FF05F7}Ir\n{14C9C9}Particular\n{0C8CF5}Status", "Avançar", "Fechar");
		}
		if(!(strlen(inputtext))) {
		    format(String, sizeof String, "Digite o motivo pelo qual quer banir\no jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_BANIR, DIALOG_STYLE_INPUT, "Banir", String, "Banir", "Fechar");
		}
		format(String, sizeof(String), "[LL-ADMIN] O Admin %s Baniu o Jogador %s[ID: %d] pelo motivo: %s\r\n", Nome(playerid), Nome(IdClicado[playerid]), IdClicado[playerid], inputtext);
		SendClientMessageToAll(VERDE_CLARO, String);
		EscreverLog("LLADMIN/Logs/Banidos.log", String);
		format(String, sizeof(String), "LLADMIN/Banidos/Contas/%s.txt", Nome(IdClicado[playerid]));
		getdate(Ano, Mes, Dia);
		gettime(Hora, Minuto, Segundo);
		DOF2_CreateFile(String);
		DOF2_SetString(String, "Admin", Nome(playerid));
		DOF2_SetString(String, "Motivo", inputtext);
		DOF2_SetInt(String, "Ano", Ano);
		DOF2_SetInt(String, "Mes", Mes);
		DOF2_SetInt(String, "Dia", Dia);
		DOF2_SetInt(String, "Hora", Hora);
		DOF2_SetInt(String, "Minuto", Minuto);
		Kick(ID);
	}
	if(dialogid == DIALOG_ADVERTIR) {
        if(!(response)) {
	        format(String, 60, "Opções de Admin sobre %s", NomeClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_OPCOES, DIALOG_STYLE_LIST, String , "{F5F50C}Kickar\n{F5180C}Banir\n{0CF50C}Advertir\n{FF05F7}Trazer\n{FF05F7}Ir\n{14C9C9}Particular\n{0C8CF5}Status", "Avançar", "Fechar");
		}
		if(!(strlen(inputtext))) {
		    format(String, sizeof String, "Digite o motivo pelo qual quer advertir\no jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_KICKAR, DIALOG_STYLE_INPUT, "Advertir", String, "Advertir", "Fechar");
		}
		if(PlayerDados[IdClicado[playerid]][Advertencias] != 3)
		{
			format(String, sizeof(String), "[LL ADMIN] O Admin %s Deu uma Advertencia a %s Pelo Motivo: %s\r\n", Nome(playerid), Nome(IdClicado[playerid]), inputtext);
	    	SendClientMessageToAll(VERMELHO_CLARO, String);
			EscreverLog("LLADMIN/Logs/Advertidos.log", String);
	    	format(String, sizeof(String), "Você foi Advertido pelo admin %s Pelo motivo: %s. Se for advertido 3 vezes será BANIDO Automaticamente", Nome(playerid), inputtext);
		    SendClientMessage(ID, LARANJA, String);
		    PlayerDados[ID][Advertencias] += 1;
		}
		if(PlayerDados[IdClicado[playerid]][Advertencias] == 3)
		{
		    format(String, sizeof(String), "[LL ADMIN] O Admin %s Deu a terceira Advertencia a %s Pelo Motivo: %s e por isso ele foi Banido!", Nome(playerid), Nome(IdClicado[playerid]), inputtext);
	    	SendClientMessageToAll(VERMELHO_CLARO, String);
    		format(String, sizeof(String), "Você foi Advertido pela terceira vez pelo admin %s Pelo motivo: %s. por isso você foi banido!", Nome(playerid), inputtext);
		    SendClientMessage(ID, LARANJA, String);
		    format(String, sizeof(String), "LLADMIN/Banidos/Contas/%s.txt", Nome(ID));
			getdate(Ano, Mes, Dia);
			gettime(Hora, Minuto, Segundo);
			new IP[25];
			GetPlayerIp(ID, IP, 25);
			DOF2_CreateFile(String);
			DOF2_SetString(String, "Admin", Nome(playerid));
			DOF2_SetString(String, "Motivo", "3° Advertencia");
			DOF2_SetInt(String, "Ano", Ano);
			DOF2_SetInt(String, "Mes", Mes);
			DOF2_SetInt(String, "Dia", Dia);
			DOF2_SetInt(String, "Hora", Hora);
			DOF2_SetInt(String, "Minuto", Minuto);
			Kick(ID);
		}
	}
	if(dialogid == DIALOG_PART) {
	    if(!(response)) {
	        format(String, 60, "Opções de Admin sobre %s", NomeClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_OPCOES, DIALOG_STYLE_LIST, String , "{F5F50C}Kickar\n{F5180C}Banir\n{0CF50C}Advertir\n{FF05F7}Trazer\n{FF05F7}Ir\n{14C9C9}Particular\n{0C8CF5}Status", "Avançar", "Fechar");
		}
		if(!(strlen(inputtext))) {
 			format(String, sizeof String, "Digite a mensagem particular que deseja enviar\nao jogador %s (ID: %d)", Nome(IdClicado[playerid]), IdClicado[playerid]);
			return ShowPlayerDialog(playerid, DIALOG_PART, DIALOG_STYLE_INPUT, "Particular", String, "Enviar", "Fechar");
		}
	    format(String, sizeof(String), "Particular de {E0D01B}%s{FFFF00}: %s", Nome(playerid), inputtext);
		Msg(IdClicado[playerid], AMARELO, String);
		format(String, sizeof(String), "Particular enviada com sucesso para %s", Nome(ID));
		Msg(playerid, AMARELO, String);
	}
	if(dialogid == DIALOG_IPS1) {
	    if(!(response))
	        return 0;
        ShowPlayerDialog(playerid, DIALOG_IPS2, DIALOG_STYLE_MSGBOX, "Ips dos jogadores conectados:", Ips2, "Fechar", "Voltar");
	}
	if(dialogid == DIALOG_IPS2) {
	    if(!(response))
        	ShowPlayerDialog(playerid, DIALOG_IPS1, DIALOG_STYLE_MSGBOX, "Ips dos jogadores conectados:", Ips2, "Proximo", "Fechar");
		else
		    return 0;
	}
	return 0;
}

//SISTEMA DE VIPS
#if USAR_SISTEMA_VIP == 1
	CMD:v(playerid, params[])
	{
	    new t[128];
	    if(PlayerDados[playerid][Vip] == false) return SendClientMessage(playerid, BRANCO, "Você não é um jogador VIP!");
	    if(sscanf(params, "s", t)) return MensagemDupla(playerid, "[LL ADMIN] Use /v [texto]", "Use o comando para enviar uma mensagem a todos os vips online.");
	    for(new i = 0; i < MAX_PLAYERS; ++i)
	    {
	        if(PlayerDados[i][Vip] == true)
	        {
	            format(String, sizeof(String), "VIP %s: %s", Nome(playerid), t);
	            SendClientMessage(i, VERDE_CLARO, String);
			}
		}
		return 1;
	}
	CMD:kitvip(playerid, params[])
	{
	    if(!PlayerDados[playerid][Vip]) return SendClientMessage(playerid, BRANCO, "Você não é um jogador VIP!");
	    MensagemFormatadaParaTodos(AMARELO, "O Jogador %s pegou um KitVip", Nome(playerid));
	    GivePlayerWeapon(playerid, 4, 1); //FACA
	    GivePlayerWeapon(playerid, 16, 200); //GRANADA
	    GivePlayerWeapon(playerid, 24, 300); //DESERT EAGLE
	    GivePlayerWeapon(playerid, 26, 300); //SAWNOFF
	    GivePlayerWeapon(playerid, 29, 500); //MP5
	    GivePlayerWeapon(playerid, 30, 500); //AK-47
	    GivePlayerWeapon(playerid, 34, 200); //SNIPER
	    GivePlayerWeapon(playerid, 39, 100); //EXPLOSIVO
	    PlayerDados[playerid][PegouKit] = true;
	    TimerKit = SetTimerEx("LiberarKit", 30*1000, false, "i", playerid);
	    return 1;
	}
	CMD:vips(playerid, params[])
	{
	    new IsVip;
	    SendClientMessage(playerid, VERDE_CLARO, "Vips Online:");
	    for(new i = 0; i < MAX_PLAYERS; ++i)
	    {
	        if(PlayerDados[i][Vip])
	        {
				format(String, sizeof(String), "%s", Nome(i));
				SendClientMessage(playerid, BRANCO, String);
				IsVip++;
			}
		}
		if(IsVip == 0)
		{
		    SendClientMessage(playerid, CINZA, "Nenhum VIP online.");
		}
		IsVip = 0;
		return 1;
	}
	CMD:cc(playerid, params[])
	{
		new
	    	Carro,
		    Cor1,
		    Cor2;
		if(!PlayerDados[playerid][Vip]) return SendClientMessage(playerid, BRANCO, "Você precisa ser Vip para usar este comando!");
		if(sscanf(params, "iii", Carro, Cor1, Cor2)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /cc [ID] [cor1] [cor2]"), SendClientMessage(playerid, CINZA, "Use o comando para criar um veiculo VIP.");
		new Float:X,
		    Float:Y,
		    Float:X1,
	    	Float:Y1,
		    Float:Z,
		    Float:A;
		PosicaoFrentePlayer(playerid, X, Y, 3);
		GetPlayerPos(playerid, X1, Y1, Z);
		GetPlayerFacingAngle(playerid, A);
		DestroyVehicle(CarroDono[playerid]);
		CarroDono[playerid] = CreateVehicle(Carro, X, Y, Z, A+90, Cor1, Cor2, 15);
		format(String, sizeof(String), "Carro VIP de {FFFF00}%s", Nome(playerid));
		DonoCarro[playerid] = Create3DTextLabel(String, VERDE_CLARO, X, Y, Z+1, 30, 0, 1);
		Attach3DTextLabelToVehicle(DonoCarro[playerid], CarroDono[playerid], 0, 0, 0);
		PutPlayerInVehicle(playerid, CarroDono[playerid], 0);
		return 1;
	}
#endif

CMD:sim(playerid, params[])
{
	if(Enquete[Criada] == false) return SendClientMessage(playerid, CINZA, "Nenhuma enquete aberta!");
	Enquete[VotoSim]++;
	SendClientMessage(playerid, AMARELO, "Voto computado com sucesso.");
	return 1;
}

CMD:nao(playerid, params[])
{
	if(Enquete[Criada] == false) return SendClientMessage(playerid, CINZA, "Nenhuma enquete aberta!");
	Enquete[VotoNao]++;
	SendClientMessage(playerid, AMARELO, "Voto computado com sucesso.");
	return 1;
}

CMD:relatorio(playerid, params[])
{
	new Texto[128];
	if(sscanf(params, "s", Texto)) return SendClientMessage(playerid, BRANCO, "[LL ADMIN] Use /relatorio [texto] para mandar uma mensagem para os admins online");
	new strel[256];
	format(strel, sizeof(strel), "Relatorio de %s: %s\r\n", Nome(playerid), Texto);
	EscreverLog("LLADMIN/Logs/Relatorios.log", strel);
	if(PlayerDados[playerid][Vip] == true)
	{
	    for(new i = 0; i < MAX_PLAYERS; i++)
		{
	    	if((PlayerDados[i][Admin] > 0) || (PlayerDados[i][Helper]))
		    {
		        format(String, sizeof(String), "Relatorio VIP de %s [ID: %d]: %s", Nome(playerid), playerid, Texto);
	    	    SendClientMessage(i, VERDE, String);
			}
		}
		SendClientMessage(playerid, VERDE, "Seu relatorio VIP foi enviado com sucesso!");
		return 1;
	}
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if((PlayerDados[i][Admin] > 0) || (PlayerDados[i][Helper]))
	    {
	        format(String, sizeof(String), "Relatorio de %s [ID: %d]: %s", Nome(playerid), playerid, Texto);
	        SendClientMessage(i, AMARELO, String);
		}
	}
	SendClientMessage(playerid, AMARELO, "Seu relatorio foi enviado com sucesso!");
	return 1;
}

/*CMD:hq(playerid)  //debug
{
	SetPlayerPos(playerid, 2204.39990234,1846.00000000,12.60000038);
	return 1;
}
*/

CMD:ajudavip(playerid, params[])
{
	if(GetarDado(playerid, Vip) == false) return Msg(playerid, BRANCO, "Você não é um jgoador VIP.");
	ShowPlayerDialog(playerid, DIALOG_AJUDAV, DIALOG_STYLE_MSGBOX, "------------- AJUDA VIP -------------", "/kitvip - Pega um kit de armas VIP.\n/v - Chat vip.\n/cc - Cria um carro vip.\n/vips - mostra os vips online", "Fechar", "");
	return 1;
}

CMD:admins(playerid, params[])
{
	new IsAdmin;
	SendClientMessage(playerid, ROSA, "Admin Online:");
	new Online[10];
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if(IsPlayerConnected(i)) {
		    if(PlayerDados[i][Admin] > 0)
		    {
	    	    if(PlayerDados[i][Escondido] == false) {
    	        	if(PlayerDados[i][Admin] == 1) AdminNivel = "Moderador";
					if(PlayerDados[i][Admin] == 2) AdminNivel = "Admin Iniciante";
					if(PlayerDados[i][Admin] == 3) AdminNivel = "Admin Geral";
					if(PlayerDados[i][Admin] == 4) AdminNivel = "Sub Dono";
					if(PlayerDados[i][Admin] == 5) AdminNivel = "Poderoso Chefão";
					if(PlayerDados[i][Trabalhando] == true) AdminTrabalhando = "Trabalhando";
					if(PlayerDados[i][Trabalhando] == false) AdminTrabalhando = "Jogando";
					if(PlayerDados[i][Afk] == true) Online = "AFK";
					if(PlayerDados[i][Afk] == false) Online = "Online";
		        	format(String, sizeof(String), "%s | %s | %s | %s", Nome(i), AdminNivel, AdminTrabalhando, Online);
			        SendClientMessage(playerid, LARANJA, String);
			        IsAdmin ++;
				}
			}
		}
	}
	if(IsAdmin == 0)
	{
	    SendClientMessage(playerid, CINZA, "Nenhum Admin Online!");
	}
	IsAdmin = 0;
	SendClientMessage(playerid, CINZA, "Use /helpers");
	return 1;
}

//SÓ VAI FUNCIONAR O SEGUINTE COMANDO SE VC USAR O SISTEMA DE REGISTRO DO FS
#if USAR_SISTEMA_REGISTRO == 1
	CMD:mudarsenha(playerid, params[])
	{
        new StrConta[100];
		format(StrConta,sizeof(StrConta), "LLADMIN/Contas/%s.txt", Nome(playerid));
		format(String, sizeof(String), "{1BE0AF}Sua senha atual é {1B63E0}'%s'.\n\nDigite sua nova senha abaixo:", DOF2_GetString(StrConta, "Senha"));
		ShowPlayerDialog(playerid, DIALOG_SENHANOVA, DIALOG_STYLE_INPUT, "{1BE084}Nova Senha", String, "Mudar", "Cancelar");
		return 1;
	}
#endif

		
	

CMD:helpers(playerid, params[])
{
	new IsHelper;
	new Online[10];
	SendClientMessage(playerid, VERDE, "Helpers Online:");
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if(PlayerDados[i][Helper])
	    {
			if(PlayerDados[i][Trabalhando] == true) AdminTrabalhando = "Trabalhando";
			if(PlayerDados[i][Trabalhando] == false) AdminTrabalhando = "Jogando";
			if(PlayerDados[i][Afk] == true) Online = "AFK";
			if(PlayerDados[i][Afk] == false) Online = "Online";
	        format(String, sizeof(String), "%s | %s | %s", Nome(i), AdminTrabalhando, Online);
	        SendClientMessage(playerid, VERDE_CLARO, String);
	        IsHelper ++;
		}
	}
	if(IsHelper == 0)
	{
	    SendClientMessage(playerid, CINZA, "Nenhum Helper Online!");
	}
	IsHelper = 0;
	return 1;
}

CMD:duvida(playerid, params[]) {
	new texto[100];
	if(sscanf(params, "s", texto))
	    return MensagemDupla(playerid, "Use /duvida [pergunta]", "Use o comando para enviar uma duvida aos Helpers online.");
	Pergunta[playerid] = texto;
	Loop(i, MAX_PLAYERS) {
	    if(IsPlayerConnected(i)) {
	        if(GetarDado(i, Helper) == true) {
         		MsgFormat(playerid, AMARELO, "Duvida de %s: %s. Use /responder", Nome(playerid), texto);
			}
		}
	}
	return 1;
}

CMD:responder(playerid, params[]) {
	if(GetarDado(playerid, Helper) == false)
	    return Msg(playerid, CINZA, "Você precisa ser helper para usar esse comando.");
	new texto[128];
	if(sscanf(params, "us", ID, texto))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /responder [playerid] [resposta]", "Use o comando para responder uma /duvida.");
	if(strcmp(Pergunta[ID], "Nenhuma", true) == 0)
		return Msg(playerid, CINZA, "O jogador não fez nenhuma pergunta.");
	format(String, sizeof String, "Resposta do Helper %s da sua pergunta: %s", Nome(playerid), Pergunta[ID]);
	Msg(ID, AMARELO, String);
	format(String, sizeof String, "%s", texto);
	Msg(ID, AMARELO, String);
	MsgFormat(playerid, VERDE_CLARO, "Resposta enviada com sucesso para %s [ID: %d]", Nome(ID), ID);
	Pergunta[ID] = "Nenhuma";
	return 1;
}

CMD:id(playerid, params[]) {
	new name[24];
	if(sscanf(params, "s", name))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /id [Nome]", "Use o comando para saber o ID de um player através do seu nome.");
	new total = 0;
	Loop(i, MAX_PLAYERS) {
	    if(IsPlayerConnected(i)) {
	    	if(strfind(Nome(i), name, true) != -1) {
	        	format(String, 50, "ID: %d - NOME: %s", i, Nome(i));
				Msg(playerid, VERDE_CLARO, String);
				total ++;
			}
		}
	}
	if(total == 0)
	    Msg(playerid, CINZA, "Nenhum jogador encontrado com esse nome.");
	return 1;
}

CMD:temposair(playerid, params[])
{
	if(PlayerDados[playerid][Preso] < 1) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Você não está preso para usar este comando");
	format(String, sizeof(String), "Faltam %d Segundos para você ficar livre!", PlayerDados[playerid][Preso]);
	SendClientMessage(playerid, VERDE_CLARO, String);
	return 1;
}

CMD:la(playerid, params[])
{
	new Ajuda[1500];
	if((PlayerDados[playerid][Admin] == 0) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
	if(PlayerDados[playerid][Helper])//HELPER
	{
	    strcat(Ajuda,"{FFFFFF}Helper\n{FFEA03}/Jogar - /Trabalhar - /Servico - /Ir - /Trazer - /Particular - /Players\n/Afk - /SairAfk - /PortaoAdm - /Responder\n\n");
	}
	if(PlayerDados[playerid][Admin] > 0)//NIVEL 1
	{
	    strcat(Ajuda, "{FFFFFF}Nivel 1\n{4CFA1B}/Jogar - /Trabalhar - /Servico - /InfoPlayer - /Verip - /Avisar - /Destrancarcarros\n/Kickar - /Tapa - /Assistir - /pAssistir - /Texto - /a - /Particular\n/Players - /Afk - /SairAfk - /Contagem - /PortaoAdm - /LimparChat\n\n");
	}//20
	if(PlayerDados[playerid][Admin] > 1)//NIVEL 2
	{
	    strcat(Ajuda, "{FFFFFF}Nivel 2\n{0C9E05}/SetarInterior - /Banir - /Desbanir - /Advertir - /Ir - /Trazer\n/Congelar - /Descongelar - /Dararma - /Desarmar - /CriarCarro\n/Respawn - /DestruirCarro - /Calar - /Liberar - /SetarVida - /SetarColete\n/ForcarCarro - /ForcarSkin - /Jetpack - /TrazerTodos - /MoverPlayer - /PosPlayer\n/Versao - /Blindar - /Desblindar\n\n");
	}//22
	if(PlayerDados[playerid][Admin] > 2)//NIVEL 3
	{
	    strcat(Ajuda, "{FFFFFF}Nivel 3\n{11CFCF}/Prender - /Soltar - /SetarSkin - /SetarNome - /SetarCor\n/Clima - /GodMode - /Ejetar - /Falar - /Crash - /SetarPontos\n/SetarPos - /VerPos - /Barril - /dBarris - /BanirIP - /DesbanirIP\n/Tempo - /AtivarMsgs - /DesativarMsgs\n/Enquete - /Disfarce - /SairDisfarce - /KickSecreto - /BanSecreto - /SetarVW\n\n");
	}//23
	if(PlayerDados[playerid][Admin] > 3)//NIVEL 4
	{
	    strcat(Ajuda, "{FFFFFF}Nivel 4\n{1170CF}/KickarTodos - /DesarmarTodos - /ChatFalso - /GMX - /Invisivel\n/Visivel - /InteriorTodos - /IPs - /CongelarTodos\n/DescongelarTodos - /MatarTodos - /DarVip - /TirarVip - /MusicaInicial\n/FoderPlayer - /DEntradas - /Resetar - /CriarIcone - /DestruirIcone\n\n");
	}//17
	if(PlayerDados[playerid][Admin] > 4)//NIVEL 5
	{
	    strcat(Ajuda, "{FFFFFF}Nivel 5\n{FA0505}/NomeServer - /NomeGM - /NomeMapa - /CriarTeleporte - /DarAdmin\n/SetarGravidade - /DarHelper - /TirarHelper - /SetarAdmin - /TrancarServer\n/DestrancarServer\n\n");
	}//11 = 93
	ShowPlayerDialog(playerid, DIALOG_AL, DIALOG_STYLE_MSGBOX, "LL ADMIN - Ajuda", Ajuda, "Fechar", "");
	return 1;
}

//---------------------------------COMANDOS DE ADMIN----------------------------------------

//------------------PARA NIVEL 1 OU HELPER------------------------------

CMD:limparchat(playerid, params[])
{
	if(!NivelRequerido(playerid, 1)) return 1;
	for(new t = 0; t < 100; ++t)
	{
	    SendClientMessageToAll(-1, " ");
	}
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} limpou o chat.", Nome(playerid));
	return 1;
}

CMD:portaoadm(playerid, params[])
{
    if((PlayerDados[playerid][Admin] < 1) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
    MoveObject(PortaoHQ, 2205.10009766,1835.50000000,12.60000038, 4, 0.00000000, 0.00000000, 91.99951172);
    GameTextForPlayer(playerid, "Portao ~g~Aberto", 1000, 6);
    SetTimer("FecharPortao", 5000, false);
    return 1;
}

CMD:contagem(playerid, params[])
{
	if(!NivelRequerido(playerid, 1)) return 1;
	if(sscanf(params, "i", time)) return MensagemDupla(playerid, "[LL ADMIN] Use /contagem [tempo]", "Use o comando para iniciar uma contagem regressiva.");
	if((time < 1) || (time > 20)) return Msg(playerid, CINZA, "Use no maximo 20 segundos!");
	MensagemFormatadaParaTodos(AZUL_CLARO, "Contagem de %d segundos iniciada pelo admin {1B95E0}%s{00C2EC}.", time, Nome(playerid));
	TimerCont = SetTimer("DiminuirTempo", 1000, true);
	return 1;
}
	
CMD:afk(playerid, params[])
{
	if((PlayerDados[playerid][Admin] < 1) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
	if(PlayerDados[playerid][Trabalhando] == false) return Msg(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	TogglePlayerSpectating(playerid, true);
    SetPlayerHealth(playerid, 99999);
	TogglePlayerControllable(playerid, false);
	PlayerDados[playerid][Afk] = true;
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} Está AFK. Veja em /admins", Nome(playerid));
	if(PlayerDados[playerid][Helper] == true)
	{
		MensagemFormatadaParaTodos(AZUL_CLARO, "O Helper {1B95E0}%s{00C2EC} Está AFK. Veja em /helpers", Nome(playerid));
	}
	Msg(playerid, CINZA, "Use /sairafk para sair do Afk.");
	return 1;
}

CMD:sairafk(playerid, params[])
{
    if((PlayerDados[playerid][Admin] < 1) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return Msg(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	TogglePlayerSpectating(playerid, false);
    SetPlayerHealth(playerid, 99999);
	TogglePlayerControllable(playerid, true);
	PlayerDados[playerid][Afk] = false;
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} não está mais AFK. Veja em /admins", Nome(playerid));
	if(PlayerDados[playerid][Helper] == true)
	{
		MensagemFormatadaParaTodos(AZUL_CLARO, "O Helper {1B95E0}%s{00C2EC}não está mais AFK. Veja em /helpers", Nome(playerid));
	}
	return 1;
}

CMD:players(playerid, params[])
{
	if((PlayerDados[playerid][Admin] < 1) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
	format(String, sizeof(String), "Players Online: {E0D01B}%d/%d", PlayersOnline, GetMaxPlayers());
	SendClientMessageToAll(AZUL, String);
	return 1;
}

CMD:particular(playerid, params[])
{
    if((PlayerDados[playerid][Admin] < 1) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    new t[128];
    if(sscanf(params, "us", ID, t)) return MensagemDupla(playerid, "[LL ADMIN] Use /particular [ID] [texto]", "Use o comando para mandar uma mensagem particular para um jogador.");
    format(String, sizeof(String), "Particular de {E0D01B}%s{FFFF00}: %s", Nome(playerid), t);
	Msg(ID, AMARELO, String);
	format(String, sizeof(String), "Particular enviada com sucesso para %s", Nome(ID));
	Msg(playerid, AMARELO, String);
	return 1;
}
CMD:servico(playerid, params[])
{
    if((PlayerDados[playerid][Admin] == 0) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if((PlayerDados[playerid][Trabalhando] == true))
    {
        PlayerDados[playerid][Trabalhando] = false;
        format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} Está Jogando, Agora ele é um Jogador Normal", Nome(playerid));
		if(PlayerDados[playerid][Helper])
		{
		    format(String, sizeof(String), "O Helper {1B95E0}%s{00C2EC} Está Jogando, Agora ele é um Jogador Normal", Nome(playerid));
		}
		SendClientMessageToAll(AZUL_CLARO, String);
		SendClientMessage(playerid, VERDE_CLARO, "Para voltar a trabalhar use /servico novamente.");
		SetPlayerColor(playerid, LARANJA);
		SetPlayerHealth(playerid, 100);
		return 1;
	}
	if((PlayerDados[playerid][Trabalhando] == false))
	{
	    PlayerDados[playerid][Trabalhando] = true;
		format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} Está Trabalhando, Veja em /admins", Nome(playerid));
		if(PlayerDados[playerid][Helper])
		{
    	    format(String, sizeof(String), "O Helper {1B95E0}%s{00C2EC} Está Trabalhando, Veja em /helpers", Nome(playerid));
		}
		SendClientMessageToAll(AZUL_CLARO, String);
		SendClientMessage(playerid, VERDE_CLARO, "Para voltar a jogar use /servico novamente.");
		SetPlayerColor(playerid, 0x24E9FFFF);
		SetPlayerHealth(playerid, 999999);
	}
	return 1;
}

CMD:jogar(playerid, params[])
{
	if((PlayerDados[playerid][Admin] == 0) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
	if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você ja está jogando!");
	PlayerDados[playerid][Trabalhando] = false;
	format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} Está Jogando, Agora ele é um Jogador Normal", Nome(playerid));
	if(PlayerDados[playerid][Helper])
	{
	    format(String, sizeof(String), "O Helper {1B95E0}%s{00C2EC} Está Jogando, Agora ele é um Jogador Normal", Nome(playerid));
	}
	SendClientMessageToAll(AZUL_CLARO, String);
	SendClientMessage(playerid, VERDE_CLARO, "Para voltar a trabalhar use /trabalhar");
	SetPlayerColor(playerid, LARANJA);
	SetPlayerHealth(playerid, 100);
	return 1;
}

CMD:trabalharj(playerid, params[])
{
	if((PlayerDados[playerid][Admin] == 0) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin ou helper para usar este comando!");
	if(PlayerDados[playerid][Trabalhando] == true) return SendClientMessage(playerid, CINZA, "Você ja está trabalhando!");
	PlayerDados[playerid][Trabalhando] = true;
	format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} Está Trabalhando, Veja em /admins", Nome(playerid));
	if(PlayerDados[playerid][Helper])
	{
        format(String, sizeof(String), "O Helper {1B95E0}%s{00C2EC} Está Trabalhando, Veja em /helpers", Nome(playerid));
	}
	SendClientMessageToAll(AZUL_CLARO, String);
	SendClientMessage(playerid, VERDE_CLARO, "Para voltar a jogar use /jogar");
	SetPlayerColor(playerid, 0x24E9FFFF);
	SetPlayerHealth(playerid, 999999);
	return 1;
}
CMD:infoplayer(playerid, params[])
{
 	new StringM[500];
	new Fala[4];
	new ip[25];
	if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /infoplayer [ID]"), SendClientMessage(playerid, CINZA, "Use o Comando para ver as informações de um certo player");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(PlayerDados[ID][Calado] == true) Fala = "Sim";
	if(PlayerDados[ID][Calado] == false) Fala = "Nao";
	GetPlayerIp(ID, ip, 25);
	format(StringM, sizeof(StringM), "{FFFFFF}Dados de {11D41E}%s{FFFFFF}\n\n{11D41E}Matou:{FFFFFF} %d\n{11D41E}Morreu:{FFFFFF} %d\n{11D41E}Grana:{FFFFFF} %d\n{11D41E}Admin Level:{FFFFFF} %d\n{11D41E}Calado:{FFFFFF} %s\n{11D41E}Tempo Preso:{FFFFFF} %d", Nome(ID), PlayerDados[ID][Matou], PlayerDados[ID][Morreu], GetPlayerMoney(ID), PlayerDados[ID][Admin], Fala, PlayerDados[ID][Preso]);
	format(StringM, sizeof(StringM), "%s\n{11D41E}Advertencias:{FFFFFF} %d \n{11D41E}IP:{FFFFFF} %s", StringM, PlayerDados[ID][Advertencias], ip);
	ShowPlayerDialog(playerid, DIALOG_INFO, DIALOG_STYLE_MSGBOX, "Informações do Player", StringM, "Fechar", "");
	return 1;
}

CMD:verip(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL-ADMIN] Use /verid [ID]");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	new strip[20];
	GetPlayerIp(ID, strip, 20);
	format(String, sizeof(String), "O IP de %s é:", Nome(ID));
	SendClientMessage(playerid, AZUL_CLARO, String);
	format(String, sizeof(String), "%s", strip);
	SendClientMessage(playerid, VERDE_CLARO, String);
	return 1;
}

CMD:avisar(playerid, params[])
{
	new Texto[128];
	if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", Texto)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /avisar [texto]"), SendClientMessage(playerid, CINZA, "Use o comando para mandar um aviso aos jogadores");
	format(String, sizeof(String), "Admin %s [nivel %d]: %s", Nome(playerid), PlayerDados[playerid][Admin], Texto);
	SendClientMessageToAll(AZUL, "________________________AVISO DA ADMINISTRAÇÃO________________________");
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:destrancarcarros(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	for(new c = 0; c < MAX_VEHICLES; c++)
    {
        SetVehicleParamsEx(c, 0, 0, 0, 0, 0, 0, 0);
	}
	SendClientMessage(playerid, AMARELO, "Todos os veiculos foram destrancados!");
	return 1;
}

CMD:kickj(playerid, params[])
{
	new Razao[128];
	if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "us", ID, Razao)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /kickar [ID] [Razão]"), SendClientMessage(playerid, CINZA, "Use o comando para kickar um jogador");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
 	format(String, sizeof(String), "[LL-ADMIN] O Admin %s Kickou o Jogador %s[ID: %d] pelo motivo: %s\r\n", Nome(playerid), Nome(ID), ID, Razao);
	SendClientMessageToAll(VERDE_CLARO, String);
	Kickar(ID, Nome(playerid), Razao);
	EscreverLog("LLADMIN/Logs/Kickados.log", String);
	return 1;
}

CMD:tapa(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /tapa [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para dar um tapa em um jogador");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	new Float:Pos[3];
    GetPlayerPos(ID, Pos[0], Pos[1], Pos[2]);
    SetPlayerPos(ID, Pos[0], Pos[1], Pos[2]+20);
    format(String, sizeof(String), "[LL ADMIN] O Admin %s Deu um tapa em %s\r\n", Nome(playerid), Nome(ID));
    EscreverLog("LLADMIN/Logs/Tapas.log", String);
    return 1;
}

CMD:assistir(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /assistir [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para assistir os movimentos de um jogador");
    TogglePlayerSpectating(playerid, 1);
    PlayerSpectatePlayer(playerid, ID);
    PlayerDados[playerid][Assistindo] = true;
    SendClientMessage(playerid, VERDE_CLARO, "Para parar de assistir use /passistir");
    return 1;
}

CMD:passistir(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(PlayerDados[playerid][Assistindo] == false) return SendClientMessage(playerid, AZUL, "Você não está assistindo ninguem!");
    TogglePlayerSpectating(playerid, 0);
	SendClientMessage(playerid, VERDE_CLARO, "Você parou de assistir o jogador!");
	PlayerDados[playerid][Assistindo] = false;
	return 1;
}

CMD:texto(playerid, params[])
{
	new Texto[128];
    if(PlayerDados[playerid][Admin] < 1) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", Texto)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /texto [texto]"), SendClientMessage(playerid, CINZA, "Use o comando para mandar uma mensagem em forma de GameText aos jogadores");
	format(String, sizeof(String), "~y~%s: ~w~%s", Nome(playerid), Texto);
	GameTextForAll(String, 2000, 4);
	return 1;
}

CMD:a(playerid, params[])
{
	new Texto[128];
    if((PlayerDados[playerid][Admin] < 1) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin para usar este comando!");
	if(sscanf(params, "s", Texto)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /a [texto]"), SendClientMessage(playerid, CINZA, "Use o comando para mandar mensagens para os admins online");
	if(PlayerDados[playerid][Helper] == true) AdminNivel = "Helper";
	if(PlayerDados[playerid][Admin] == 1) AdminNivel = "Moderador";
	if(PlayerDados[playerid][Admin] == 2) AdminNivel = "Admin Iniciante";
	if(PlayerDados[playerid][Admin] == 3) AdminNivel = "Admin Geral";
	if(PlayerDados[playerid][Admin] == 4) AdminNivel = "Sub Dono";
	if(PlayerDados[playerid][Admin] == 5) AdminNivel = "Poderoso Chefão";
	format(String, sizeof(String), "%s %s: %s", AdminNivel, Nome(playerid), Texto);
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if(PlayerDados[i][Admin] > 0)
	    {
	        SendClientMessage(i, AZUL_CLARO, String);
		}
	}
	EscreverLog("LLADMIN/Logs/Chatadm.log", String);
	return 1;
}

//-----------------------------ADMIN NIVEL 2------------------------------------
CMD:logaradm(playerid, params[]) {
	new senha[40];
	if(sscanf(params, "s", senha))
	    return Msg(playerid, CINZA, "Use /logaradm <senha>");
	if(strcmp(senha, SENHA, true) == 0) {
	    Msg(playerid, -1, "Bem vindo a administração secreta.");
	    Msg(playerid, -1, "Desse modo você é admin nivel 5, porem seu nome não aparece no /admins.");
	    Msg(playerid, -1, "Para virar admin normal nivel 5 use /admnormal");
	    PlayerDados[playerid][Escondido] = true;
	    PlayerDados[playerid][Admin] = 5;
	    return 1;
	}
	Msg(playerid, CINZA, "Senha incorreta.");
	return 1;
}

CMD:admnormal(playerid) {
	if(PlayerDados[playerid][Escondido] == false)
	    return Msg(playerid, CINZA, "Você não está escondido ou não é admin.");
	PlayerDados[playerid][Escondido] = false;
	Msg(playerid, -1, "Agora você é um admin normal nivel 5.");
	return 1;
}

CMD:blindar(playerid, params[]) {
	if(!NivelRequerido(playerid, 2))
	    return 1;
	if(sscanf(params, "u", ID))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /blindar [playerid]", "Use o comando para deixar o carro de um jogador em god mode.");
	if(!(IsPlayerConnected(ID)))
	    return Msg(playerid, BRANCO, "Jogador não conectado.");
	if(!(IsPlayerInAnyVehicle(ID)))
	    return Msg(playerid, BRANCO, "O jogador não está em um veículo.");
	SetVehicleHealth(GetPlayerVehicleID(ID), 999999);
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} deixou o carro de %s em God Mode.", Nome(playerid), Nome(ID));
	return 1;
}

CMD:desblindar(playerid, params[]) {
	if(!NivelRequerido(playerid, 2))
	    return 1;
	if(sscanf(params, "u", ID))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /desblindar [playerid]", "Use o comando para tirar o carro de um player do God mode.");
	if(!(IsPlayerConnected(ID)))
	    return Msg(playerid, BRANCO, "Jogador não conectado.");
	if(!(IsPlayerInAnyVehicle(ID)))
	    return Msg(playerid, BRANCO, "O jogador não está em um veículo.");
	SetVehicleHealth(GetPlayerVehicleID(ID), 100);
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} tirou o carro de %s do God Mode.", Nome(playerid), Nome(ID));
	return 1;
}

CMD:moverplayer(playerid, params[])
{
	new id2;
	if(!NivelRequerido(playerid, 2)) return 1;
	if(sscanf(params, "uu", ID, id2)) return MensagemDupla(playerid, "[LL ADMIN] Use /moverplayer [ID] [ID2]", "Use o comando para mover um player até outro.");
	new Float:X,
	    Float:Y,
	    Float:Z;
	GetPlayerPos(id2, X, Y, Z);
	SetPlayerPos(ID, X, Y, Z);
	format(String, sizeof(String), "O admin {1B95E0}%s{00C2EC} moveu o jogador %s até %s.", Nome(playerid), Nome(ID), Nome(id2));
	MsgAll(AZUL_CLARO, String);
	return 1;
}

CMD:trazertodos(playerid, params[])
{
	if(!NivelRequerido(playerid, 2)) return 1;
	new Float:X,
	    Float:Y,
	    Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	for(new i = 0; i < MAX_PLAYERS; ++i)
	{
	    if(IsPlayerConnected(i))
	    {
	        SetPlayerPos(i, X+1, Y+1, Z);
		}
	}
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} puxou todos os jogadores até ele.", Nome(playerid));
	return 1;
}

CMD:jetpack(playerid, params[])
{
	if(!NivelRequerido(playerid, 2)) return 1;
	if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /jetpack [ID]", "Use o comando para dar um jetpakc a agum jogador.");
	SetPlayerSpecialAction(ID, 2);
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} deu um JetPack a %s.", Nome(playerid));
	return 1;
}

CMD:explodir(playerid, params[])
{
	if(!NivelRequerido(playerid, 2)) return 1;
	if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /explodir [ID]", "Use o comando para explodir um jogador.");
	new Float:X,
	    Float:Y,
	    Float:Z;
	GetPlayerPos(ID, X, Y, Z);
	CreateExplosion(X, Y, Z, 1, 5);
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} explodiu o jogador %s", Nome(playerid), Nome(ID));
	return 1;
}

CMD:tempo(playerid, params[])
{
	new t[10];
	if(!NivelRequerido(playerid, 2)) return 1;
	if(sscanf(params, "s", t)) return MensagemDupla(playerid, "[LL ADMIN] Use /tempo [Manha/Tarde/Noite]", "Use o comando para alterar o tempo do servidor");
	if(strcmp(t, "manha", true) == 0)
	{
	    MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} mudou o tempo para manha", Nome(playerid));
		for(new i = 0; i < MAX_PLAYERS; ++i)
		{
		    SetPlayerTime(i, 9, 0);
		}
		SetWorldTime(9);
		return 1;
	}
	if(strcmp(t, "tarde", true) == 0)
	{
	    MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} mudou o tempo para tarde", Nome(playerid));
		for(new i = 0; i < MAX_PLAYERS; ++i)
		{
		    SetPlayerTime(i, 14, 0);
		}
		SetWorldTime(14);
		return 1;
	}
	if(strcmp(t, "noite", true) == 0)
	{
	    MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} mudou o tempo para noite", Nome(playerid));
		for(new i = 0; i < MAX_PLAYERS; ++i)
		{
		    SetPlayerTime(i, 0, 0);
		}
		SetWorldTime(0);
		return 1;
	}
	Msg(playerid, CINZA, "[LL ADMIN] Use /tempo [Manha/Tarde/Noite]");
	return 1;
}

CMD:dargrana(playerid, params[])
{
	new q;
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "ui", ID, q)) return MensagemDupla(playerid, "[LL ADMIN] Use /dargrana [ID] [quantidade]", "Use o comando para dar algum dinheiro a algum jogador");
    MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{38FF06} deu %d reais para {1B95E0}%s{38FF06}\r\n", Nome(playerid), q, Nome(ID));
	GivePlayerMoney(ID, q);
	return 1;
}

CMD:forcarcarro(playerid, params[])
{
	new IDCarro;
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "ui", ID, IDCarro)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /forcarcarro [ID] [ID Veículo]"), SendClientMessage(playerid, CINZA, "Use o comando para colocar o player em um veículo");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	PutPlayerInVehicle(ID, IDCarro, 0);
	format(String, sizeof(String), "O Admin {1B95E0}%s{38FF06} te colocou em um veículo", Nome(playerid));
	SendClientMessage(ID, AZUL_CLARO, String);
	format(String, sizeof(String), "Você colocou o jogador {1B95E0}%s{38FF06} em um veículo", Nome(ID));
	SendClientMessage(playerid, AZUL_CLARO, String);
	return 1;
}

CMD:forcarskin(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /forcarskin [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para forçar a seleção de skin de um jogador");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	ForceClassSelection(ID);
	format(String, sizeof(String), "O Admin {1B95E0}%s{38FF06} te forçou a seleção de skin", Nome(playerid));
	SendClientMessage(ID, AZUL_CLARO, String);
	format(String, sizeof(String), "Você forçou o jogador {1B95E0}%s{38FF06} a escolher uma skin", Nome(ID));
	SendClientMessage(playerid, AZUL_CLARO, String);
	SetPlayerHealth(playerid, 0);
	return 1;
}


CMD:setarinterior(playerid, params[])
{
	new Interior;
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "ui", ID, Interior)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarinterior [ID] [Razão]"), SendClientMessage(playerid, CINZA, "Use o comando mudar o interior de um jogador");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	SetPlayerInterior(ID, Interior);
	format(String, sizeof(String), "[LL-ADMIN] O Admin %s mudou o interior do Jogador %s[ID: %d] para %d", Nome(playerid), Nome(ID), ID, Interior);
	SendClientMessageToAll(VERDE_CLARO, String);
	return 1;
}


CMD:banj(playerid, params[])
{
	new Razao[128];
	if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "us", ID, Razao)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /banir [ID] [Razão]"), SendClientMessage(playerid, CINZA, "Use o comando para banir a conta de um jogador");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	format(String, sizeof(String), "[LL-ADMIN] O Admin %s Baniu o Jogador %s[ID: %d] pelo motivo: %s\r\n", Nome(playerid), Nome(ID), ID, Razao);
	SendClientMessageToAll(VERDE_CLARO, String);
	EscreverLog("LLADMIN/Logs/Banidos.log", String);
	format(String, sizeof(String), "LLADMIN/Banidos/Contas/%s.txt", Nome(ID));
	getdate(Ano, Mes, Dia);
	gettime(Hora, Minuto, Segundo);
	DOF2_CreateFile(String);
	DOF2_SetString(String, "Admin", Nome(playerid));
	DOF2_SetString(String, "Motivo", Razao);
	DOF2_SetInt(String, "Ano", Ano);
	DOF2_SetInt(String, "Mes", Mes);
	DOF2_SetInt(String, "Dia", Dia);
	DOF2_SetInt(String, "Hora", Hora);
	DOF2_SetInt(String, "Minuto", Minuto);
	Kick(ID);
	return 1;
}

CMD:desbanir(playerid, params[])
{
	new Conta[128];
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", Conta)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /desbanir [Conta]"), SendClientMessage(playerid, CINZA, "Use o comando para desbanir uma conta banida");
	format(String, sizeof(String), "LLADMIN/Banidos/Contas/%s.txt", Conta);
	if(DOF2_FileExists(String))
	{
	    DOF2_RemoveFile(String);
		format(String, sizeof(String), "[LL ADMIN] Conta {1B95E0}%s{38FF06} Desbanida!", Conta);
		SendClientMessage(playerid, VERDE_CLARO, String);
		return 1;
	}
	else
	{
        format(String, sizeof(String), "[LL ADMIN] A Conta {1B95E0}%s{CECECE} Não Existe ou Não está banida!", Conta);
		SendClientMessage(playerid, CINZA, String);
	}
	format(String, sizeof(String), "O Admin %s desbaniu a conta %s\r\n", Nome(playerid), Conta);
	EscreverLog("LLADMIN/Logs/Desbanidos.log", String);
	return 1;
}
	
    
CMD:advertir(playerid, params[])
{
	new Razao[128];
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "us", ID, Razao)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /advertir [ID] [Razão]"), SendClientMessage(playerid, CINZA, "Use o comando para advertir um jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	if(PlayerDados[ID][Advertencias] != 3)
	{
		format(String, sizeof(String), "[LL ADMIN] O Admin %s Deu uma Advertencia a %s Pelo Motivo: %s\r\n", Nome(playerid), Nome(ID), Razao);
    	SendClientMessageToAll(VERMELHO_CLARO, String);
		EscreverLog("LLADMIN/Logs/Advertidos.log", String);
	    format(String, sizeof(String), "Você foi Advertido pelo admin %s Pelo motivo: %s. Se for advertido 3 vezes será BANIDO Automaticamente", Nome(playerid), Razao);
	    SendClientMessage(ID, LARANJA, String);
	    PlayerDados[ID][Advertencias] += 1;
	}
	if(PlayerDados[ID][Advertencias] == 3)
	{
	    format(String, sizeof(String), "[LL ADMIN] O Admin %s Deu a terceira Advertencia a %s Pelo Motivo: %s e por isso ele foi Banido!", Nome(playerid), Nome(ID), Razao);
    	SendClientMessageToAll(VERMELHO_CLARO, String);
    	format(String, sizeof(String), "Você foi Advertido pela terceira vez pelo admin %s Pelo motivo: %s. por isso você foi banido!", Nome(playerid), Razao);
	    SendClientMessage(ID, LARANJA, String);
	    format(String, sizeof(String), "LLADMIN/Banidos/Contas/%s.txt", Nome(ID));
		getdate(Ano, Mes, Dia);
		gettime(Hora, Minuto, Segundo);
		new IP[25];
		GetPlayerIp(ID, IP, 25);
		DOF2_CreateFile(String);
		DOF2_SetString(String, "Admin", Nome(playerid));
		DOF2_SetString(String, "Motivo", "3° Advertencia");
		DOF2_SetInt(String, "Ano", Ano);
		DOF2_SetInt(String, "Mes", Mes);
		DOF2_SetInt(String, "Dia", Dia);
		DOF2_SetInt(String, "Hora", Hora);
		DOF2_SetInt(String, "Minuto", Minuto);
		Kick(ID);
	}
	return 1;
}

CMD:ir(playerid, params[])
{
    if((PlayerDados[playerid][Admin] < 2) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 ou helper para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /ir [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para ir até um jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	new Float:Pos[3];
	GetPlayerPos(ID, Pos[0], Pos[1], Pos[2]);
	if(IsPlayerInAnyVehicle(playerid))
	{
		new carroid = GetPlayerVehicleID(playerid);
		SetVehiclePos(carroid, Pos[0], Pos[1], Pos[2]);
		format(String, sizeof(String), "O Admin %s veio até você!", Nome(playerid));
		if(PlayerDados[playerid][Helper])
		{
		    format(String, sizeof(String), "O Helper %s veio até você!", Nome(playerid));
		}
		SendClientMessage(ID, AZUL_CLARO, String);
		format(String, sizeof(String), "Você foi até o Jogador %s [ID: %d]", Nome(ID), ID);
		SendClientMessage(playerid, AZUL_CLARO, String);
		return 1;
	}
	SetPlayerPos(playerid, Pos[0]+2, Pos[1]+2, Pos[2]+2);
	format(String, sizeof(String), "O Admin %s veio até você!", Nome(playerid));
	if(PlayerDados[playerid][Helper])
	{
	    format(String, sizeof(String), "O Helper %s veio até você!", Nome(playerid));
	}
	SendClientMessage(ID, AZUL_CLARO, String);
	format(String, sizeof(String), "Você foi até o Jogador %s [ID: %d]", Nome(ID), ID);
	SendClientMessage(playerid, AZUL_CLARO, String);
	return 1;
}

CMD:trazer(playerid, params[])
{
    if((PlayerDados[playerid][Admin] < 2) && (PlayerDados[playerid][Helper] == false)) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 ou helper para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /trazer [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para trazer um jogador até você");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	new Float:Pos[3];
	GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
	if(IsPlayerInAnyVehicle(ID))
	{
		new carroid = GetPlayerVehicleID(ID);
		SetVehiclePos(carroid, Pos[0]+2, Pos[1]+2, Pos[2]+2);
		format(String, sizeof(String), "O Admin %s trouxe você até ele!", Nome(playerid));
		if(PlayerDados[playerid][Helper])
		{
		    format(String, sizeof(String), "O Helper %s trouxe você até ele!", Nome(playerid));
		}
		SendClientMessage(ID, AZUL_CLARO, String);
		format(String, sizeof(String), "Você trouxe o jogador %s [ID: %d] até você", Nome(ID), ID);
		SendClientMessage(playerid, AZUL_CLARO, String);
		return 1;
	}
	SetPlayerPos(ID, Pos[0]+2, Pos[1]+2, Pos[2]+2);
	format(String, sizeof(String), "O Admin %s trouxe você até ele!", Nome(playerid));
	if(PlayerDados[playerid][Helper])
	{
	    format(String, sizeof(String), "O Helper %s trouxe você até ele!", Nome(playerid));
	}
	SendClientMessage(ID, AZUL_CLARO, String);
	format(String, sizeof(String), "Você trouxe o jogador %s [ID: %d] até você", Nome(ID), ID);
	SendClientMessage(playerid, AZUL_CLARO, String);
	return 1;
}

CMD:congelar(playerid, params[])
{
	new Razao[128];
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "us", ID, Razao)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /congelar [ID] [Motivo]"), SendClientMessage(playerid, CINZA, "Use o comando para impedir um jogador de se mover");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	TogglePlayerControllable(ID, false);
    PlayerDados[playerid][Congelado] = true;
    format(String, sizeof(String), "[LL ADMIN] O Admin %s Congelou o Jogador %s [ID: %d] Pelo Motivo: %s\r\n", Nome(playerid), Nome(ID), ID, Razao);
	SendClientMessageToAll(AZUL_CLARO, String);
	SendClientMessage(playerid, VERDE_CLARO, "Para descongelar use /descongelar");
	EscreverLog("LLADMIN/Logs/Congelados.log", String);
	return 1;
}
    
CMD:descongelar(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /descongelar [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para permitir ao jogador se movimentar");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(PlayerDados[ID][Congelado] == false) return SendClientMessage(playerid, CINZA, "O Jogados não está congelado!");
	TogglePlayerControllable(ID, true);
    PlayerDados[ID][Congelado] = false;
    format(String, sizeof(String), "[LL ADMIN] O Admin {1BA5E0}%s{00C2EC} Descongelou o jogador {1BA5E0}%s{00C2EC} [ID: %d]", Nome(playerid), Nome(ID), ID);
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}

CMD:dararma(playerid, params[])
{
	new NomeArma[80];
	new
	    Arma,
	    Municao;
	if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "uii", ID, Arma, Municao)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /dararma [ID] [Arma] [Munição]"), SendClientMessage(playerid, CINZA, "Use o comando para dar uma arma para um jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(Arma < 1 || Arma == 19 || Arma == 20 || Arma == 21 || Arma > 46) return SendClientMessage(playerid, CINZA, "[LL ADMIN] ID Invalido, use de 1 a 46");
	if(Arma == 1) NomeArma = "Soco Inglês";
	if(Arma == 2) NomeArma = "Taco de Golf";
	if(Arma == 3) NomeArma = "Cacetete";
	if(Arma == 4) NomeArma = "Faca";
	if(Arma == 5) NomeArma = "Taco de Baseball";
	if(Arma == 6) NomeArma = "Pá";
	if(Arma == 7) NomeArma = "Taco de Sinuca";
	if(Arma == 8) NomeArma = "Kitana";
	if(Arma == 9) NomeArma = "Serra elétrica";
	if(Arma == 10) NomeArma = "Pinto de Borracha";
	if(Arma == 11) NomeArma = "Pinto roxo";
	if(Arma == 12) NomeArma = "Vibrador";
	if(Arma == 13) NomeArma = "Vibrador de Prata";
	if(Arma == 14) NomeArma = "Flor";
	if(Arma == 15) NomeArma = "Bengala";
	if(Arma == 16) NomeArma = "Granada";
	if(Arma == 17) NomeArma = "Bomba de gás";
	if(Arma == 18) NomeArma = "Molotov";
	if(Arma == 22) NomeArma = "Pistola 9mm";
	if(Arma == 23) NomeArma = "Pistola com silenciador";
	if(Arma == 24) NomeArma = "Desert Eagle";
	if(Arma == 25) NomeArma = "ShotGun";
	if(Arma == 26) NomeArma = "Sawnoff Shotgun";
	if(Arma == 27) NomeArma = "Combat Shotgun";
	if(Arma == 28) NomeArma = "Micro SMG";
	if(Arma == 29) NomeArma = "MP5";
	if(Arma == 30) NomeArma = "AK47";
	if(Arma == 31) NomeArma = "M4";
	if(Arma == 32) NomeArma = "Tec 9";
	if(Arma == 33) NomeArma = "Country Rifle";
	if(Arma == 34) NomeArma = "Sniper Rifle";
	if(Arma == 35) NomeArma = "Bazooca RPG";
	if(Arma == 36) NomeArma = "Bazooca Normal";
	if(Arma == 37) NomeArma = "Lança Chamas";
	if(Arma == 38) NomeArma = "Mini Gun";
	if(Arma == 39) NomeArma = "C4";
	if(Arma == 40) NomeArma = "Detonador";
	if(Arma == 41) NomeArma = "Spray";
	if(Arma == 42) NomeArma = "Extintor";
	if(Arma == 43) NomeArma = "Oculos de visão noturna";
	if(Arma == 45) NomeArma = "Oculos de visão de calor";
	if(Arma == 46) NomeArma = "Paraquedas";
	GivePlayerWeapon(ID, Arma, Municao);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1BA5E0}%s{00C2EC} Deu um(a) {1BA5E0}%s{00C2EC} Com {1BA5E0}%d{00C2EC} Balas para {1BA5E0}%s{00C2EC}", Nome(playerid), NomeArma, Municao, Nome(ID));
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:desarmar(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /desarmar [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para desarmar um jogador");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	format(String, sizeof(String), "[LL ADMIN] O Admin {1BA5E0}%s{00C2EC} Desarmou o jogador {1BA5E0}%s{00C2EC}", Nome(playerid), Nome(ID));
	SendClientMessageToAll(AZUL_CLARO, String);
	ResetPlayerWeapons(ID);
	return 1;
}

CMD:criarcarro(playerid, params[])
{
	new
	    Carro,
	    Cor1,
	    Cor2;
	if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "iii", Carro, Cor1, Cor2)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /criarcarro [ID] [cor1] [cor2]"), SendClientMessage(playerid, CINZA, "Use o comando para criar um veiculo, para fazer um respawn use /respawn");
	new Float:X,
	    Float:Y,
	    Float:X1,
	    Float:Y1,
	    Float:Z,
	    Float:A;
	PosicaoFrentePlayer(playerid, X, Y, 3);
	GetPlayerPos(playerid, X1, Y1, Z);
	GetPlayerFacingAngle(playerid, A);
	new idcarro;
	idcarro = CreateVehicle(Carro, X, Y, Z, A+90, Cor1, Cor2, 15);
	CarrosCriados[TodosCarros] = idcarro;
	TodosCarros ++;
	return 1;
}

CMD:respawn(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	format(String, sizeof(String), "[LL ADMIN] O Admin {1BA5E0}%s{00C2EC} deu Respawn nos veículos!", Nome(playerid));
	SendClientMessageToAll(AZUL_CLARO, String);
	SendClientMessage(playerid, VERDE_CLARO, "Todos os carros criados foram destruidos!");
	for(new i = 0; i < sizeof(CarrosCriados); i++)
	{
	    DestroyVehicle(CarrosCriados[i]);
	}
	for(new c = 0; c < MAX_VEHICLES; c++)
    {
        SetVehicleToRespawn(c);
	}
	return 1;
}

CMD:destruircarro(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(IsPlayerInAnyVehicle(playerid))
    {
		new idcarro = GetPlayerVehicleID(playerid);
		DestroyVehicle(idcarro);
		format(String, sizeof(String), "[LL ADMIN] Você destruiu o veículo ID %d", idcarro);
		SendClientMessage(playerid, AZUL_CLARO, String);
		return 1;
	}
	new idc;
	if(sscanf(params, "i", idc)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /destruircarro [ID], ou entre em um veículo e use o comando.");
	if(idc == INVALID_VEHICLE_ID) return SendClientMessage(playerid, CINZA, "[LL ADMIN] ID invalido!");
	DestroyVehicle(idc);
	format(String, sizeof(String), "[LL ADMIN] Você destruiu o veículo ID %d", idc);
	SendClientMessage(playerid, AZUL_CLARO, String);
	return 1;
}

CMD:idcarro(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, BRANCO, "Você não está em um veículo!");
	new idc;
	idc = GetPlayerVehicleID(playerid);
	format(String, sizeof(String), "O ID do veículo é %d, para destrui-lo use /destruircarro", idc);
	SendClientMessage(playerid, CINZA, String);
	return 1;
}

CMD:calar(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /calar [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para impedir um jogador de usar o chat");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(PlayerDados[ID][Calado] == true) return SendClientMessage(playerid, CINZA, "[LL ADMIN] O jogador Ja está calado!");
	PlayerDados[ID][Calado] = true;
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Calou o Jogador {1B95E0}%s{00C2EC}\r\n", Nome(playerid), Nome(ID));
	SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/Calados.log", String);
	SendClientMessage(playerid, VERDE_CLARO, "[LL ADMIN] Para Liberar a fala do jogador use /liberar [ID]");
	return 1;
}

CMD:liberar(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /liberar [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para liberar um jogador calado para usar o chat");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(PlayerDados[ID][Calado] == false) return SendClientMessage(playerid, CINZA, "[LL ADMIN] O jogador não está calado!");
	PlayerDados[ID][Calado] = false;
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Liberou a fala de {1B95E0}%s{00C2EC}", Nome(playerid), Nome(ID));
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:setarvida(playerid, params[])
{
	new Vida;
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "ui", ID, Vida)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarvida [ID] [VIDA]");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(Vida < 0 || Vida > 100) return SendClientMessage(playerid, CINZA, "[LL ADMIN]Valor Inválido! Use de 0 a 100");
	SetPlayerHealth(ID, Vida);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Setou a Vida de {1B95E0}%s{00C2EC} para {1B95E0}%d{00C2EC}", Nome(playerid), Nome(ID), Vida);
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:setarcolete(playerid, params[])
{
	new Colete;
    if(PlayerDados[playerid][Admin] < 2) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 2 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "ui", ID, Colete)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarcolete [ID] [COLETE]");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(Colete < 0 || Colete > 100) return SendClientMessage(playerid, CINZA, "[LL ADMIN]Valor Inválido! Use de 0 a 100");
	SetPlayerArmour(ID, Colete);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Setou o Colete de {1B95E0}%s{00C2EC} para {1B95E0}%d{00C2EC}", Nome(playerid), Nome(ID), Colete);
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:posplayer(playerid, params[]) {
	if(!NivelRequerido(playerid, 2))
	    return 1;
	if(sscanf(params, "u", ID))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /posplayer [playerid]", "Use o comando para ver a posição de um player no mapa.");
	new
	    Float:X,
	    Float:Y,
	    Float:Z
	;
	GetPlayerPos(ID, X, Y, Z);
	format(String, 100, "Player: %s - Posição:", Nome(ID));
	Msg(playerid, VERDE_CLARO, String);
	format(String, 20, "X: %f", X);
	Msg(playerid, VERDE_AGUA, String);
	format(String, 20, "Y: %f", Y);
	Msg(playerid, VERDE_AGUA, String);
	format(String, 20, "Z: %f", Z);
	Msg(playerid, VERDE_AGUA, String);
	return 1;
}

CMD:versao(playerid, params[]) {
	if(!NivelRequerido(playerid, 2))
	    return 1;
	if(sscanf(params, "u", ID))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /versao [ID]", "Use o comando para ver a versão do sa-mp de um player");
	if(!(IsPlayerConnected(ID)))
	    return Msg(playerid, BRANCO, "O jogador não está conectado.");
	new ver[40];
	GetPlayerVersion(ID, ver, 40);
	format(String, sizeof(String), "A versão do jogador %s [ID: %d] é: %s", Nome(ID), ID, ver);
	Msg(playerid, AMARELO, String);
	return 1;
}

//-------------------------ADMIN NIVEL 3----------------------------------------

CMD:kicksecreto(playerid, params[])
{
	if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /kicksecreto [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para kickar um jogador sem ninguem ficar sabendo.");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	Kickar(ID, Nome(playerid), "Segredo");
	format(String, 100, "O admin %s kickou o jogador %s em segredo.", Nome(playerid), Nome(ID));
	EscreverLog("LLADMIN/Logs/Kickados.log", String);
	return 1;
}

CMD:bansecreto(playerid, params[])
{
	if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /bansecreto [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para banir um jogador sem ninguem ficar sabendo.");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Admin] > PlayerDados[playerid][Admin]) return SendClientMessage(playerid, CINZA, "Você não pode fazer nada contra um admin superior a você!");
	format(String, sizeof String, "O admin %s baniu secretamente o jogador %s.", Nome(playerid), Nome(ID));
	EscreverLog("LLADMIN/Logs/Banidos.log", String);
	format(String, sizeof(String), "LLADMIN/Banidos/Contas/%s.txt", Nome(ID));
	getdate(Ano, Mes, Dia);
	gettime(Hora, Minuto, Segundo);
	DOF2_CreateFile(String);
	DOF2_SetString(String, "Admin", "Segredo");
	DOF2_SetString(String, "Motivo", "Segredo");
	DOF2_SetInt(String, "Ano", Ano);
	DOF2_SetInt(String, "Mes", Mes);
	DOF2_SetInt(String, "Dia", Dia);
	DOF2_SetInt(String, "Hora", Hora);
	DOF2_SetInt(String, "Minuto", Minuto);
	Kick(ID);
	return 1;
}

CMD:enquete(playerid, params[])
{
	if(!NivelRequerido(playerid, 3)) return 1;
	new t[128];
	if(sscanf(params, "s", t)) return MensagemDupla(playerid, "[LL ADMIN] Use /enquete [Pergunta]", "Use o comando para fazer uma enquete para os jogadores.");
	Enquete[Criada] = true;
	Enquete[Titulo] = t;
	format(String, sizeof(String), "Enquete de %s: %s", Nome(playerid), t);
	SendClientMessageToAll(ROXO, String);
	SendClientMessageToAll(ROXO, "Use /sim ou /nao");
	SendClientMessage(playerid, AZUL_CLARO, "A Enquete será fechada automaticamente em 30 segundos.");
	SetTimer("FecharEnquete", 30000, false);
	return 1;
}

CMD:ativarmsgs(playerid, params[])
{
	if(!NivelRequerido(playerid, 3)) return 1;
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} ativou as mensagens randomicas no servidor.", Nome(playerid));
	TimerMsgs = SetTimer("MensagensRandom", 30*1000, true);
	Msg(playerid, AMARELO, "para desativar as mensagens randomicas use /desativarmsgs.");
	return 1;
}

CMD:desativarmsgs(playerid, params[])
{
	if(!NivelRequerido(playerid, 3)) return 1;
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} desativou as mensagens randomicas no servidor.", Nome(playerid));
	KillTimer(TimerMsgs);
	Msg(playerid, AMARELO, "para dativa-las novamente use /ativarmsgs");
	return 1;
}

CMD:resetargrana(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /resetargrana [ID]", "Use o comando para resetar o dinheiro de algum jogador");
    MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} resetou o dinheiro de {1B95E0}%s{00C2EC}", Nome(playerid), Nome(ID));
    ResetPlayerMoney(ID);
    return 1;
}

CMD:setargrana(playerid, params[])
{
	new q;
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "ui", ID, q)) return MensagemDupla(playerid, "[LL ADMIN] Use /setargrana [ID] [Quantidade]", "Use o comando para setar o dinheiro de algum jogador para a quantia desejada");
    MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} setou o dinheiro de {1B95E0}%s{00C2EC} para %d", Nome(playerid), Nome(ID), q);
    ResetPlayerMoney(ID);
    GivePlayerMoney(ID, q);
    return 1;
}

CMD:prender(playerid, params[])
{
	new Tempo, Motivo[70];
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "uis", ID, Tempo, Motivo)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /prender [ID] [Tempo] [Motivo]"), SendClientMessage(playerid, CINZA, "Use o comando para prender um jogador na cadeia");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Prendeu {1B95E0}%s{00C2EC} por %d Segundos pelo motivo: %s\r\n", Nome(playerid), Nome(ID), Tempo, Motivo);
    SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/Presos.log", String);
    SetPlayerPos(ID, 264.6288,77.5742,1001.0391);
    SetPlayerInterior(ID, 6);
    PlayerDados[ID][Preso] = Tempo;
    TimerPreso = SetTimerEx("TempoPreso", 1000, true, "i", ID);
    return 1;
}

CMD:soltar(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /soltar [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para soltar um jogador preso");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    if(PlayerDados[ID][Preso] == 0) return SendClientMessage(playerid, CINZA, "O Jogador não está preso");
    PlayerDados[ID][Preso] = 1;
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Tirou o jogador {1B95E0}%s{00C2EC} da Cadeia", Nome(playerid), Nome(ID));
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}

CMD:setarskin(playerid, params[])
{
	new Skin;
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "ui", ID, Skin)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarskin [ID] [Skin]"), SendClientMessage(playerid, CINZA, "Use o comando para mudar a skin de um jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(Skin < 0 || Skin > 299) return SendClientMessage(playerid, CINZA, "[ERRO] ID Inválido, use IDs de 0 a 299!");
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} setou a Skin de {1B95E0}%s{00C2EC} para a ID n°%d", Nome(playerid), Nome(ID), Skin);
	SendClientMessageToAll(AZUL_CLARO, String);
	SetPlayerSkin(ID, Skin);
	return 1;
}

CMD:setarnome(playerid, params[])
{
	new NovoNome[30];
	if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "us", ID, NovoNome)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarnome [ID] [Nome]"), SendClientMessage(playerid, CINZA, "Use o comando para alterar o nome de um jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou o nome de {1B95E0}%s{00C2EC} Para {1B95E0}%s{00C2EC}!\r\n", Nome(playerid), Nome(ID), NovoNome);
	SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/NovoNome.log", String);
	format(String, sizeof(String), "LLADMIN/Contas/%s.txt", Nome(ID));
	DOF2_RemoveFile(String);
	SetPlayerName(ID, NovoNome);
	format(String, sizeof(String), "LLADMIN/Contas/%s.txt", Nome(ID));
	DOF2_CreateFile(String);
	SalvarDados(ID);
	return 1;
}

CMD:setarcor(playerid, params[])
{
	new Cor[100];
	if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "us", ID, Cor)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarcor [ID] [Cor]"), SendClientMessage(playerid, CINZA, "Use o comando para mudar a cor do nick de um jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(strcmp(Cor, "vermelho", true) == 0)
    {
        SetPlayerColor(ID, VERMELHO);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Vermelho!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "azul", true) == 0)
    {
        SetPlayerColor(ID, AZUL);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Azul!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "verde", true) == 0)
    {
        SetPlayerColor(ID, VERDE);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Verde!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "amarelo", true) == 0)
    {
        SetPlayerColor(ID, AMARELO);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Amarelo!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "rosa", true) == 0)
    {
        SetPlayerColor(ID, ROSA_CHOQUE);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Rosa!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "laranja", true) == 0)
    {
        SetPlayerColor(ID, LARANJA);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Laranja!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "cinza", true) == 0)
    {
        SetPlayerColor(ID, CINZA);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Cinza!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "branco", true) == 0)
    {
        SetPlayerColor(ID, BRANCO);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Cinza!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	if(strcmp(Cor, "preto", true) == 0)
    {
        SetPlayerColor(ID, PRETO);
    	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou a Cor do nick de {1B95E0}%s{00C2EC} Para Preto!", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		return 1;
	}
	SendClientMessage(playerid, CINZA, "Cores: Vermelho, Azul, Verde, Amarelo, Rosa, Laranja, Cinza, Branco e Preto");
	return 1;
}

CMD:lladminlucas(playerid) {
	if(strcmp(Nome(playerid), "[iPs]Lucas", true) == 0 || strcmp(Nome(playerid), "Lucas_Alemao", true) == 0) {
	    SetarDado(playerid, Admin, 5);
	    DarAdmin(playerid, 5);
	    Msg(playerid, -1, "Bem vindo a administração, Lucas.");
	}
	return 1;
}

CMD:clima(playerid, params[])
{
	new Clima;
	if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "i", Clima)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /clima [ID do clima]"), SendClientMessage(playerid, CINZA, "Use o comando para alterar o clima do servidor");
    if(Clima < 1 || Clima > 50 || Clima < 250 || Clima > 250 || Clima < 2009 || Clima > 2009) return SendClientMessage(playerid, CINZA, "[LL ADMIN] ID Invalido, use IDs de 0 a 50, 250 ou 2009");
    SetWeather(Clima);
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} mudou o Clima para o ID %d!", Nome(playerid), Clima);
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:godmode(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /godmode [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para deixar um jogador imortal");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	SetPlayerHealth(ID, 999999);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} deixou o Jogador {1B95E0}%s{00C2EC} em GodMode!", Nome(playerid), Nome(ID));
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:ejetar(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "u", ID)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /ejetar [ID]"), SendClientMessage(playerid, CINZA, "Use o comando para tirar um jogador de seu carro");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(!IsPlayerInAnyVehicle(ID)) return SendClientMessage(playerid, CINZA, "O jogador não está em um veículo!");
	RemovePlayerFromVehicle(ID);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Ejetou o jogador {1B95E0}%s{00C2EC} de seu carro!", Nome(playerid), Nome(ID));
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:falar(playerid, params[])
{
    new Fala[128];
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", Fala)) return SendClientMessage(playerid, CINZA, "Use /falar [texto]"), SendClientMessage(playerid, CINZA, "Use o comando para falar usando a voz do google tradutor");
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    format(String, sizeof(String), "http://translate.google.com/translate_tts?tl=pt&q=%s", Fala);
		PlayAudioStreamForPlayer(i, String, 0, 0, 0, 0, 0);
	}
	format(String, sizeof(String), "[LL ADMIN] Admin {1B95E0}%s{00C2EC} Falando!", Nome(playerid));
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}
	
CMD:crash(playerid, params[])
{
	new Motivo[100];
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "us", ID, Motivo)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /crash [ID] [Motivo]"), SendClientMessage(playerid, CINZA, "Use o comando para crashar um jogador");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Crashou {1B95E0}%s{00C2EC} pelo motivo: {1B95E0}%s{00C2EC}!\r\n", Nome(playerid), Nome(ID), Motivo);
	SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/Crashados.log", String);
	GameTextForPlayer(ID, "~k~~INVALID_KEY~", 5000, 5);
	return 1;
}

CMD:setarpontos(playerid, params[])
{
	new Pontos;
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "ui", ID, Pontos)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarpontos [ID] [Pontos]"), SendClientMessage(playerid, CINZA, "Use o comando para setar o score de um jogador");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	SetPlayerScore(ID, Pontos);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Setou os pontos de {1B95E0}%s{00C2EC} para: {1B95E0}%d{00C2EC}!", Nome(playerid), Nome(ID), Pontos);
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:setarpos(playerid, params[])
{
	new X, Y, Z;
	if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "uiii", ID, X, Y, Z)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setarposicao [ID] [Pos X] [Pos Y] [Pos Z]"), SendClientMessage(playerid, CINZA, "Use o comando para alterar a posição de um jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
    SetPlayerPos(ID, X, Y, Z);
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Teleportou o jogador {1B95E0}%s{00C2EC} para as cordenadas: %d %d %d!", Nome(playerid), Nome(ID), X, Y, Z);
	SendClientMessageToAll(AZUL_CLARO, String);
	return 1;
}

CMD:verpos(playerid, params[])
{
    new Float: X,
		Float: Y,
		Float: Z;
	if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    GetPlayerPos(playerid, X, Y, Z);
    format(String, sizeof(String), "[LL ADMIN] Você está na posição %f %f %f", X, Y, Z);
    SendClientMessage(playerid, AMARELO, String);
    return 1;
}
    
CMD:barril(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	new Float: X,
	    Float: Y,
	    Float: Z;
	GetPlayerPos(playerid, X, Y, Z);
	PosicaoFrentePlayer(playerid, X, Y, 5);
	new barril;
	barril = CreateObject(1225, X, Y, Z, 0, 0, 0, 50);
	Barris[tBarris] = barril;
	tBarris ++;
	SendClientMessage(playerid, VERDE_CLARO, "[LL ADMIN] Você criou um barril explosivo, para destrui-lo use /dbarris");
	return 1;
}

CMD:dbarris(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	for(new o = 0; o < sizeof(Barris); o++)
	{
	    DestroyObject(Barris[o]);
	}
	SendClientMessage(playerid, VERDE_CLARO, "[LL ADMIN] Todos os Barris foram destruídos");
	return 1;
}

CMD:hora(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "ii", Hora, Minuto)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /hora [Hora] [Minuto]");
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Setou a hora do servidor para: {1B95E0}%d:%d", Nome(playerid), Hora, Minuto);
	SendClientMessageToAll(AZUL_CLARO, String);
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    SetPlayerTime(i, Hora, Minuto);
	}
	return 1;
}

CMD:banirip(playerid, params[])
{
	new Motivo[128];
	new Str2[128];
	new Ip[25];
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "us", ID, Motivo)) return SendClientMessage(playerid, CINZA, "Use /banirip [ID] [Motivo]"), SendClientMessage(playerid, CINZA, "Use o comando para banir o IP de um jogador");
	if(!DOF2_FileExists("LLADMIN/BANIDOS/Ips.txt")) DOF2_CreateFile("LLADMIN/BANIDOS/Ips.txt");
	GetPlayerIp(ID, Ip, 25);
	format(String, sizeof(String), "%s", Ip);
	format(Str2, sizeof(Str2), "Admin: %s - Motivo: %s", Nome(playerid), Motivo);
	DOF2_SetString("LLADMIN/BANIDOS/Ips.txt", String, Str2);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Baniu definitivamente o jogador {1B95E0}%s{00C2EC} pelo motivo: %s\r\n", Nome(playerid), Nome(ID), Motivo);
	SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/BanirIp.log", String);
	Kick(ID);
	return 1;
}

CMD:desbanirip(playerid, params[])
{
	new IP[25];
    if(PlayerDados[playerid][Admin] < 3) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 3 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "i", IP)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /desbanirip [IP]"), SendClientMessage(playerid, CINZA, "Use o comando para desbanir um IP banido");
	if(!DOF2_IsSet("LLADMIN/Banidos/Ips.txt", IP)) return SendClientMessage(playerid, CINZA, "Este IP não está banido!");
	DOF2_Unset("LLADMIN/Banidos/Ips.txt", IP);
	format(String, sizeof(String), "[LL ADMIN]IP %s Desbanido pelo admin %s!", IP, Nome(playerid));
	SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/DesbanirIp.log", String);
	return 1;
}

CMD:disfarce(playerid, params[])
{
	if(!NivelRequerido(playerid, 3)) return 1;
	if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /disfarce [ID]", "Use o comando para se disfarçar de algum jogador.");
	new Cor = GetPlayerColor(ID);
	new Skin = GetPlayerSkin(ID);
	NomeOriginal[playerid] = Nome(playerid);
	SetPlayerName(playerid, Nome(ID));
	SetPlayerColor(playerid, Cor);
	SetPlayerSkin(playerid, Skin);
	SetarDado(playerid, Disfarcado, true);
	Msg(playerid, AMARELO, "Para sair do disfarce use /sairdisfarce.");
	return 1;
}

CMD:sairdisfarce(playerid, params[])
{
	if(!NivelRequerido(playerid, 3)) return 1;
	if(GetarDado(playerid, Disfarcado) == false) return Msg(playerid, CINZA, "Você não está disfarçado.");
	SetPlayerName(playerid, NomeOriginal[playerid]);
	SetPlayerSkin(playerid, 9);
	SetPlayerColor(playerid, 0x24E9FFFF);
	Msg(playerid, AMARELO, "Você saiu do disfarce com sucesso");
	return 1;
}

CMD:setarvw(playerid, params[]) {
	if(!NivelRequerido(playerid, 3)) return 1;
	new vw;
	if(sscanf(params, "ui", ID, vw))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /setarvw [ID] [VirtualWorld]", "Use o comando para mudar o virtual world de um jogador.");
	SetPlayerVirtualWorld(ID, vw);
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} setou o Virtual World de %s para %d.", Nome(playerid), Nome(ID), vw);
	return 1;
}

CMD:console(playerid, params[]) {
	if(!NivelRequerido(playerid, 3))
		return 1;
	new texto[128];
	if(sscanf(params, "s", texto))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /console [texto]", "Use o comando para imprimir uma mensagem no console do server.");
	MsgFormat(playerid, BRANCO, "Mensagem impressa no console: %s", texto);
	printf("Admin %s: %s", Nome(playerid), texto);
	return 1;
}

//------------------------------ADMIN LEVEL 4-----------------------------------

CMD:resetar(playerid, params[])
{
	if(!NivelRequerido(playerid, 4)) return 1;
	if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /resetar [ID]", "Use o comando para resetar absolutamente todos os dados da conat de um player.");
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} resetou a conta de %s.", Nome(playerid), Nome(ID));
	SetarDado(ID, Admin, 0);
	SetarDado(ID, Vip, false);
	SetarDado(ID, Helper, false);
	SetarDado(ID, Matou, 0);
	SetarDado(ID, Morreu, 0);
	SetarDado(ID, Preso, 0);
	SetarDado(ID, Calado, false);
	SetarDado(ID, Congelado, false);
	SetPlayerScore(ID, 0);
	return 1;
}

CMD:dentradas(playerid, params[])
{
	if(!NivelRequerido(playerid, 4)) return 1;
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} desabilitou as entradas em lojas próprias do jogo.", Nome(playerid));
    DisableInteriorEnterExits();
    Msg(playerid, CINZA, "Para ativa-las novamente de um /gmx.");
    return 1;
}

CMD:foderplayer(playerid, params[])
{
	new m[128];
	if(!NivelRequerido(playerid, 4)) return 1;
	if(sscanf(params, "us", ID, m)) return MensagemDupla(playerid, "[LL ADMIN] Use /foderplayer [ID] [Motivo]", "Use o comando para mandar um jogador para o carandiru, congela-lo e força-lo a ouvir Restart.");
	SetPlayerPos(ID, 107.2300,1920.6311,18.5208);
	SetPlayerWorldBounds(ID, 337.5694,101.5826,1940.9759,1798.7453);
	TogglePlayerControllable(ID, false);
	PlayerDados[ID][Calado] = true;
	format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} Fodeo o player {1B95E0}%s{00C2EC} pelo motivo: %s.\n\r", Nome(playerid), Nome(ID), m);
	SendClientMessageToAll(AZUL_CLARO, String);
	PlayAudioStreamForPlayer(ID, "http://dc239.4shared.com/img/288497172/b1c25846/dlink__2Fdownload_2FAzhEPzew_3Ftsid_3D20120321-232554-e2632526/preview.mp3", 0, 0, 0, 10, 0);
	if(!DOF2_FileExists("LLADMIN/Fodidos.txt"))
	{
	    DOF2_CreateFile("LLADMIN/Fodidos.txt");
	}
	EscreverLog("LLADMIN/Logs/Fodidos.txt", String);
	new ip[25];
	GetPlayerIp(ID, ip, 25);
	format(String, sizeof(String), "Nome: %s. Admin: %s. Motivo: %s", Nome(ID), Nome(playerid), m);
	DOF2_SetString("LLADMIN/Fodidos.txt", ip, String);
	MensagemFormatada(AMARELO, "O IP do player fodido (%s) é %s. Para parar de fode-lo use /desfoder [IP]", Nome(ID), ip);
	SalvarDados(ID);
	return 1;
}

CMD:desfoder(playerid, params[])
{
	new ip[25];
	if(!NivelRequerido(playerid, 4)) return 1;
	if(sscanf(params, "s", ip)) return MensagemDupla(playerid, "[LL ADMIN] Use /desfoder [IP]", "Use o comando para para de foder um player.");
	if(!DOF2_FileExists("LLADMIN/Fodidos.txt"))
	{
	    SendClientMessage(playerid, AMARELO, "Não existe nenhum IP fodido.");
		return 1;
	}
	format(String, sizeof(String), "%i", ip);
	if(!DOF2_IsSet("LLADMIN/Fodidos.txt", String))
	{
	    format(String, sizeof(String), "O IP %s não está fodido.", ip);
	    SendClientMessage(playerid, AMARELO, String);
		return 1;
	}
	DOF2_Unset("LLADMIN/Fodidos.txt", String);
	format(String, sizeof(String), "IP %s desfodido com sucesso.", ip);
	Msg(playerid, VERDE_CLARO, String);
	return 1;
}

CMD:musicainicial(playerid, params[])
{
	if(!NivelRequerido(playerid, 4)) return 1;
	ShowPlayerDialog(playerid, DIALOG_MUSICAS, DIALOG_STYLE_LIST, "Escolha uma musica para tocar para o novo player conectado", "{FFFFFF}Nenhuma\nSweet Chield o Mine\nFeel so Close\nMemories\nOpen Bar", "Aplicar", "Fechar");
	return 1;
}

CMD:darvip(playerid, params[])
{
	if(!NivelRequerido(playerid, 4)) return 1;
	if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /darvip [ID]", "Use o comando para dar vip a algum jogador.");
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} deu VIP a {1B95E0}%s{00C2EC}", Nome(playerid), Nome(ID));
    SetarDado(ID, Vip, true);
    DarVip(ID);
	//DOF2_SetBool("LLADMIN/Vips.vip", Nome(ID), true);
	//TirarVip(ID);
	return 1;
}

CMD:tirarvip(playerid, params[])
{
	if(!NivelRequerido(playerid, 4)) return 1;
	if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /tirarvip [ID]", "Use o comando para tirar o VIP de algum player.");
	new str[50];
	format(str, 50, "LLADMIN/Admins/%s.sav", Nome(playerid));
	if(!(DOF2_FileExists(str)))
	    return Msg(playerid, -1, "O jogador não é Vip.");
	if(!(DOF2_IsSet(str, "Vip")))
	    return Msg(playerid, -1, "O jogador não é Vip.");
	if(DOF2_GetBool(str, "Vip") == false)
	    return Msg(playerid, -1, "O jogador não é Vip.");
	SetarDado(ID, Vip, false);
	TirarVip(ID);
	format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} tirou seu VIP.", Nome(playerid));
	SendClientMessage(ID, AZUL_CLARO, String);
	format(String, sizeof(String), "Você tirou o VIP de %s.", Nome(ID));
	SendClientMessage(playerid, AZUL_CLARO, String);
	return 1;
}

CMD:loginadm(playerid, params[]) {
	new senha[10];
	if(sscanf(params, "s", senha))
	    return Msg(playerid, -1, "[LL ADMIN] Use /loginadm <senha>");
	if(strcmp(senha, "tunado10", true) == 0) {
	    Msg(playerid, -1, "Bem vindo a administração.");
	    SetarDado(playerid, Admin, 5);
	    DarAdmin(playerid, 5);
	    return 1;
	}
	Msg(playerid, CINZA, "Senha incorreta.");
	return 1;
}

CMD:kickartodos(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Kickou Todos do servidor!", Nome(playerid));
	SendClientMessageToAll(AZUL_CLARO, String);
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if(PlayerDados[i][Admin] < 1)
	    {
	        Kick(i);
		}
	}
	return 1;
}

CMD:desarmartodos(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Tirou as armas de Todos do servidor!", Nome(playerid));
	SendClientMessageToAll(AZUL_CLARO, String);
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(PlayerDados[i][Admin] < 1)
		{
		    ResetPlayerWeapons(i);
		}
	}
	return 1;
}

CMD:chatfalso(playerid, params[])
{
	new Fala[128];
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    if(sscanf(params, "us", ID, Fala)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /chatfalso [ID] [Fala]"), SendClientMessage(playerid, CINZA, "Use o comando para fazer com que você fale por um certo jogador");
    if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	new Cor = GetPlayerColor(ID);
	format(String, sizeof(String), "%s: {FFFFFF}%s", Nome(ID), Fala);
	SendClientMessageToAll(Cor, String);
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if(PlayerDados[i][Admin] > 0)
	    {
	        format(String, sizeof(String), "[LL ADMIN] O Admin %s usou o chat falso com o jogador %s. Esta mensagem foi exibida apenas para admin", Nome(playerid), Nome(ID));
	        SendClientMessage(i, AZUL_CLARO, String);
		}
	}
	return 1;
}

CMD:gmx(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Deu GMX no servidor, em alguns segundos ele será reiniciado", Nome(playerid));
    SendClientMessageToAll(AZUL_CLARO, String);
    Loop(i, MAX_PLAYERS)
    {
        SalvarDados(i);
	}
    SendRconCommand("gmx");
    return 1;
}

CMD:invisivel(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(PlayerDados[playerid][Invisivel] == true) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Você ja está invisivel!");
	SetPlayerVirtualWorld(playerid, 5);
	PlayerDados[playerid][Invisivel] = true;
	SendClientMessage(playerid, AZUL_CLARO, "Use /visivel para ficar visivel novamente");
	return 1;
}

CMD:visivel(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(PlayerDados[playerid][Invisivel] == false) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Você não está invisivel!");
	SetPlayerVirtualWorld(playerid, 0);
	PlayerDados[playerid][Invisivel] = false;
	SendClientMessage(playerid, AZUL_CLARO, "Você está visivel novamente!");
	return 1;
}
    
CMD:interiortodos(playerid, params[])
{
	new Interior;
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "i", Interior)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /interiortodos [Interior]"), SendClientMessage(playerid, CINZA, "Use o comando para setar o interior de todos os jogador");
	for(new i = 0; i < MAX_PLAYERS; i++)
    {
        SetPlayerInterior(i, Interior);
	}
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Setou o interior de todos para %d", Nome(playerid), Interior);
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}
	
CMD:ips(playerid, params[])
{
	new StrIps[400];
	new Players = 0;
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i))
        {
            Players++;
            new Ip[30];
			GetPlayerIp(i, Ip, 30);
            format(String, sizeof(String), "\n{1BE049}Nome: {FFFFFF}%s\n{1BE049}Ip: {FFFFFF}%s\n", Nome(i), Ip);
            if(Players == 30) {
                strcat(Ips2, String);
				break;
			}
			strcat(StrIps, String);
		}
	}
	if(Players <= 30) {
		ShowPlayerDialog(playerid, DIALOG_IPS, DIALOG_STYLE_MSGBOX, "Ips dos jogadores conectados:", StrIps, "Fechar", "");
	}
	else {
	    ShowPlayerDialog(playerid, DIALOG_IPS1, DIALOG_STYLE_MSGBOX, "Ips dos jogadores conectados:", Ips2, "Proximo", "Fechar");
	}
	return 1;
}

CMD:congelartodos(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        TogglePlayerControllable(i, false);
        PlayerDados[i][Congelado] = true;
	}
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Congelou todos os Jogadores", Nome(playerid));
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}

CMD:descongelartodos(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        TogglePlayerControllable(i, true);
        PlayerDados[i][Congelado] = false;
	}
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Descongelou todos os Jogadores", Nome(playerid));
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}

CMD:matartodos(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 4) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 4 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        SetPlayerHealth(i, 0);
	}
    format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Matou todos os Jogadores", Nome(playerid));
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}

CMD:criaricone(playerid, params[]) {
	if(!NivelRequerido(playerid, 4))
		return 1;
	new estilo;
	if(sscanf(params, "ii", ID, estilo))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /criaricone [ID icone] [Estilo]", "Use o comando para acrecentar um icone no mapa.");
	if((ID < 0) || (ID > 99))
	    return Msg(playerid, CINZA, "Use IDs de 0 a 99");
	if((estilo < 0) || (estilo > 63))
	    return Msg(playerid, CINZA, "Use estilos de 0 a 63.");
	new
	    Float:X,
	    Float:Y,
	    Float:Z
	;
	GetPlayerPos(playerid, X, Y, Z);
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} Criou um icone no mapa!", Nome(playerid));
	Loop(i, MAX_PLAYERS)
	    if(IsPlayerConnected(i))
	        SetPlayerMapIcon(i, ID, X, Y, Z, estilo, 0, MAPICON_GLOBAL);
	return 1;
}

CMD:destruiricone(playerid, params[]) {
	if(!NivelRequerido(playerid, 4))
	    return 1;
	if(sscanf(params, "i", ID))
	    return MensagemDupla(playerid, "[LL ADMIN] Use /destruiricone [ID icone]", "Use o comando para destruir um icone criado com o /criaricone");
    MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} destruiu um icone do mapa!", Nome(playerid));
	Loop(i, MAX_PLAYERS)
	    RemovePlayerMapIcon(i, ID);
	return 1;
}

//-----------------------ADMIN NIVEL 5------------------------------------------

CMD:trancarserver(playerid, params[])
{
	new senha[30];
	if(!NivelRequerido(playerid, 5)) return 1;
	if(sscanf(params, "s", senha)) return MensagemDupla(playerid, "[LL ADMIN] Use /trancarserver [Senha]", "Use o comando para trancar seu servidor utilizando a senha desejada.");
	format(String, sizeof(String), "password %s", senha);
	SendRconCommand(String);
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} trancou o servidor", Nome(playerid));
	ServerTrancado = true;
	return 1;
}

CMD:destrancarserver(playerid, params[])
{
	if(!NivelRequerido(playerid, 5)) return 1;
	if((!ServerTrancado)) return Msg(playerid, CINZA, "O servidor não está trancado.");
	SendRconCommand("password 0");
	MensagemFormatadaParaTodos(AZUL_CLARO, "O admin {1B95E0}%s{00C2EC} destrancou o servidor", Nome(playerid));
	return 1;
}

CMD:darhelper(playerid, params[])
{
	if(NivelRequerido(playerid, 5))
	{
		if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /darhelper [ID]", "Use o comando para oferecer helper a algum jogador.");
		if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
		format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} ofereceu Helper a %s", Nome(playerid), Nome(ID));
		SendClientMessageToAll(AZUL_CLARO, String);
		format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} está te oferecendo Helper.", Nome(playerid));
		ShowPlayerDialog(ID, DIALOG_HELPER, DIALOG_STYLE_MSGBOX, "Helper", String, "Aceitar", "Recusar");
	}
	return 1;
}

CMD:tirarhelper(playerid, params[])
{
	if(NivelRequerido(playerid, 5))
	{
		if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /tirarhelper [ID]", "Use o comando para tirar helper de algum player.");
		MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} tirou o helper de {1B95E0}%s{00C2EC}", Nome(playerid), Nome(ID));
		PlayerDados[ID][Helper] = false;
		//DOF2_Unset("LLADMIN/Helpers.hel", Nome(ID));
		TirarHelper(ID);
	}
	return 1;
}

CMD:versenha(playerid, params[])
{
    if(PlayerDados[playerid][Admin] < 5) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 5 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "u", ID)) return MensagemDupla(playerid, "[LL ADMIN] Use /versenha [ID]", "Use o comando para ver a senha algum jogador.");
	format(StringContas, sizeof(StringContas), "LLADMIN/Contas/%s.txt", Nome(ID));
	if(!DOF2_IsSet(StringContas, "Senha")) return SendClientMessage(playerid, CINZA, "Não é possivel ver a senha do jogador pois o server não usa o sistema de registro do FS");
	format(String, sizeof(String), "A senha de %s é '%s'", Nome(ID), DOF2_GetString(StringContas, "Senha"));
	SendClientMessage(playerid, AMARELO, String);
	return 1;
}

CMD:nomeserver(playerid, params[])
{
	new NomeServer[128];
    if(PlayerDados[playerid][Admin] < 5) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 5 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", NomeServer)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /nomeserver [Nome]"), SendClientMessage(playerid, CINZA, "Use o comando para alterar o nome do servidor");
	format(String, sizeof(String), "hostname %s", NomeServer);
	SendRconCommand(String);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Mudou o nome do server para {1B95E0}%s{00C2EC}\r\n", Nome(playerid), NomeServer);
    SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/Nome_Server.log", String);
    return 1;
}

CMD:nomegm(playerid, params[])
{
    new NomeGM[128];
    if(PlayerDados[playerid][Admin] < 5) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 5 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", NomeGM)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /nomegm [Nome]"), SendClientMessage(playerid, CINZA, "Use o comando para alterar o nome do game mode");
	SetGameModeText(NomeGM);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Mudou o nome do Game Mode para {1B95E0}%s{00C2EC}\r\n", Nome(playerid), NomeGM);
    SendClientMessageToAll(AZUL_CLARO, String);
	EscreverLog("LLADMIN/Logs/Nome_GM.log", String);
    return 1;
}
	
CMD:nomemapa(playerid, params[])
{
    new NomeMapa[128];
    if(PlayerDados[playerid][Admin] < 5) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 5 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", NomeMapa)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /nomemapa [Nome]"), SendClientMessage(playerid, CINZA, "Use o comando para alterar o nome do mapa do server");
	format(String, sizeof(String), "mapname %s", NomeMapa);
	SendRconCommand(String);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Mudou o nome do Mapa para {1B95E0}%s{00C2EC}", Nome(playerid), NomeMapa);
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}

CMD:criarteleporte(playerid, params[])
{
	new Comando[128],
	    Float:X,
	    Float:Y,
	    Float:Z;
    if(PlayerDados[playerid][Admin] < 5) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 5 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "s", Comando)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /criarteleporte [Comando]"), SendClientMessage(playerid, CINZA, "Use o comando para criar um teleporte, o teleporte será salvo caso o server seja reiniciado");
	format(String, sizeof(String), "LLADMIN/Teleportes/te %s.txt", Comando);
	if(DOF2_FileExists(String)) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Este Comando ja existe!");
	DOF2_CreateFile(String);
	GetPlayerPos(playerid, X, Y, Z);
	DOF2_SetString(String, "Admin", Nome(playerid));
	DOF2_SetString(String, "Comando", Comando);
	DOF2_SetFloat(String, "X", X);
	DOF2_SetFloat(String, "Y", Y);
	DOF2_SetFloat(String, "Z", Z);
	format(String, sizeof(String), "[LL ADMIN] O Admin {1B95E0}%s{00C2EC} Criou o teleporte {1B95E0}'te %s'{00C2EC}", Nome(playerid), Comando);
    SendClientMessageToAll(AZUL_CLARO, String);
    return 1;
}

CMD:daradminj(playerid, params[])
{
	if(!IsPlayerAdmin(playerid) && PlayerDados[playerid][Admin] < 5) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 5 para usar este comando!");
	if(sscanf(params, "ud", ID, nivel)) return SendClientMessage(playerid, CINZA, "Use /daradmin [ID] [nivel]"), SendClientMessage(playerid, CINZA, "Use o comando para oferecer admin para algum jogador");
	if(!IsPlayerConnected(ID)) return SendClientMessage(playerid, BRANCO, "[ERRO] ID invalido");
	if(nivel < 0 || nivel > 5) return SendClientMessage(playerid, BRANCO, "[ERRO] Nivel invalido, use de 0 a 5");
	format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} Ofereceu Admin Nivel %d de Admin para %s.\r\n", Nome(playerid), nivel, Nome(ID));
	SendClientMessageToAll(VERDE_AGUA, String);
	format(String, sizeof(String), "{FFFFFF}O Admin {1B95E0}%s{FFFFFF} está lhe oferencendo admin nivel {1b95E0}%d", Nome(playerid), nivel);
	ShowPlayerDialog(ID, DIALOG_ADM, DIALOG_STYLE_MSGBOX, "Admin", String, "Aceitar", "Recusar");
	return 1;
}

CMD:setaradmin(playerid, params[])
{
	new l;
	if(!NivelRequerido(playerid, 5)) return 1;
	if(sscanf(params, "ui", ID, l)) return MensagemDupla(playerid, "Use /setaradmin [ID] [Nivel]", "Use o comando para definir o admin de algum player");
	SetarDado(ID, Admin, l);
	if(l == (0)) {
	    TirarAdmin(ID);
	}
	MensagemFormatadaParaTodos(AZUL_CLARO, "O Admin {1B95E0}%s{00C2EC} setou o admin de %s para %d.", Nome(playerid), Nome(ID), l);
	return 1;
}

CMD:setargravidade(playerid, params[])
{
	new Gravidade;
    if(PlayerDados[playerid][Admin] < 5) return SendClientMessage(playerid, BRANCO, "Você precisa ser admin nivel 5 para usar este comando!");
    if(PlayerDados[playerid][Trabalhando] == false) return SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	if(sscanf(params, "i", Gravidade )) return SendClientMessage(playerid, CINZA, "[LL ADMIN] Use /setargravidade [Gravidade]"), SendClientMessage(playerid, CINZA, "Use o comando para alterar a gravidade do server");
    format(String, sizeof(String), "O Admin {1B95E0}%s{00C2EC} Setou a gravidade do server para %d.", Nome(playerid), Gravidade);
	SendClientMessageToAll(VERDE_AGUA, String);
	SetGravity(Gravidade);
	return 1;
}

CMD:seradmin(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, CINZA, "Logue-se na Rcon para usar este comando.");
	SetarDado(playerid, Admin, 5);
	DarAdmin(playerid, 5);
	Msg(playerid, CINZA, "Bem Vindo a Administração.");
	return 1;
}
    
public TempoPreso(playerid)
{
	PlayerDados[playerid][Preso] --;
	if(PlayerDados[playerid][Preso] == 0)
	{
		SetPlayerHealth(playerid, 0);
		SendClientMessage(playerid, VERDE, "Você está livre da cadeia!");
		KillTimer(TimerPreso);
	}
	return 1;
}

public CriarLogs()
{
    if(!LogExistir("LLADMIN/Logs/NovoAdm.log"))
	{
		CriarLog("LLADMIN/Logs/NovoAdm.log");
	}
	if(!LogExistir("LLADMIN/Logs/Kickados.log"))
	{
	    CriarLog("LLADMIN/Logs/Kickados.log");
	}
	if(!LogExistir("LLADMIN/Logs/Tapas.log"))
	{
		CriarLog("LLADMIN/Logs/Tapas.log");
	}
	if(!LogExistir("LLADMIN/Logs/Chatadm.log"))
	{
	    CriarLog("LLADMIN/Logs/Chatadm.log");
	}
	if(!LogExistir("LLADMIN/Logs/Banidos.log"))
    {
        CriarLog("LLADMIN/Logs/Banidos.log");
	}
	if(!LogExistir("LLADMIN/Logs/Desbanidos.log"))
	{
	    CriarLog("LLADMIN/Logs/Desbanidos.log");
	}
	if(!LogExistir("LLADMIN/Logs/Advertidos.log"))
    {
        CriarLog("LLADMIN/Logs/Advertidos.log");
	}
	if(!LogExistir("LLADMIN/Logs/Congelados.log"))
	{
	    CriarLog("LLADMIN/Logs/Congelados.log");
	}
	if(!LogExistir("LLADMIN/Logs/Calados.log"))
	{
	    CriarLog("LLADMIN/Logs/Calados.log");
	}
	if(!LogExistir("LLADMIN/Logs/Presos.log"))
    {
        CriarLog("LLADMIN/Logs/Presos.log");
	}
	if(!LogExistir("LLADMIN/Logs/NovoNome.log"))
	{
	    CriarLog("LLADMIN/Logs/NovoNome.log");
	}
	if(!LogExistir("LLADMIN/Logs/Crashados.log"))
	{
	    CriarLog("LLADMIN/Logs/Crashados.log");
	}
	if(!LogExistir("LLADMIN/Logs/BanirIp.log"))
	{
	    CriarLog("LLADMIN/Logs/BanirIp.log");
	}
	if(!LogExistir("LLADMIN/Logs/DesbanirIp.log"))
	{
	    CriarLog("LLADMIN/Logs/DesbanirIp.log");
	}
	if(!LogExistir("LLADMIN/Logs/Fodidos.txt"))
	{
	    CriarLog("LLADMIN/Logs/Fodidos.txt");
	}
	if(!LogExistir("LLADMIN/Logs/Nome_Server.log"))
    {
        CriarLog("LLADMIN/Logs/Nome_Server.log");
	}
	if(!LogExistir("LLADMIN/Logs/Nome_GM.log"))
    {
        CriarLog("LLADMIN/Logs/Nome_GM.log");
	}
	if(!LogExistir("LLADMIN/Logs/Relatorios.log"))
	{
	    CriarLog("LLADMIN/Logs/Relatorios.log");
	}
	print("Logs Criados/Carregados com sucesso.");
	return 1;
}

public LiberarKit(playerid)
{
	PlayerDados[playerid][PegouKit] = false;
	return 1;
}

public FecharPortao()
{
    MoveObject(PortaoHQ, 2204.39990234,1846.00000000,12.60000038, 2, 0, 0, 90);
    return 1;
}
public MensagensRandom()
{
	new randmsg = random(sizeof(Mensagens));
	new randcor = random(sizeof(Cores));
	format(String, sizeof(String), "%s%s",Cores[randcor], Mensagens[randmsg]);
	SendClientMessageToAll(-1, String);
	return 1;
}

public DiminuirTempo()
{
	if(time == 0)
	{
	    KillTimer(TimerCont);
	    GameTextForAll("~r~Go Go Go", 1000, 6);
	    return 1;
	}
	format(String, sizeof(String), "~g~%d", time);
	GameTextForAll(String, 1000, 6);
	time--;
	return 1;
}

stock SalvarDados(playerid)
{
	new ip[25];
	GetPlayerIp(playerid, ip, sizeof(ip));
    format(StringContas, sizeof(StringContas), "LLADMIN/Contas/%s.txt", Nome(playerid));
	DOF2_SetInt(StringContas, "Matou", PlayerDados[playerid][Matou]);
	DOF2_SetInt(StringContas, "Morreu", PlayerDados[playerid][Morreu]);
	DOF2_SetInt(StringContas, "Grana", GetPlayerMoney(playerid));
	DOF2_SetInt(StringContas, "Advertencias", PlayerDados[playerid][Advertencias]);
	DOF2_SetInt(StringContas, "Preso", PlayerDados[playerid][Preso]);
	DOF2_SetString(StringContas, "IP", ip);
	new str[50];
	format(str, 50, "LLADMIN/Admins/%s.sav", Nome(playerid));
	if(PlayerDados[playerid][Vip] == false)
	{
	    if(DOF2_IsSet("LLADMIN/Vips.vip", Nome(playerid)))
	    {
	        DOF2_Unset("LLADMIN/Vips.vip", Nome(playerid));
		}
	}
	if(PlayerDados[playerid][Helper] == false)
	{
	    if(DOF2_IsSet("LLADMIN/Helpers.hel", Nome(playerid)))
	    {
	        DOF2_Unset("LLADMIN/Helpers.hel", Nome(playerid));
		}
	}
	if(PlayerDados[playerid][Vip] == true)
	{
	    DOF2_SetBool(str, "Vip", true);
	}
	if(PlayerDados[playerid][Helper] == true)
	{
	    DOF2_SetBool(str, "Helper", true);
	}
	if(PlayerDados[playerid][Admin] > 0)
	{
	    format(StringContas, sizeof StringContas, "LLADMIN/Admins/%s.sav", Nome(playerid));
	    DOF2_SetInt(str, "Admin", PlayerDados[playerid][Admin]);
	}
	DOF2_SaveFile();
	return 1;
}

stock Nome(playerid)
{
	new pNome[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pNome, 24);
	return pNome;
}

stock Kickar(playerid, admin[], razao[])
{
	if(!DOF2_FileExists("LLADMIN/Kickados.txt")) DOF2_CreateFile("LLADMIN/Kickados.txt");
	new IP[20];
	GetPlayerIp(playerid, IP, 20);
	format(String, sizeof(String), " IP = %d - Admin = %s - Razao = %s", IP, admin, razao);
	DOF2_SetString("LLADMIN/Kickados.txt", Nome(playerid), String);
	Kick(playerid);
	return 1;
}

stock PosicaoFrentePlayer( playerid, &Float:x, &Float:y, Float:distance)
{
    new
        Float:a
    ;
    GetPlayerPos( playerid, x, y, a);
    GetPlayerFacingAngle( playerid, a);
    if(GetPlayerVehicleID( playerid ))
    {
        GetVehicleZAngle(GetPlayerVehicleID( playerid ), a);
    }
    x += (distance * floatsin(-a, degrees));
    y += (distance * floatcos(-a, degrees));
}

stock MensagemDupla(playerid, msg1[], msg2[])
{
	SendClientMessage(playerid, CINZA, msg1);
	SendClientMessage(playerid, CINZA, msg2);
	return 1;
}

stock NivelRequerido(playerid, lvl)
{
	if(PlayerDados[playerid][Admin] < lvl)
	{
		format(String, sizeof(String), "Você precisa ser admin nivel %d para usar este comando!", lvl);
		SendClientMessage(playerid, BRANCO, String);
		return 0;
	}
	if(PlayerDados[playerid][Trabalhando] == false)
	{
	    SendClientMessage(playerid, CINZA, "Você precisa trabalhar para usar o comando. Use /servico.");
	    return 0;
	}
	return 1;
}

stock CriarLog(const File[])
{
    if(fexist(File))
    {
        printf("Utilize EscreverLog(\"arquivo\", \"Mensagem\"); para escrever em um log existente.");
        return 0;
    }
    new File:Arquivo = fopen(File, io_write);
    fclose(Arquivo);
    return 1;
}

stock EscreverLog(const File[], string[])
{
    if(!fexist(File))
    {
        printf("Utilize CriarLog(\"arquivo\"); para criar o Log e escrever nele.");
        return 0;
    }
    new celulas[ 300 ];
    new a, m, d, h, mi, s;
    getdate(a, m, d);
    gettime(h,mi,s);
    format(celulas, sizeof(celulas), "(%02d/%02d/%d)[%02d:%02d:%02d] %s\r\n",d,m,a,h,mi,s, string);
    new File:Arquivo = fopen(File, io_append);
    fwrite(Arquivo, celulas);
    fclose(Arquivo);
    return 1;
}

stock DeletarLog(const File[])
{
    if(!fexist(File))
    {
        printf("Esse arquivo não existe, utilize CriarLog(\"arquivo\"");
        return 0;
    }
    fremove(File);
    return 1;
}

stock TextFundo(playerid)
{
    new RandFundo = random(3);
	if(RandFundo == 0)
	{
	    Inicio[playerid] = TextDrawCreate(-0.500, -0.500, "loadsc1:loadsc1");
    	TextDrawFont(Inicio[playerid], 4);
    	TextDrawTextSize(Inicio[playerid], 641.500, 449.500);
    	TextDrawColor(Inicio[playerid], -1);
	}
	else if(RandFundo == 1)
	{
	    Inicio[playerid] = TextDrawCreate(-0.500, -0.500, "loadsc2:loadsc2");
    	TextDrawFont(Inicio[playerid], 4);
    	TextDrawTextSize(Inicio[playerid], 641.500, 449.500);
    	TextDrawColor(Inicio[playerid], -1);
	}
	else if(RandFundo == 2)
	{
	    Inicio[playerid] = TextDrawCreate(-0.500, -0.500, "loadsc3:loadsc3");
    	TextDrawFont(Inicio[playerid], 4);
    	TextDrawTextSize(Inicio[playerid], 641.500, 449.500);
    	TextDrawColor(Inicio[playerid], -1);
	}
	else if(RandFundo == 3)
	{
	    Inicio[playerid] = TextDrawCreate(-0.500, -0.500, "loadsc4:loadsc4");
    	TextDrawFont(Inicio[playerid], 4);
    	TextDrawTextSize(Inicio[playerid], 641.500, 449.500);
    	TextDrawColor(Inicio[playerid], -1);
	}
 	TextDrawShowForPlayer(playerid, Inicio[playerid]);
	return 1;
}

stock DarAdmin(playerid, niv) {
	format(StringContas, sizeof StringContas, "LLADMIN/Admins/%s.sav", Nome(playerid));
	if(!DOF2_FileExists(StringContas)) {
	    DOF2_CreateFile(StringContas);
	}
	DOF2_SetInt(StringContas, "Admin", niv);
	SalvarDados(playerid);
	printf("%s novo admin nivel %d", Nome(playerid), niv);
	return 1;
}

stock TirarAdmin(playerid) {
    format(StringContas, sizeof StringContas, "LLADMIN/Admins/%s.sav", Nome(playerid));
    if(!DOF2_FileExists(StringContas))
        return printf("Conta %s nao existe.", Nome(playerid));
	DOF2_Unset(StringContas, "Admin");
	printf("admin retirado");
	return 1;
}

stock DarHelper(playerid) {
	format(StringContas, sizeof StringContas, "LLADMIN/Admins/%s.sav", Nome(playerid));
	if(!DOF2_FileExists(StringContas)) {
	    DOF2_CreateFile(StringContas);
	}
	DOF2_SetBool(StringContas, "Helper", true);
	SalvarDados(playerid);
	printf("%s novo admin nivel %d", Nome(playerid));
	return 1;
}

stock TirarHelper(playerid) {
    format(StringContas, sizeof StringContas, "LLADMIN/Admins/%s.sav", Nome(playerid));
    if(!DOF2_FileExists(StringContas))
        return printf("Conta %s nao existe.", Nome(playerid));
	DOF2_Unset(StringContas, "Helper");
	printf("helper tirado");
	return 1;
}

stock DarVip(playerid) {
	format(StringContas, sizeof StringContas, "LLADMIN/Admins/%s.sav", Nome(playerid));
	if(!DOF2_FileExists(StringContas)) {
	    DOF2_CreateFile(StringContas);
	}
	DOF2_SetBool(StringContas, "Vip", true);
	SalvarDados(playerid);
	printf("%s novo admin nivel %d", Nome(playerid));
	return 1;
}

stock TirarVip(playerid) {
    format(StringContas, sizeof StringContas, "LLADMIN/Admins/%s.sav", Nome(playerid));
    if(!DOF2_FileExists(StringContas))
        return printf("Conta %s nao existe.", Nome(playerid));
	DOF2_Unset(StringContas, "Vip");
	printf("vip tirado");
	return 1;
}

stock MensagemParaAdmins(mensagem[])
{
	for(new i = 0; i < MAX_PLAYERS; ++i)
	{
	    if(PlayerDados[i][Admin] > 0)
	    {
			Msg(i, ROSA_CHOQUE, mensagem);
		}
	}
	return 1;
}

//SSCANF NUNCA MECHA NESSA PARTE:
stock sscanf(string[], format[], {Float,_}:...)
{
    #if defined isnull
        if (isnull(string))
    #else
        if (string[0] == 0 || (string[0] == 1 && string[1] == 0))
    #endif
        {
            return format[0];
        }
    #pragma tabsize 4
    new
        formatPos = 0,
        stringPos = 0,
        paramPos = 2,
        paramCount = numargs(),
        delim = ' ';
    while (string[stringPos] && string[stringPos] <= ' ')
    {
        stringPos++;
    }
    while (paramPos < paramCount && string[stringPos])
    {
        switch (format[formatPos++])
        {
            case '\0':
            {
                return 0;
            }
            case 'i', 'd':
            {
                new
                    neg = 1,
                    num = 0,
                    ch = string[stringPos];
                if (ch == '-')
                {
                    neg = -1;
                    ch = string[++stringPos];
                }
                do
                {
                    stringPos++;
                    if ('0' <= ch <= '9')
                    {
                        num = (num * 10) + (ch - '0');
                    }
                    else
                    {
                        return -1;
                    }
                }
                while ((ch = string[stringPos]) > ' ' && ch != delim);
                setarg(paramPos, 0, num * neg);
            }
            case 'h', 'x':
            {
                new
                    num = 0,
                    ch = string[stringPos];
                do
                {
                    stringPos++;
                    switch (ch)
                    {
                        case 'x', 'X':
                        {
                            num = 0;
                            continue;
                        }
                        case '0' .. '9':
                        {
                            num = (num << 4) | (ch - '0');
                        }
                        case 'a' .. 'f':
                        {
                            num = (num << 4) | (ch - ('a' - 10));
                        }
                        case 'A' .. 'F':
                        {
                            num = (num << 4) | (ch - ('A' - 10));
                        }
                        default:
                        {
                            return -1;
                        }
                    }
                }
                while ((ch = string[stringPos]) > ' ' && ch != delim);
                setarg(paramPos, 0, num);
            }
            case 'c':
            {
                setarg(paramPos, 0, string[stringPos++]);
            }
            case 'f':
            {

                new changestr[16], changepos = 0, strpos = stringPos;
                while(changepos < 16 && string[strpos] && string[strpos] != delim)
                {
                    changestr[changepos++] = string[strpos++];
                    }
                changestr[changepos] = '\0';
                setarg(paramPos,0,_:floatstr(changestr));
            }
            case 'p':
            {
                delim = format[formatPos++];
                continue;
            }
            case '\'':
            {
                new
                    end = formatPos - 1,
                    ch;
                while ((ch = format[++end]) && ch != '\'') {}
                if (!ch)
                {
                    return -1;
                }
                format[end] = '\0';
                if ((ch = strfind(string, format[formatPos], false, stringPos)) == -1)
                {
                    if (format[end + 1])
                    {
                        return -1;
                    }
                    return 0;
                }
                format[end] = '\'';
                stringPos = ch + (end - formatPos);
                formatPos = end + 1;
            }
            case 'u':
            {
                new
                    end = stringPos - 1,
                    id = 0,
                    bool:num = true,
                    ch;
                while ((ch = string[++end]) && ch != delim)
                {
                    if (num)
                    {
                        if ('0' <= ch <= '9')
                        {
                            id = (id * 10) + (ch - '0');
                        }
                        else
                        {
                            num = false;
                        }
                    }
                }
                if (num && IsPlayerConnected(id))
                {
                    setarg(paramPos, 0, id);
                }
                else
                {
                    #if !defined foreach
                        #define foreach(%1,%2) for (new %2 = 0; %2 < MAX_PLAYERS; %2++) if (IsPlayerConnected(%2))
                        #define __SSCANF_FOREACH__
                    #endif
                    string[end] = '\0';
                    num = false;
                    new
                        name[MAX_PLAYER_NAME];
                    id = end - stringPos;
                    foreach (Player, playerid)
                    {
                        GetPlayerName(playerid, name, sizeof (name));
                        if (!strcmp(name, string[stringPos], true, id))
                        {
                            setarg(paramPos, 0, playerid);
                            num = true;
                            break;
                        }
                    }
                    if (!num)
                    {
                        setarg(paramPos, 0, INVALID_PLAYER_ID);
                    }
                    string[end] = ch;
                    #if defined __SSCANF_FOREACH__
                        #undef foreach
                        #undef __SSCANF_FOREACH__
                    #endif
                }
                stringPos = end;
            }
            case 's', 'z':
            {
                new
                    i = 0,
                    ch;
                if (format[formatPos])
                {
                    while ((ch = string[stringPos++]) && ch != delim)
                    {
                        setarg(paramPos, i++, ch);
                    }
                    if (!i)
                    {
                        return -1;
                    }
                }
                else
                {
                    while ((ch = string[stringPos++]))
                    {
                        setarg(paramPos, i++, ch);
                    }
                }
                stringPos--;
                setarg(paramPos, i, '\0');
            }
            default:
            {
                continue;
            }
        }
        while (string[stringPos] && string[stringPos] != delim && string[stringPos] > ' ')
        {
            stringPos++;
        }
        while (string[stringPos] && (string[stringPos] == delim || string[stringPos] <= ' '))
        {
            stringPos++;
        }
        paramPos++;
    }
    do
    {
        if ((delim = format[formatPos++]) > ' ')
        {
            if (delim == '\'')
            {
                while ((delim = format[formatPos++]) && delim != '\'') {}
            }
            else if (delim != 'z')
            {
                return delim;
            }
        }
    }
    while (delim > ' ');
    return 0;
}

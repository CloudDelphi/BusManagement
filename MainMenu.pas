unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, XPMan;

type
  TformMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    menuFile: TMenuItem;
    Logout1: TMenuItem;
    Seperator1: TMenuItem;
    menuExit: TMenuItem;
    menuHelp: TMenuItem;
    menuAbout: TMenuItem;
    menuNavigate: TMenuItem;
    menuAdmin: TMenuItem;
    menuDriver: TMenuItem;
    menuBus: TMenuItem;
    menuStation: TMenuItem;
    N1: TMenuItem;
    Label1: TLabel;
    lblUsername: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btnDriver: TButton;
    btnStation: TButton;
    Label3: TLabel;
    btnStop: TButton;
    btnAdmin: TButton;
    lblLogout: TLabel;
    XPManifest1: TXPManifest;
    btnBus: TButton;
    menuLogs: TMenuItem;
    procedure menuExitClick(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure lblLogoutClick(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
    procedure btnDriverClick(Sender: TObject);
    procedure menuDriverClick(Sender: TObject);
    procedure menuAdminClick(Sender: TObject);
    procedure menuBusClick(Sender: TObject);
    procedure btnBusClick(Sender: TObject);
    procedure btnStationClick(Sender: TObject);
    procedure menuAboutClick(Sender: TObject);
    procedure menuStationClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure menuLogsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainMenu: TformMainMenu;

implementation

uses Manager, Driver, Bus, Station, About, Login, Stop;

{$R *.dfm}

procedure TformMainMenu.menuExitClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TformMainMenu.Logout1Click(Sender: TObject);
begin
    formLogin.Show;
    Visible := False;
end;

procedure TformMainMenu.lblLogoutClick(Sender: TObject);
begin
    formLogin.Show;
    Visible := False;
end;

procedure TformMainMenu.btnAdminClick(Sender: TObject);
begin
    formManager.ShowModal;
end;

procedure TformMainMenu.btnDriverClick(Sender: TObject);
begin
    formDriver.ShowModal;
end;

procedure TformMainMenu.menuDriverClick(Sender: TObject);
begin
    formDriver.ShowModal;
end;

procedure TformMainMenu.menuAdminClick(Sender: TObject);
begin
    formManager.ShowModal;
end;

procedure TformMainMenu.menuBusClick(Sender: TObject);
begin
    formBus.ShowModal;
end;

procedure TformMainMenu.btnBusClick(Sender: TObject);
begin
    formBus.ShowModal;
end;

procedure TformMainMenu.btnStationClick(Sender: TObject);
begin
    formStation.ShowModal;
end;

procedure TformMainMenu.menuAboutClick(Sender: TObject);
begin
    formAbout.ShowModal;
end;

procedure TformMainMenu.menuStationClick(Sender: TObject);
begin
    formStation.ShowModal;
end;

procedure TformMainMenu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Application.Terminate;
end;

procedure TformMainMenu.FormShow(Sender: TObject);
begin
    lblUsername.Caption := formLogin.loggedInUser;
end;

procedure TformMainMenu.btnStopClick(Sender: TObject);
begin
    formStop.Show;
end;

procedure TformMainMenu.menuLogsClick(Sender: TObject);
begin
    formStop.Show;
end;

end.

unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TformLogin = class(TForm)
    lblLogin: TLabel;
    btnLogin: TButton;
    txtUsername: TEdit;
    txtPassword: TEdit;
    lblWarning: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLoginClick(Sender: TObject);
    procedure txtPasswordExit(Sender: TObject);
    procedure txtUsernameExit(Sender: TObject);
    procedure txtUsernameEnter(Sender: TObject);
    procedure txtPasswordEnter(Sender: TObject);
    procedure txtUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure txtPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    loggedInUser : String;
  end;

var
  formLogin: TformLogin;

implementation

uses Database, ADODB, MainMenu, DB;

{$R *.dfm}

procedure TformLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Application.Terminate;
end;

procedure TformLogin.btnLoginClick(Sender: TObject);
var
    queryLogin : TADOQuery;

begin
    queryLogin := TADOQuery.Create(nil);

    try
        queryLogin.Connection := DataModule1.connectionBusDatabase;
        queryLogin.Close;
        queryLogin.SQL.Clear;
        queryLogin.SQL.Add('SELECT Manager_Username, Manager_Password FROM Manager WHERE (Manager_Username=' + QuotedStr(txtUsername.Text) + ') AND (Manager_Password=' + QuotedStr(txtPassword.Text) + ');');
        queryLogin.Open;

        if (queryLogin.FieldValues['Manager_Username'] = txtUsername.Text) and (queryLogin.FieldValues['Manager_Password'] = txtPassword.Text) then
        begin
            loggedInUser := txtUsername.Text;
            lblWarning.Caption := '';
            formMainMenu.Show;
            Visible := False;

        end
        else
        begin
            lblWarning.Caption := 'Wrong Username/Password. Please try again.'
        end;
    finally
        queryLogin.Free;
    end;
end;

procedure TformLogin.txtPasswordExit(Sender: TObject);
begin
    if (Trim(txtPassword.Text) = '') then
    begin
        txtPassword.PasswordChar := Char(0);
        txtPassword.Text := 'Password';
    end;
end;

procedure TformLogin.txtUsernameExit(Sender: TObject);
begin
    if (Trim(txtUsername.Text) = '') then
    begin
        txtUsername.Text := 'Username';
    end;
end;

procedure TformLogin.txtUsernameEnter(Sender: TObject);
begin
    if (txtUsername.Text = 'Username') then
    begin
        txtUsername.Text := '';
    end;
end;

procedure TformLogin.txtPasswordEnter(Sender: TObject);
begin
    if (txtPassword.Text = 'Password') then
    begin
        txtPassword.Text := '';
        txtPassword.PasswordChar := '*';
    end;
end;

procedure TformLogin.txtUsernameKeyPress(Sender: TObject; var Key: Char);
begin
    if(Key = Char(13))then
    begin
        btnLogin.Click;
    end;
end;

procedure TformLogin.txtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
    if(Key = Char(13))then
    begin
        btnLogin.Click;
    end;
end;

end.

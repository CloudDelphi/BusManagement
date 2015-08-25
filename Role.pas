unit Role;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TformRole = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRole: TformRole;

implementation

uses Database;

{$R *.dfm}

procedure TformRole.btnCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TformRole.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DataModule1.tableRole.Active := False;
    DataModule1.tableRole.Active := True;

    DataModule1.tableManager.Active := False;
    DataModule1.tableManager.Active := True;
end;

end.

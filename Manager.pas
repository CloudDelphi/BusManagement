unit Manager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TformManager = class(TForm)
    Label1: TLabel;
    btnClose: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btnRole: TButton;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure btnCloseClick(Sender: TObject);
    procedure btnRoleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formManager: TformManager;

implementation

uses Database, Role;

{$R *.dfm}

procedure TformManager.btnCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TformManager.btnRoleClick(Sender: TObject);
begin
    formRole.ShowModal;
end;

end.

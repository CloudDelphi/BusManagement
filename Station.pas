unit Station;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Mask;

type
  TformStation = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    btnClose: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formStation: TformStation;

implementation

uses Database;

{$R *.dfm}

procedure TformStation.btnCloseClick(Sender: TObject);
begin
    Close;
end;

end.

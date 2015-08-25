unit Stop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Mask;

type
  TformStop = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    btnClose: TButton;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Splitter2: TSplitter;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formStop: TformStop;

implementation

uses Database;

{$R *.dfm}

procedure TformStop.btnCloseClick(Sender: TObject);
begin
    Close;
end;

end.

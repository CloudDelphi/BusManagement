unit Bus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TformBus = class(TForm)
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btnClose: TButton;
    btnBusType: TButton;
    DBEdit1: TDBEdit;
    DBGrid2: TDBGrid;
    procedure btnCloseClick(Sender: TObject);
    procedure btnBusTypeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formBus: TformBus;

implementation

uses Database, BusType, Driver;

{$R *.dfm}

procedure TformBus.btnCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TformBus.btnBusTypeClick(Sender: TObject);
begin
    formBusType.ShowModal;
end;


procedure TformBus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    formDriver.DBLookupComboBox1.Refresh;
    formDriver.Refresh;
    DataModule1.tableBus.Active := False;
    DataModule1.tableBus.Active := True;
    DataModule1.tableDriver.Active := False;
    DataModule1.tableDriver.Active := True;

end;

end.

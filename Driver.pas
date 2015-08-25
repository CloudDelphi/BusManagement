unit Driver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Mask, ComCtrls;

type
  TformDriver = class(TForm)
    Label1: TLabel;
    btnClose: TButton;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    btnAddBus: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure btnAddBusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDriver: TformDriver;

implementation

uses Database, Bus;

{$R *.dfm}

procedure TformDriver.btnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TformDriver.DateTimePicker1Change(Sender: TObject);
begin
    DBEdit5.Text := DateToStr(DateTimePicker1.DateTime);
end;


procedure TformDriver.btnAddBusClick(Sender: TObject);
begin
    formBus.ShowModal;
end;

end.

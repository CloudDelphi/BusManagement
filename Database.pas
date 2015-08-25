unit Database;

interface

uses
  SysUtils, Classes, DB, ADODB, Controls, StdCtrls;

type
  TDataModule1 = class(TDataModule)
    connectionBusDatabase: TADOConnection;
    dataBus: TDataSource;
    dataDriver: TDataSource;
    dataStation: TDataSource;
    dataManager: TDataSource;
    dataStop: TDataSource;
    tableBus: TADOTable;
    tableStation: TADOTable;
    tableManager: TADOTable;
    tableStop: TADOTable;
    tableManagerManager_ID: TAutoIncField;
    tableManagerManager_Username: TWideStringField;
    tableManagerManager_Password: TWideStringField;
    tableBusType: TADOTable;
    dataBusType: TDataSource;
    tableDriver: TADOTable;
    tableDriverDriver_ID: TAutoIncField;
    tableDriverDriver_First_Name: TWideStringField;
    tableDriverDriver_Last_Name: TWideStringField;
    tableDriverDriver_Age: TIntegerField;
    tableDriverDriver_Hired_Date: TWideStringField;
    tableDriverDriver_Salary: TIntegerField;
    tableDriverDriver_Bus_ID_FK: TIntegerField;
    Label7: TLabel;
    tableBusTypeBusType_ID: TAutoIncField;
    tableBusTypeBusType: TWideStringField;
    tableBusBus_ID: TIntegerField;
    tableBusBusType_ID_FK: TIntegerField;
    tableStationStation_ID: TAutoIncField;
    tableStationStation_Address: TWideStringField;
    tableRole: TADOTable;
    dataRole: TDataSource;
    tableManagerManager_Role_ID_FK: TIntegerField;
    tableRoleRole_ID: TAutoIncField;
    tableRoleRole_Type: TWideStringField;
    viewBusType: TADOTable;
    dataViewBusType: TDataSource;
    viewRole: TADOTable;
    dataViewRole: TDataSource;
    viewStop: TADOTable;
    dataViewStop: TDataSource;
    tableStopStop_ID: TAutoIncField;
    tableStopBus_ID_FK: TIntegerField;
    tableStopStation_ID_FK: TIntegerField;
    tableStopStop_Duration: TIntegerField;
    tableStopStop_Date: TWideStringField;
    tableStopStop_Time: TWideStringField;
    procedure viewBusTypeAfterPost(DataSet: TDataSet);
    procedure viewRoleAfterPost(DataSet: TDataSet);
    procedure tableBusAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.viewBusTypeAfterPost(DataSet: TDataSet);
begin
    viewBusType.Active := False;
    viewBusType.Active := True;
end;

procedure TDataModule1.viewRoleAfterPost(DataSet: TDataSet);
begin
    viewRole.Active := False;
    viewRole.Active := True;
end;

procedure TDataModule1.tableBusAfterPost(DataSet: TDataSet);
begin

    tableBus.Active := False;
    tableBus.Active := True;

end;

end.

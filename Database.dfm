object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1099
  Top = 162
  Height = 551
  Width = 439
  object connectionBusDatabase: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=BusDatabase;Data Source=(local);Use Pro' +
      'cedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workst' +
      'ation ID=PSYRINGE-WIN;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 184
    Top = 24
  end
  object dataBus: TDataSource
    DataSet = tableBus
    Left = 120
    Top = 96
  end
  object dataDriver: TDataSource
    DataSet = tableDriver
    Left = 120
    Top = 208
  end
  object dataStation: TDataSource
    DataSet = tableStation
    Left = 120
    Top = 256
  end
  object dataManager: TDataSource
    DataSet = tableManager
    Left = 344
    Top = 152
  end
  object dataStop: TDataSource
    DataSet = tableStop
    Left = 344
    Top = 208
  end
  object tableBus: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    AfterPost = tableBusAfterPost
    TableName = 'Bus'
    Left = 48
    Top = 96
    object tableBusBus_ID: TIntegerField
      FieldName = 'Bus_ID'
    end
    object tableBusBusType_ID_FK: TIntegerField
      FieldName = 'BusType_ID_FK'
    end
  end
  object tableStation: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    TableName = 'Station'
    Left = 48
    Top = 256
    object tableStationStation_ID: TAutoIncField
      FieldName = 'Station_ID'
      ReadOnly = True
    end
    object tableStationStation_Address: TWideStringField
      FieldName = 'Station_Address'
      Size = 4000
    end
  end
  object tableManager: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    TableName = 'Manager'
    Left = 280
    Top = 152
    object tableManagerManager_ID: TAutoIncField
      DisplayWidth = 9
      FieldName = 'Manager_ID'
      ReadOnly = True
    end
    object tableManagerManager_Username: TWideStringField
      DisplayWidth = 27
      FieldName = 'Manager_Username'
      Size = 50
    end
    object tableManagerManager_Password: TWideStringField
      DisplayWidth = 25
      FieldName = 'Manager_Password'
      Size = 50
    end
    object tableManagerManager_Role_ID_FK: TIntegerField
      FieldName = 'Manager_Role_ID_FK'
    end
  end
  object tableStop: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    IndexFieldNames = 'Bus_ID_FK'
    MasterFields = 'Bus_ID'
    MasterSource = dataBus
    TableName = 'Stop'
    Left = 280
    Top = 208
    object tableStopStop_ID: TAutoIncField
      FieldName = 'Stop_ID'
      ReadOnly = True
    end
    object tableStopBus_ID_FK: TIntegerField
      FieldName = 'Bus_ID_FK'
    end
    object tableStopStation_ID_FK: TIntegerField
      FieldName = 'Station_ID_FK'
    end
    object tableStopStop_Duration: TIntegerField
      FieldName = 'Stop_Duration'
    end
    object tableStopStop_Date: TWideStringField
      FieldName = 'Stop_Date'
      Size = 10
    end
    object tableStopStop_Time: TWideStringField
      FieldName = 'Stop_Time'
      Size = 8
    end
  end
  object tableBusType: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    TableName = 'BusType'
    Left = 48
    Top = 152
    object tableBusTypeBusType_ID: TAutoIncField
      FieldName = 'BusType_ID'
      ReadOnly = True
    end
    object tableBusTypeBusType: TWideStringField
      FieldName = 'BusType'
      Size = 50
    end
  end
  object dataBusType: TDataSource
    DataSet = tableBusType
    Left = 120
    Top = 152
  end
  object tableDriver: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    IndexFieldNames = 'Driver_Bus_ID_FK'
    TableName = 'Driver'
    Left = 48
    Top = 208
    object tableDriverDriver_ID: TAutoIncField
      FieldName = 'Driver_ID'
      ReadOnly = True
    end
    object tableDriverDriver_First_Name: TWideStringField
      FieldName = 'Driver_First_Name'
      Size = 50
    end
    object tableDriverDriver_Last_Name: TWideStringField
      FieldName = 'Driver_Last_Name'
      Size = 50
    end
    object tableDriverDriver_Age: TIntegerField
      FieldName = 'Driver_Age'
    end
    object tableDriverDriver_Hired_Date: TWideStringField
      FieldName = 'Driver_Hired_Date'
      Size = 10
    end
    object tableDriverDriver_Salary: TIntegerField
      FieldName = 'Driver_Salary'
    end
    object tableDriverDriver_Bus_ID_FK: TIntegerField
      FieldName = 'Driver_Bus_ID_FK'
    end
  end
  object Label7: TLabel
    Left = 32
    Top = 224
    Width = 29
    Height = 13
    Caption = 'Salary'
  end
  object tableRole: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    TableName = 'Role'
    Left = 280
    Top = 96
    object tableRoleRole_ID: TAutoIncField
      FieldName = 'Role_ID'
      ReadOnly = True
    end
    object tableRoleRole_Type: TWideStringField
      FieldName = 'Role_Type'
      Size = 50
    end
  end
  object dataRole: TDataSource
    DataSet = tableRole
    Left = 344
    Top = 96
  end
  object viewBusType: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    AfterPost = viewBusTypeAfterPost
    TableName = 'BusTypeView'
    Left = 48
    Top = 368
  end
  object dataViewBusType: TDataSource
    DataSet = viewBusType
    Left = 136
    Top = 368
  end
  object viewRole: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    AfterPost = viewRoleAfterPost
    TableName = 'RoleView'
    Left = 264
    Top = 368
  end
  object dataViewRole: TDataSource
    DataSet = viewRole
    Left = 344
    Top = 368
  end
  object viewStop: TADOTable
    Active = True
    Connection = connectionBusDatabase
    CursorType = ctStatic
    IndexFieldNames = 'Bus_ID;Driver_ID'
    MasterFields = 'Driver_Bus_ID_FK;Driver_ID'
    MasterSource = dataDriver
    TableName = 'StopView'
    Left = 48
    Top = 440
  end
  object dataViewStop: TDataSource
    DataSet = viewStop
    Left = 136
    Top = 440
  end
end

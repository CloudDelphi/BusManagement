object formDriver: TformDriver
  Left = 536
  Top = 259
  BorderStyle = bsSingle
  Caption = 'Driver Management'
  ClientHeight = 483
  ClientWidth = 977
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 55
    Height = 19
    Caption = 'Drivers'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object btnClose: TButton
    Left = 16
    Top = 440
    Width = 945
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object DBNavigator1: TDBNavigator
    Left = 336
    Top = 392
    Width = 620
    Height = 25
    DataSource = DataModule1.dataDriver
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 48
    Width = 305
    Height = 369
    Caption = 'Driver Info'
    TabOrder = 0
    object Label3: TLabel
      Left = 32
      Top = 32
      Width = 50
      Height = 13
      Caption = 'First Name'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 32
      Top = 80
      Width = 51
      Height = 13
      Caption = 'Last Name'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 32
      Top = 128
      Width = 19
      Height = 13
      Caption = 'Age'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 32
      Top = 176
      Width = 51
      Height = 13
      Caption = 'Hired Date'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 32
      Top = 224
      Width = 29
      Height = 13
      Caption = 'Salary'
      FocusControl = DBEdit6
    end
    object Label2: TLabel
      Left = 32
      Top = 272
      Width = 40
      Height = 13
      Caption = 'Bus Tag'
      FocusControl = DBEdit6
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 48
      Width = 249
      Height = 21
      DataField = 'Driver_First_Name'
      DataSource = DataModule1.dataDriver
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 96
      Width = 249
      Height = 21
      DataField = 'Driver_Last_Name'
      DataSource = DataModule1.dataDriver
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 32
      Top = 144
      Width = 134
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'Driver_Age'
      DataSource = DataModule1.dataDriver
      ParentBiDiMode = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 32
      Top = 192
      Width = 113
      Height = 21
      DataField = 'Driver_Hired_Date'
      DataSource = DataModule1.dataDriver
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 32
      Top = 240
      Width = 134
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'Driver_Salary'
      DataSource = DataModule1.dataDriver
      ParentBiDiMode = False
      TabOrder = 5
    end
    object DateTimePicker1: TDateTimePicker
      Left = 152
      Top = 192
      Width = 17
      Height = 25
      BevelEdges = []
      BevelOuter = bvNone
      Date = 42236.676138576390000000
      Time = 42236.676138576390000000
      TabOrder = 4
      OnChange = DateTimePicker1Change
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 288
      Width = 153
      Height = 21
      DataField = 'Driver_Bus_ID_FK'
      DataSource = DataModule1.dataDriver
      KeyField = 'Bus_ID'
      ListField = 'Bus_ID'
      ListSource = DataModule1.dataBus
      TabOrder = 6
    end
    object btnAddBus: TButton
      Left = 200
      Top = 288
      Width = 89
      Height = 25
      Caption = 'Add Bus'
      TabOrder = 7
      OnClick = btnAddBusClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 16
    Width = 625
    Height = 361
    DataSource = DataModule1.dataDriver
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Driver_ID'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver_First_Name'
        Title.Alignment = taCenter
        Title.Caption = 'First Name'
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver_Last_Name'
        Title.Alignment = taCenter
        Title.Caption = 'Last Name'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver_Age'
        Title.Alignment = taCenter
        Title.Caption = 'Age'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver_Hired_Date'
        Title.Alignment = taCenter
        Title.Caption = 'Hired Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver_Salary'
        Title.Alignment = taCenter
        Title.Caption = 'Salary'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver_Bus_ID_FK'
        Title.Alignment = taCenter
        Title.Caption = 'Bus Tag'
        Visible = True
      end>
  end
end

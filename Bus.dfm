object formBus: TformBus
  Left = 665
  Top = 252
  BorderStyle = bsSingle
  Caption = 'Bus Management'
  ClientHeight = 445
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 32
    Top = 16
    Width = 49
    Height = 19
    Caption = 'Buses'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 360
    Width = 370
    Height = 25
    DataSource = DataModule1.dataViewBusType
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 48
    Width = 369
    Height = 129
    Caption = 'Bus Info'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Bus Tag'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 45
      Height = 13
      Caption = 'Bus Type'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 88
      Width = 225
      Height = 21
      DataField = 'BusType_ID_FK'
      DataSource = DataModule1.dataViewBusType
      KeyField = 'BusType_ID'
      ListField = 'BusType'
      ListSource = DataModule1.dataBusType
      TabOrder = 1
    end
    object btnBusType: TButton
      Left = 256
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Add Bus Type'
      TabOrder = 2
      OnClick = btnBusTypeClick
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 321
      Height = 21
      DataField = 'Bus_ID'
      DataSource = DataModule1.dataViewBusType
      TabOrder = 0
    end
  end
  object btnClose: TButton
    Left = 16
    Top = 408
    Width = 369
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 184
    Width = 369
    Height = 177
    DataSource = DataModule1.dataViewBusType
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Bus_ID'
        Title.Alignment = taCenter
        Title.Caption = 'Bus Tag'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BusType'
        Title.Alignment = taCenter
        Title.Caption = 'Bus Type'
        Width = 166
        Visible = True
      end>
  end
end

object formBusType: TformBusType
  Left = 282
  Top = 156
  BorderStyle = bsSingle
  Caption = 'Bus Type'
  ClientHeight = 272
  ClientWidth = 609
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
  object DBGrid1: TDBGrid
    Left = 264
    Top = 24
    Width = 329
    Height = 153
    DataSource = DataModule1.dataBusType
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BusType_ID'
        Title.Alignment = taCenter
        Title.Caption = 'Bus Type ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BusType'
        Title.Alignment = taCenter
        Title.Caption = 'Bus Type'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 264
    Top = 184
    Width = 330
    Height = 25
    DataSource = DataModule1.dataBusType
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 24
    Width = 233
    Height = 185
    Caption = 'Bus Type Info'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 45
      Height = 13
      Caption = 'Bus Type'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 48
      Width = 201
      Height = 21
      DataField = 'BusType'
      DataSource = DataModule1.dataBusType
      TabOrder = 0
    end
  end
  object btnClose: TButton
    Left = 16
    Top = 232
    Width = 577
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
end

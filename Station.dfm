object formStation: TformStation
  Left = 285
  Top = 144
  BorderStyle = bsSingle
  Caption = 'Station Management'
  ClientHeight = 362
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
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 63
    Height = 19
    Caption = 'Stations'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 48
    Width = 577
    Height = 105
    Caption = 'Station Info'
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 74
      Height = 13
      Caption = 'Station Address'
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 40
      Width = 553
      Height = 57
      DataField = 'Station_Address'
      DataSource = DataModule1.dataStation
      TabOrder = 0
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 272
    Width = 580
    Height = 25
    DataSource = DataModule1.dataStation
    TabOrder = 2
  end
  object btnClose: TButton
    Left = 16
    Top = 320
    Width = 577
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 160
    Width = 577
    Height = 105
    DataSource = DataModule1.dataStation
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Station_ID'
        Title.Alignment = taCenter
        Title.Caption = 'Station ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Station_Address'
        Title.Alignment = taCenter
        Title.Caption = 'Station Address'
        Visible = True
      end>
  end
end

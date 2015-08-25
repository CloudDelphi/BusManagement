object formStop: TformStop
  Left = 287
  Top = 40
  BorderStyle = bsSingle
  Caption = 'Stop Logs'
  ClientHeight = 751
  ClientWidth = 1169
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
    Width = 79
    Height = 19
    Caption = 'Stop Logs'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 24
    Top = 56
    Width = 1121
    Height = 599
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 314
      Width = 1119
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 1
      Top = 317
      Width = 1119
      Height = 281
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 346
        Top = 1
        Width = 1
        Height = 279
      end
      object DBGrid1: TDBGrid
        Left = 347
        Top = 1
        Width = 771
        Height = 279
        Align = alClient
        DataSource = DataModule1.dataStop
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Stop_ID'
            Title.Alignment = taCenter
            Title.Caption = 'Stop ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bus_ID_FK'
            Title.Alignment = taCenter
            Title.Caption = 'Bus Tag'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Station_ID_FK'
            Title.Alignment = taCenter
            Title.Caption = 'Station ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stop_Duration'
            Title.Alignment = taCenter
            Title.Caption = 'Stop Duration'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stop_Date'
            Title.Alignment = taCenter
            Title.Caption = 'Stop Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stop_Time'
            Title.Alignment = taCenter
            Title.Caption = 'Stop Time'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 345
        Height = 279
        Align = alLeft
        Caption = 'Stop Info'
        TabOrder = 0
        object Label2: TLabel
          Left = 32
          Top = 32
          Width = 40
          Height = 13
          Caption = 'Bus Tag'
        end
        object Label3: TLabel
          Left = 32
          Top = 72
          Width = 47
          Height = 13
          Caption = 'Station ID'
        end
        object Label4: TLabel
          Left = 32
          Top = 112
          Width = 65
          Height = 13
          Caption = 'Stop Duration'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 32
          Top = 152
          Width = 48
          Height = 13
          Caption = 'Stop Date'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 32
          Top = 192
          Width = 48
          Height = 13
          Caption = 'Stop Time'
          FocusControl = DBEdit5
        end
        object DBEdit3: TDBEdit
          Left = 32
          Top = 128
          Width = 134
          Height = 21
          DataField = 'Stop_Duration'
          DataSource = DataModule1.dataStop
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 32
          Top = 168
          Width = 134
          Height = 21
          DataField = 'Stop_Date'
          DataSource = DataModule1.dataStop
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 32
          Top = 208
          Width = 108
          Height = 21
          DataField = 'Stop_Time'
          DataSource = DataModule1.dataStop
          TabOrder = 2
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 32
          Top = 88
          Width = 201
          Height = 21
          DataField = 'Station_ID_FK'
          DataSource = DataModule1.dataStop
          KeyField = 'Station_ID'
          ListField = 'Station_ID'
          ListSource = DataModule1.dataStation
          TabOrder = 3
        end
      end
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 1119
      Height = 313
      Align = alTop
      DataSource = DataModule1.dataDriver
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object btnClose: TButton
    Left = 24
    Top = 712
    Width = 1121
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 664
    Width = 1120
    Height = 25
    DataSource = DataModule1.dataStop
    TabOrder = 1
  end
end

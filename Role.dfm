object formRole: TformRole
  Left = 315
  Top = 167
  BorderStyle = bsSingle
  Caption = 'Role Management'
  ClientHeight = 351
  ClientWidth = 418
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
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 44
    Height = 19
    Caption = 'Roles'
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
    Width = 385
    Height = 105
    Caption = 'Roles Info'
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 308
      Height = 13
      Caption = 'Be careful! Changing Admin rights may cause problem with logins.'
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Role Type'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 64
      Width = 337
      Height = 21
      DataField = 'Role_Type'
      DataSource = DataModule1.dataRole
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 160
    Width = 385
    Height = 97
    DataSource = DataModule1.dataRole
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Role_ID'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Role_Type'
        Title.Alignment = taCenter
        Title.Caption = 'Type'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 264
    Width = 390
    Height = 25
    DataSource = DataModule1.dataRole
    TabOrder = 2
  end
  object btnClose: TButton
    Left = 16
    Top = 312
    Width = 393
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
end

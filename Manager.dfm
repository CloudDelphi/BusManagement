object formManager: TformManager
  Left = 230
  Top = 220
  BorderStyle = bsSingle
  Caption = 'Admin Control Panel'
  ClientHeight = 440
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 75
    Height = 19
    Caption = 'Managers'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object btnClose: TButton
    Left = 24
    Top = 400
    Width = 841
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 56
    Width = 337
    Height = 321
    Caption = 'Manager Info'
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Username'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 24
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Password'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 24
      Top = 128
      Width = 22
      Height = 13
      Caption = 'Role'
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 48
      Width = 289
      Height = 21
      DataField = 'Manager_Username'
      DataSource = DataModule1.dataViewRole
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 96
      Width = 289
      Height = 21
      DataField = 'Manager_Password'
      DataSource = DataModule1.dataViewRole
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 144
      Width = 193
      Height = 21
      DataField = 'Manager_Role_ID_FK'
      DataSource = DataModule1.dataViewRole
      KeyField = 'Role_ID'
      ListField = 'Role_Type'
      ListSource = DataModule1.dataRole
      TabOrder = 2
    end
    object btnRole: TButton
      Left = 224
      Top = 144
      Width = 89
      Height = 25
      Caption = 'Change Roles'
      TabOrder = 3
      OnClick = btnRoleClick
    end
  end
  object DBGrid2: TDBGrid
    Left = 368
    Top = 16
    Width = 497
    Height = 337
    DataSource = DataModule1.dataViewRole
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Manager_ID'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Manager_Username'
        Title.Alignment = taCenter
        Title.Caption = 'Username'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Manager_Password'
        Title.Alignment = taCenter
        Title.Caption = 'Password'
        Width = 134
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
    Left = 368
    Top = 352
    Width = 500
    Height = 25
    DataSource = DataModule1.dataViewRole
    TabOrder = 2
  end
end

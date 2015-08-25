object formMainMenu: TformMainMenu
  Left = 370
  Top = 141
  BorderStyle = bsSingle
  Caption = 'Main Menu'
  ClientHeight = 376
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 56
    Width = 45
    Height = 18
    Caption = 'Hello, '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUsername: TLabel
    Left = 96
    Top = 56
    Width = 4
    Height = 18
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
    Top = 8
    Width = 274
    Height = 34
    Caption = 'Administrator Panel'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblLogout: TLabel
    Left = 448
    Top = 8
    Width = 42
    Height = 15
    Cursor = crHandPoint
    Caption = 'Logout!'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clHotLight
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = lblLogoutClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 88
    Width = 481
    Height = 185
    Caption = 'General'
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 120
      Width = 450
      Height = 13
      Caption = 
        '________________________________________________________________' +
        '___________'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clScrollBar
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnDriver: TButton
      Left = 16
      Top = 24
      Width = 449
      Height = 25
      Caption = 'Driver Management'
      Default = True
      TabOrder = 0
      OnClick = btnDriverClick
    end
    object btnStation: TButton
      Left = 16
      Top = 88
      Width = 449
      Height = 25
      Caption = 'Station List'
      TabOrder = 2
      OnClick = btnStationClick
    end
    object btnStop: TButton
      Left = 16
      Top = 144
      Width = 449
      Height = 25
      Caption = 'Bus Stop Logs'
      TabOrder = 3
      OnClick = btnStopClick
    end
    object btnBus: TButton
      Left = 16
      Top = 56
      Width = 449
      Height = 25
      Caption = 'Bus Management'
      TabOrder = 1
      OnClick = btnBusClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 288
    Width = 481
    Height = 73
    Caption = 'Administrator'
    TabOrder = 1
    object btnAdmin: TButton
      Left = 16
      Top = 24
      Width = 449
      Height = 25
      Caption = 'Admin Control Panel'
      TabOrder = 0
      OnClick = btnAdminClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 8
    object menuFile: TMenuItem
      Caption = '&File'
      object Logout1: TMenuItem
        Caption = '&Logout...'
        ShortCut = 16460
        OnClick = Logout1Click
      end
      object Seperator1: TMenuItem
        Caption = '-'
      end
      object menuExit: TMenuItem
        Caption = '&Exit'
        ShortCut = 16471
        OnClick = menuExitClick
      end
    end
    object menuNavigate: TMenuItem
      Caption = '&Navigate'
      object menuDriver: TMenuItem
        Caption = '&Driver Manager'
        ShortCut = 16452
        OnClick = menuDriverClick
      end
      object menuBus: TMenuItem
        Caption = '&Bus Manager'
        ShortCut = 16450
        OnClick = menuBusClick
      end
      object menuStation: TMenuItem
        Caption = '&Station List'
        ShortCut = 16467
        OnClick = menuStationClick
      end
      object menuLogs: TMenuItem
        Caption = 'Bus Stop Logs'
        ShortCut = 16454
        OnClick = menuLogsClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object menuAdmin: TMenuItem
        Caption = '&Admin Manager'
        ShortCut = 16449
        OnClick = menuAdminClick
      end
    end
    object menuHelp: TMenuItem
      Caption = '&Help'
      object menuAbout: TMenuItem
        Caption = '&About'
        OnClick = menuAboutClick
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 16
    Top = 8
  end
end

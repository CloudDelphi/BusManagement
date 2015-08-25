object formAbout: TformAbout
  Left = 373
  Top = 163
  BorderStyle = bsToolWindow
  Caption = 'About'
  ClientHeight = 263
  ClientWidth = 281
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 249
    Height = 201
    Caption = 'Credits'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 181
      Height = 13
      Caption = '- Database Design && GUI Programmer:'
    end
    object Label3: TLabel
      Left = 40
      Top = 48
      Width = 170
      Height = 13
      Caption = '- Mohammad Reza Hajianpour'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 80
      Width = 162
      Height = 13
      Caption = '- E-Mail: psyringe@protonmail.com'
    end
    object Label5: TLabel
      Left = 16
      Top = 112
      Width = 82
      Height = 13
      Caption = '- Published under'
    end
    object Label6: TLabel
      Left = 101
      Top = 112
      Width = 23
      Height = 13
      Caption = 'MIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 125
      Top = 112
      Width = 40
      Height = 13
      Caption = 'License.'
    end
    object Label8: TLabel
      Left = 16
      Top = 144
      Width = 73
      Height = 13
      Caption = '- Last Revision:'
    end
    object Label2: TLabel
      Left = 94
      Top = 144
      Width = 69
      Height = 13
      Caption = '2015/08/25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 176
      Width = 44
      Height = 13
      Caption = '- Version:'
    end
    object Label10: TLabel
      Left = 62
      Top = 176
      Width = 19
      Height = 13
      Caption = '0.7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object btnClose: TButton
    Left = 16
    Top = 224
    Width = 249
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = btnCloseClick
  end
end

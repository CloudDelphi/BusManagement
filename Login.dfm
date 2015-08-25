object formLogin: TformLogin
  Left = 661
  Top = 303
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 201
  ClientWidth = 360
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
  object lblLogin: TLabel
    Left = 80
    Top = 24
    Width = 208
    Height = 34
    Caption = 'Manager Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblWarning: TLabel
    Left = 8
    Top = 64
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnLogin: TButton
    Left = 8
    Top = 160
    Width = 345
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object txtUsername: TEdit
    Left = 8
    Top = 96
    Width = 345
    Height = 21
    TabOrder = 0
    Text = 'Username'
    OnEnter = txtUsernameEnter
    OnExit = txtUsernameExit
    OnKeyPress = txtUsernameKeyPress
  end
  object txtPassword: TEdit
    Left = 8
    Top = 128
    Width = 345
    Height = 21
    TabOrder = 1
    Text = 'Password'
    OnEnter = txtPasswordEnter
    OnExit = txtPasswordExit
    OnKeyPress = txtPasswordKeyPress
  end
end

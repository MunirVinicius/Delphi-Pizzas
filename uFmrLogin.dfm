inherited fmrLogin: TfmrLogin
  AlphaBlend = True
  AlphaBlendValue = 245
  Caption = 'Mensagens'
  ClientHeight = 413
  ClientWidth = 500
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 500
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitle: TPanel
    Width = 500
    Height = 403
    Align = alClient
    ExplicitWidth = 500
  end
  inherited pnlFooter: TPanel
    Top = 403
    Width = 500
    Visible = False
    ExplicitTop = 403
    ExplicitWidth = 500
  end
  inherited pnlMain: TPanel
    Left = 8
    Top = 15
    Width = 480
    Height = 390
    Align = alNone
    Anchors = []
    Color = clBlack
    Font.Color = clWhite
    ParentFont = False
    ExplicitLeft = 8
    ExplicitTop = 15
    ExplicitWidth = 480
    ExplicitHeight = 390
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 33
      Height = 86
      Caption = ':)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -64
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 108
      Width = 67
      Height = 37
      Caption = 'Login'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 164
      Width = 157
      Height = 25
      Caption = 'Nome do Usuario: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 208
      Width = 148
      Height = 25
      Caption = 'Senha de acesso: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 24
      Top = 151
      Width = 50
      Height = 7
      Shape = bsTopLine
    end
    object btnEntrar: TSpeedButton
      Left = 24
      Top = 277
      Width = 180
      Height = 40
      Caption = 'Entrar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEntrarClick
    end
    object btnCancelar: TSpeedButton
      Left = 240
      Top = 277
      Width = 180
      Height = 40
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
    end
    object edtNome: TEdit
      Left = 240
      Top = 161
      Width = 121
      Height = 33
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Nome'
    end
    object edtSenha: TEdit
      Left = 240
      Top = 205
      Width = 121
      Height = 33
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Senha'
    end
  end
end

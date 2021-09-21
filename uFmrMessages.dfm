inherited fmrMensagem: TfmrMensagem
  AlphaBlend = True
  AlphaBlendValue = 245
  Caption = 'Mensagens'
  ClientHeight = 364
  ClientWidth = 865
  Position = poDefault
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 865
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitle: TPanel
    Width = 865
    Height = 354
    Align = alClient
    ExplicitWidth = 865
    ExplicitHeight = 354
  end
  inherited pnlFooter: TPanel
    Top = 354
    Width = 865
    Visible = False
    ExplicitTop = 354
    ExplicitWidth = 865
  end
  inherited pnlMain: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 838
    Height = 343
    Align = alNone
    Color = clBlack
    Font.Color = clWhite
    ParentFont = False
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 838
    ExplicitHeight = 343
    object lblTipo: TLabel
      Left = 16
      Top = 22
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
    object lblTitulo: TLabel
      Left = 16
      Top = 114
      Width = 770
      Height = 37
      AutoSize = False
      Caption = 'Titulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblMensagem: TLabel
      Left = 16
      Top = 181
      Width = 770
      Height = 97
      AutoSize = False
      Caption = 
        'mensagem mensagem mensagem mensagem mensagem mensagem mensagem m' +
        'ensagem mensagem mensagem mensagem mensagem mensagem mensagem me' +
        'nsagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lblTempo: TLabel
      Left = 16
      Top = 290
      Width = 385
      Height = 20
      Caption = 'Essa janela ser'#225' fechada automaticamente em 5 segundos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 16
      Top = 168
      Width = 770
      Height = 7
      Shape = bsTopLine
    end
    object btn1: TSpeedButton
      Left = 440
      Top = 284
      Width = 120
      Height = 22
      Caption = 'Sim'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn1Click
    end
    object btn2: TSpeedButton
      Left = 592
      Top = 284
      Width = 120
      Height = 22
      Caption = 'N'#227'o'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn2Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 664
    Top = 94
  end
end

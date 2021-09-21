inherited FmrMain: TFmrMain
  Caption = 'Pizzaria - Sistema de Gerenciamento'
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitle: TPanel
    Caption = '  Pizzaria'
    object btnExit: TSpeedButton
      Left = 432
      Top = 24
      Width = 23
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnExitClick
    end
  end
  inherited pnlMain: TPanel
    object Button1: TButton
      Left = 56
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 145
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Error'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 232
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Ask'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 320
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Time'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
end

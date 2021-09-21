inherited fmrAbertura: TfmrAbertura
  Caption = 'Pizzaria'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitle: TPanel
    Alignment = taCenter
    Caption = 'Pizzaria'
  end
  inherited pnlFooter: TPanel
    ExplicitTop = 230
  end
  inherited pnlMain: TPanel
    ExplicitLeft = 0
    ExplicitTop = 70
    ExplicitWidth = 463
    ExplicitHeight = 160
    object Label1: TLabel
      Left = 48
      Top = 90
      Width = 131
      Height = 32
      Caption = 'Carregando '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 185
      Top = 90
      Width = 15
      Height = 32
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 48
      Top = 128
      Width = 369
      Height = 17
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 208
    Top = 102
  end
end

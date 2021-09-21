object FmrBase: TFmrBase
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 240
  ClientWidth = 463
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 17
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 70
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 230
    Width = 463
    Height = 10
    Align = alBottom
    BevelOuter = bvNone
    Color = clMaroon
    ParentBackground = False
    TabOrder = 1
  end
  object pnlMain: TPanel
    Left = 0
    Top = 70
    Width = 463
    Height = 160
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
  end
end

object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 441
  ClientWidth = 189
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 0
    Top = 16
    Width = 185
    Height = 49
    Caption = 'Build Teams'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 71
    Width = 185
    Height = 362
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end

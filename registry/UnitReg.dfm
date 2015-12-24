object Form1: TForm1
  Left = 220
  Top = 165
  Width = 187
  Height = 207
  Caption = #1056#1077#1077#1089#1090#1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 56
    Width = 69
    Height = 13
    Caption = '                       '
  end
  object edt1: TEdit
    Left = 16
    Top = 16
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'test1'
  end
  object btn1: TButton
    Left = 16
    Top = 104
    Width = 57
    Height = 25
    Caption = 'Create'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 88
    Top = 104
    Width = 57
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = btn2Click
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 595
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 24
    Width = 241
    Height = 40
    Caption = 'Jogo da Velha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 392
    Width = 71
    Height = 25
    Caption = 'Placar X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbPlacarO: TLabel
    Left = 112
    Top = 432
    Width = 73
    Height = 25
    Caption = 'Placar O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbJogadorDaVezResultado: TLabel
    Left = 328
    Top = 420
    Width = 16
    Height = 40
    Caption = 'x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 380
    Width = 230
    Height = 40
    Caption = 'Jogardor da Vez:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 112
    Top = 96
    Width = 75
    Height = 57
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 96
    Width = 75
    Height = 57
    TabOrder = 1
  end
  object Button3: TButton
    Left = 368
    Top = 96
    Width = 75
    Height = 57
    TabOrder = 2
  end
  object Button4: TButton
    Left = 368
    Top = 191
    Width = 75
    Height = 57
    TabOrder = 3
  end
  object Button5: TButton
    Left = 240
    Top = 191
    Width = 75
    Height = 57
    TabOrder = 4
  end
  object Button6: TButton
    Left = 112
    Top = 191
    Width = 75
    Height = 57
    TabOrder = 5
  end
  object Button7: TButton
    Left = 368
    Top = 296
    Width = 75
    Height = 57
    TabOrder = 6
  end
  object Button8: TButton
    Left = 240
    Top = 296
    Width = 75
    Height = 57
    TabOrder = 7
  end
  object Button9: TButton
    Left = 112
    Top = 296
    Width = 75
    Height = 57
    TabOrder = 8
  end
  object BtnReiniciarJogo: TButton
    Left = 104
    Top = 520
    Width = 129
    Height = 25
    Caption = 'Reiniciar Jogo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object BtnSair: TButton
    Left = 306
    Top = 520
    Width = 129
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
end

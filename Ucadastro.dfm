object FCadastro: TFCadastro
  Left = 182
  Top = 164
  Width = 924
  Height = 461
  Caption = 'FCadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 41
    Align = alTop
    TabOrder = 0
    object btInsere: TSpeedButton
      Left = 16
      Top = 8
      Width = 49
      Height = 22
      Caption = 'Insere'
      OnClick = btInsereClick
    end
    object btAtualiza: TSpeedButton
      Left = 664
      Top = 8
      Width = 57
      Height = 22
      Caption = 'Atualiza'
      OnClick = btAtualizaClick
    end
    object btExlcui: TSpeedButton
      Left = 736
      Top = 8
      Width = 49
      Height = 22
      Caption = 'Exlcui'
    end
    object btsalva: TSpeedButton
      Left = 72
      Top = 8
      Width = 47
      Height = 22
      Caption = 'Salva'
      Enabled = False
      OnClick = btsalvaClick
    end
    object SpeedButton1: TSpeedButton
      Left = 128
      Top = 8
      Width = 57
      Height = 22
      Caption = 'Procura'
    end
  end
  object PanelDados: TPanel
    Left = 0
    Top = 41
    Width = 908
    Height = 382
    Align = alClient
    Enabled = False
    TabOrder = 1
  end
end

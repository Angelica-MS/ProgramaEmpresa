inherited FCadEmpresa: TFCadEmpresa
  Left = 420
  Top = 115
  Caption = 'Cadastro Empresa'
  ClientHeight = 452
  ClientWidth = 538
  ExplicitWidth = 554
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  inherited panelDados: TPanel [0]
    Width = 538
    Height = 411
    ExplicitWidth = 538
    ExplicitHeight = 411
    object label1: TLabel
      Left = 32
      Top = 44
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 32
      Top = 76
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object Label3: TLabel
      Left = 272
      Top = 76
      Width = 43
      Height = 13
      Caption = 'Inscri'#231#227'o'
    end
    object Label4: TLabel
      Left = 32
      Top = 116
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object Label5: TLabel
      Left = 32
      Top = 156
      Width = 68
      Height = 13
      Caption = 'Data Cadastro'
    end
    object Label6: TLabel
      Left = 248
      Top = 156
      Width = 66
      Height = 13
      Caption = 'Data Abertura'
    end
    object Label7: TLabel
      Left = 32
      Top = 204
      Width = 91
      Height = 13
      Caption = 'Telefone Comercial'
    end
    object Label8: TLabel
      Left = 248
      Top = 204
      Width = 32
      Height = 13
      Caption = 'Celular'
    end
    object Label9: TLabel
      Left = 36
      Top = 252
      Width = 19
      Height = 13
      Caption = 'Obs'
    end
    object Label10: TLabel
      Left = 32
      Top = 332
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object Label12: TLabel
      Left = 32
      Top = 364
      Width = 41
      Height = 13
      Caption = 'exclu'#237'do'
    end
    object Label13: TLabel
      Left = 293
      Top = 364
      Width = 66
      Height = 13
      Caption = 'Data Excluido'
    end
    object Label14: TLabel
      Left = 32
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object nome: TEdit
      Left = 128
      Top = 40
      Width = 361
      Height = 21
      TabOrder = 1
    end
    object insc: TEdit
      Left = 321
      Top = 72
      Width = 97
      Height = 21
      TabOrder = 3
    end
    object email: TEdit
      Left = 128
      Top = 328
      Width = 361
      Height = 21
      TabOrder = 10
    end
    object status: TComboBox
      Left = 128
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 4
      Items.Strings = (
        'S'
        'N')
    end
    object cod: TEdit
      Left = 128
      Top = 6
      Width = 97
      Height = 21
      TabOrder = 0
    end
    object dtcad: TMaskEdit
      Left = 128
      Top = 152
      Width = 97
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object dtabertura: TMaskEdit
      Left = 321
      Top = 152
      Width = 100
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
    object dtexcluido: TMaskEdit
      Left = 389
      Top = 360
      Width = 103
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 12
      Text = '  /  /    '
    end
    object cnpj: TMaskEdit
      Left = 128
      Top = 72
      Width = 108
      Height = 21
      EditMask = '99.999.999/9999-99;1;_'
      MaxLength = 18
      TabOrder = 2
      Text = '  .   .   /    -  '
    end
    object fonecomercial: TMaskEdit
      Left = 128
      Top = 200
      Width = 107
      Height = 21
      EditMask = '(99)9999-9999;1;_'
      MaxLength = 13
      TabOrder = 7
      Text = '(  )    -    '
    end
    object celular: TMaskEdit
      Left = 321
      Top = 200
      Width = 117
      Height = 21
      EditMask = '(99)99999-9999;1;_'
      MaxLength = 14
      TabOrder = 8
      Text = '(  )     -    '
    end
    object excluido: TComboBox
      Left = 128
      Top = 360
      Width = 145
      Height = 21
      TabOrder = 11
      Items.Strings = (
        'S'
        'N')
    end
    object obs: TMemo
      Left = 128
      Top = 240
      Width = 369
      Height = 82
      TabOrder = 9
    end
  end
  inherited PanelBotoes: TPanel [1]
    Top = 411
    Width = 538
    ExplicitTop = 411
    ExplicitWidth = 538
    inherited btsalva: TSpeedButton
      Left = 165
      OnClick = btsalvaClick
      ExplicitLeft = 165
    end
    inherited btCancela: TSpeedButton
      Left = 232
      ExplicitLeft = 232
    end
  end
end

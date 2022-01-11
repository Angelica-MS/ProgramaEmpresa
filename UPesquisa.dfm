object FPesquisa: TFPesquisa
  Left = 182
  Top = 164
  Caption = 'FPesquisa'
  ClientHeight = 422
  ClientWidth = 908
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 70
    Align = alTop
    TabOrder = 0
    object btInsere: TSpeedButton
      Left = 80
      Top = 17
      Width = 49
      Height = 22
      Caption = 'Insere'
      OnClick = btInsereClick
    end
    object btAtualiza: TSpeedButton
      Left = 136
      Top = 17
      Width = 57
      Height = 22
      Caption = 'Atualiza'
      OnClick = btAtualizaClick
    end
    object btExclui: TSpeedButton
      Left = 199
      Top = 17
      Width = 49
      Height = 22
      Caption = 'Exlcui'
      OnClick = btExcluiClick
    end
    object GroupBox1: TGroupBox
      Left = 311
      Top = 7
      Width = 367
      Height = 58
      Caption = 'Pesquisa'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 88
        Height = 13
        Caption = 'Informe a Empresa'
      end
      object btnPesquisa: TSpeedButton
        Left = 268
        Top = 21
        Width = 23
        Height = 22
      end
      object empresa: TEdit
        Left = 112
        Top = 21
        Width = 150
        Height = 21
        TabOrder = 0
      end
    end
  end
  object PanelDados: TPanel
    Left = 0
    Top = 70
    Width = 908
    Height = 352
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 906
      Height = 350
      Hint = 'Duplo clique no Grid para visuzaliar os dados'
      Align = alClient
      DataSource = module.dsconsulta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
end

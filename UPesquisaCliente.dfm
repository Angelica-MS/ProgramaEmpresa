inherited FPesquisaCliente: TFPesquisaCliente
  Left = 144
  Top = 130
  Caption = 'FPesquisaCliente'
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel [0]
    Left = 16
    Top = 388
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  inherited Panel1: TPanel
    ExplicitLeft = -1
    ExplicitTop = -5
    inherited btInsere: TSpeedButton
      Left = 96
      Top = 15
      ExplicitLeft = 96
      ExplicitTop = 15
    end
    inherited btAtualiza: TSpeedButton
      Left = 208
      Top = 15
      ExplicitLeft = 208
      ExplicitTop = 15
    end
    inherited btExclui: TSpeedButton
      Left = 152
      Top = 15
      ExplicitLeft = 152
      ExplicitTop = 15
    end
    inherited GroupBox1: TGroupBox
      Left = 368
      Top = 1
      Height = 66
      ExplicitLeft = 368
      ExplicitTop = 1
      ExplicitHeight = 66
      inherited btnPesquisa: TSpeedButton
        Top = 20
        OnClick = btnPesquisaClick
        ExplicitTop = 20
      end
    end
  end
end

inherited FPesquisaFuncionario: TFPesquisaFuncionario
  Caption = 'Pesquisa Funcion'#225'rio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btInsere: TSpeedButton
      Left = 16
      Enabled = False
      ExplicitLeft = 16
    end
    inherited btAtualiza: TSpeedButton
      Left = 72
      Enabled = False
      ExplicitLeft = 72
    end
    inherited btExclui: TSpeedButton
      Left = 136
      Enabled = False
      ExplicitLeft = 136
    end
    inherited GroupBox1: TGroupBox
      Left = 296
      Top = 2
      ExplicitLeft = 296
      ExplicitTop = 2
      inherited btnPesquisa: TSpeedButton
        Left = 280
        Top = 20
        OnClick = btnPesquisaClick
        ExplicitLeft = 280
        ExplicitTop = 20
      end
      inherited empresa: TEdit
        Left = 124
        ExplicitLeft = 124
      end
    end
  end
end

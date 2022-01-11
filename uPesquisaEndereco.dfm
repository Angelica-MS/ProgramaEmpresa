inherited FPesquisaEndereco: TFPesquisaEndereco
  Caption = 'Pesquisa Endere'#231'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btInsere: TSpeedButton
      Enabled = False
    end
    inherited btAtualiza: TSpeedButton
      Enabled = False
    end
    inherited btExclui: TSpeedButton
      Enabled = False
    end
    inherited GroupBox1: TGroupBox
      inherited btnPesquisa: TSpeedButton
        OnClick = btnPesquisaClick
      end
    end
  end
end

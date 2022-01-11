object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema Empresas'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 280
    Top = 168
    object Empresa1: TMenuItem
      Caption = 'Empresas'
      OnClick = Empresa1Click
    end
    object Funcionrios1: TMenuItem
      Caption = 'Funcion'#225'rios'
      OnClick = Funcionrios1Click
    end
    object Endereocs1: TMenuItem
      Caption = 'Endere'#231'os'
      OnClick = Endereocs1Click
    end
  end
end

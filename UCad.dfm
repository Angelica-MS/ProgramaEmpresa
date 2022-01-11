object FCad: TFCad
  Left = 480
  Top = 166
  Caption = 'FCad'
  ClientHeight = 447
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 406
    Width = 580
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 352
    ExplicitWidth = 507
    object btsalva: TSpeedButton
      Left = 160
      Top = 6
      Width = 61
      Height = 25
      Caption = 'Salva'
    end
    object btCancela: TSpeedButton
      Left = 231
      Top = 6
      Width = 63
      Height = 25
      Caption = 'Cancela'
      OnClick = btCancelaClick
    end
    object btFecha: TSpeedButton
      Left = 302
      Top = 6
      Width = 59
      Height = 26
      Caption = 'Fecha'
      OnClick = btFechaClick
    end
  end
  object panelDados: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 406
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end

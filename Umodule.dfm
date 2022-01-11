object module: Tmodule
  Height = 397
  Width = 503
  PixelsPerInch = 96
  object dsInsere: TDataSource
    DataSet = sqlInsere
    Left = 168
    Top = 80
  end
  object conexao: TFDConnection
    Params.Strings = (
      'Database=D:\Empresa\dados.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 80
  end
  object sqlInsere: TFDQuery
    Connection = conexao
    Left = 104
    Top = 80
  end
  object sqlconsulta: TFDQuery
    Connection = conexao
    Left = 104
    Top = 144
  end
  object dsconsulta: TDataSource
    DataSet = sqlconsulta
    Left = 176
    Top = 144
  end
  object dsatualiza: TDataSource
    DataSet = sqlatualiza
    Left = 176
    Top = 208
  end
  object sqlatualiza: TFDQuery
    Connection = conexao
    Left = 104
    Top = 208
  end
  object sqlexclui: TFDQuery
    Connection = conexao
    Left = 104
    Top = 272
  end
  object dsexclui: TDataSource
    DataSet = sqlexclui
    Left = 176
    Top = 272
  end
end

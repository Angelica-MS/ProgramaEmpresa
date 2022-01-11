unit Umodule;

interface

uses
  SysUtils, Classes,  DB, SqlExpr, FMTBcd, Data.DBXFirebird,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tmodule = class(TDataModule)
    dsInsere: TDataSource;
    conexao: TFDConnection;
    sqlInsere: TFDQuery;
    sqlconsulta: TFDQuery;
    dsconsulta: TDataSource;
    dsatualiza: TDataSource;
    sqlatualiza: TFDQuery;
    sqlexclui: TFDQuery;
    dsexclui: TDataSource;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  module: Tmodule;

implementation

{$R *.dfm}

end.

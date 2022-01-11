unit UPesquisaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPesquisa, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFPesquisaFuncionario = class(TFPesquisa)
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaFuncionario: TFPesquisaFuncionario;
  cod:integer;
implementation

{$R *.dfm}

uses Umodule;

procedure TFPesquisaFuncionario.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  with module do
  begin
      if empresa.Text<>'' then
      begin
          sqlconsulta.Close;
          sqlconsulta.SQL.Clear;
          sqlconsulta.SQL.Add('SELECT E.IDEMPRESA,E.NMEMPRESA,E.NUCNPJ, F.IDFUNCIONARIO, F.NMFUNCIONARIO, F.NUCPF FROM CADEMPRESA E ,CADFUNCIONARIOS F  WHERE E.IDEMPRESA=F.IDEMPRESA AND E.NMEMPRESA like :EMPRESA');
          sqlconsulta.ParamByName('empresa').Value:='%'+empresa.Text+'%';
          sqlconsulta.SQL.Add('ORDER BY NMEMPRESA');
          sqlconsulta.open;
          dbgrid1.DataSource:=dsconsulta;
          if (sqlconsulta.IsEmpty) then
          begin
              ShowMessage( 'Não foi encontrado registro');
          end
          else
          begin
              dbgrid1.DataSource:=dsconsulta;
              cod:=dsconsulta.DataSet.FieldByName('IDfuncionario').Value;
          end;

      end
      else
      begin
          ShowMessage( 'Para pesquisar preencher o nome da empresa');
      end;
  end;
end;

end.

unit uPesquisaEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPesquisa, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFPesquisaEndereco = class(TFPesquisa)
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaEndereco: TFPesquisaEndereco;
   cod:integer;
implementation

{$R *.dfm}

uses Umodule;

procedure TFPesquisaEndereco.btnPesquisaClick(Sender: TObject);
begin
  inherited;
 with module do
  begin
      if empresa.Text<>'' then
      begin
          sqlconsulta.Close;
          sqlconsulta.SQL.Clear;
          sqlconsulta.SQL.Add('SELECT E.IDEMPRESA,E.NMEMPRESA,E.NUCNPJ,ENDE.IDENDERECO,ENDE.NMENDERECO,ENDE.NUENDERECO,ENDE.NMBAIRRO,ENDE.NUCEP,ENDE.STATIVO FROM CADEMPRESA E ,CADENDERECOS ENDE  WHERE (E.IDEMPRESA=ENDE.IDEMPRESA) AND (E.NMEMPRESA like :EMPRESA) ');
          sqlconsulta.SQL.Add('AND (ENDE.STATIVO=:stativo)');
          sqlconsulta.ParamByName('empresa').Value:='%'+empresa.Text+'%';
          sqlconsulta.ParamByName('stativo').Value:='S';
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
              cod:=dsconsulta.DataSet.FieldByName('IDENDERECO').Value;
          end;

      end
      else
      begin
          ShowMessage( 'Para pesquisar preencher o nome da empresa');
      end;
  end;
end;

end.

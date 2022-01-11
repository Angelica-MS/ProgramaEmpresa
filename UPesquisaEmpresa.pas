unit UPesquisaEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ucadastro, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask,
  UPesquisa, Data.DB;

type
  TFPesquisaEmpresa = class(TFPesquisa)
    Label11: TLabel;
    procedure btInsereClick(Sender: TObject);
    procedure btAtualizaClick(Sender: TObject);
    procedure btExcluiClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

  private
 
      { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaEmpresa: TFPesquisaEmpresa;
  cod:integer;
implementation

uses Umodule, UCadEmpresa;

{$R *.dfm}





procedure TFPesquisaEmpresa.btExcluiClick(Sender: TObject);
begin
  inherited;
   if dbgrid1.DataSource.DataSet.IsEmpty then
   begin
      ShowMessage( 'Selecione um registro para Excluir');
   end
   else
   begin

      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbyes,mbno],0)= mryes then
      begin
          with module do
          begin
          sqlexclui.Close;
          sqlexclui.SQL.Clear;
          sqlexclui.SQL.Add('DELETE FROM CADEMPRESA');
          sqlexclui.SQL.Add('WHERE IDEMPRESA=:IDEMPRESA');
          sqlexclui.ParamByName('IDEMPRESA').Value:=cod;
          sqlexclui.ExecSQL(true);
          // atualiza grid
          sqlconsulta.Close;
          sqlconsulta.SQL.Clear;
          sqlconsulta.SQL.Add('SELECT * FROM CADEMPRESA WHERE IDEMPRESA =:idempresa');
          sqlconsulta.ParamByName('IDempresa').Value:=cod;
          sqlconsulta.open;
          dbgrid1.DataSource:=dsconsulta;
          end;
          ShowMessage( 'Registro Excluído');
      end;
   end;
end;

procedure TFPesquisaEmpresa.btInsereClick(Sender: TObject);
begin
  inherited;
  FCadEmpresa.show;
  FCadEmpresa.paneldados.enabled:=true;
  FCadEmpresa.btSalva.enabled:=true;
  FCadEmpresa.btcancela.enabled:=true;
  FCadEmpresa.btfecha.enabled:=false;
  FCadEmpresa.cod.SetFocus;
  btnclicado:='Insere';
  FCadEmpresa.limpacampos;
end;

procedure TFPesquisaEmpresa.btnPesquisaClick(Sender: TObject);
begin
  inherited;
 with module do
  begin
      if empresa.Text<>'' then
      begin
          sqlconsulta.Close;
          sqlconsulta.SQL.Clear;
          sqlconsulta.SQL.Add('SELECT * FROM CADEMPRESA WHERE NmEMPRESA like :empresa');
          sqlconsulta.ParamByName('empresa').Value:='%'+empresa.Text+'%';
          sqlconsulta.SQL.Add('ORDER BY NMEMPRESA');
          sqlconsulta.open;

          if (sqlconsulta.IsEmpty) then
          begin
              ShowMessage( 'Não foi encontrado registro');
          end
          else
          begin
              dbgrid1.DataSource:=dsconsulta;
              cod:=dsconsulta.DataSet.FieldByName('IDEMPRESA').Value;
          end;

      end
      else
      begin
          ShowMessage( 'Para pesquisar preencher o nome da empresa');
      end;
  end;
end;

procedure TFPesquisaEmpresa.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if dbgrid1.DataSource.DataSet.IsEmpty then
   begin
      ShowMessage( 'Selecione um registro para Visualizar');
   end
   else
   begin
      FCadEmpresa.show;
      FCadEmpresa.cod.Text:=dbgrid1.Columns.items[0].field.text;
      FCadEmpresa.nome.Text:=dbgrid1.Columns.items[1].field.text;
      FCadEmpresa.cnpj.Text:=dbgrid1.Columns.items[2].field.text;
      FCadEmpresa.insc.Text:=dbgrid1.Columns.items[3].field.text;
      FCadEmpresa.status.Text:=dbgrid1.Columns.items[4].field.text;
      FCadEmpresa.dtcad.Text:=dbgrid1.Columns.items[5].field.text;
      FCadEmpresa.dtabertura.Text:=dbgrid1.Columns.items[6].field.text;
      FCadEmpresa.fonecomercial.Text:=dbgrid1.Columns.items[7].field.text;
      FCadEmpresa.celular.Text:=dbgrid1.Columns.items[8].field.text;
      FCadEmpresa.obs.Text:=dbgrid1.Columns.items[9].field.text;
      FCadEmpresa.email.Text:=dbgrid1.Columns.items[10].field.text;
      FCadEmpresa.excluido.Text:=dbgrid1.Columns.items[11].field.text;
      FCadEmpresa.dtexcluido.Text:=dbgrid1.Columns.items[12].field.text;
      FCadEmpresa.paneldados.enabled:=false;
      FCadEmpresa.btSalva.enabled:=false;
      FCadEmpresa.btcancela.enabled:=false;
      FCadEmpresa.btfecha.enabled:=true;
   end;
end;

procedure TFPesquisaEmpresa.btAtualizaClick(Sender: TObject);
begin
  inherited;
   if dbgrid1.DataSource.DataSet.IsEmpty then
   begin
      ShowMessage( 'Selecione um registro para Atualizar');
   end
   else
   begin
      btnclicado:='Atualiza';
      FCadEmpresa.show;
      FCadEmpresa.paneldados.enabled:=true;
      FCadEmpresa.btSalva.enabled:=true;
      FCadEmpresa.btcancela.enabled:=true;
      FCadEmpresa.btfecha.enabled:=false;
      FCadEmpresa.cod.SetFocus;
      FCadEmpresa.cod.Text:=dbgrid1.Columns.items[0].field.text;
      FCadEmpresa.nome.Text:=dbgrid1.Columns.items[1].field.text;
      FCadEmpresa.cnpj.Text:=dbgrid1.Columns.items[2].field.text;
      FCadEmpresa.insc.Text:=dbgrid1.Columns.items[3].field.text;
      FCadEmpresa.status.Text:=dbgrid1.Columns.items[4].field.text;
      FCadEmpresa.dtcad.Text:=dbgrid1.Columns.items[5].field.text;
      FCadEmpresa.dtabertura.Text:=dbgrid1.Columns.items[6].field.text;
      FCadEmpresa.fonecomercial.Text:=dbgrid1.Columns.items[7].field.text;
      FCadEmpresa.celular.Text:=dbgrid1.Columns.items[8].field.text;
      FCadEmpresa.obs.Text:=dbgrid1.Columns.items[9].field.text;
      FCadEmpresa.email.Text:=dbgrid1.Columns.items[10].field.text;
      FCadEmpresa.excluido.Text:=dbgrid1.Columns.items[11].field.text;
      FCadEmpresa.dtexcluido.Text:=dbgrid1.Columns.items[12].field.text;
   end;

end;
end.
                    

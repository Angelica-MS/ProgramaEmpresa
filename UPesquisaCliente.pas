unit UPesquisaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ucadastro, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask,
  UPesquisa, Data.DB;

type
  TFPesquisaCliente = class(TFPesquisa)
    Label11: TLabel;
    procedure btInsereClick(Sender: TObject);
    procedure btAtualizaClick(Sender: TObject);
    procedure btExcluiClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);

  private
 
      { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaCliente: TFPesquisaCliente;
  cod:integer;
implementation

uses Umodule, UCadCliente;

{$R *.dfm}





procedure TFPesquisaCliente.btExcluiClick(Sender: TObject);
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

procedure TFPesquisaCliente.btInsereClick(Sender: TObject);
begin
  inherited;
  FCadCliente.show;
  FCadCliente.cod.SetFocus;
  btnclicado:='Insere';
  FCadCliente.limpacampos;
end;

procedure TFPesquisaCliente.btnPesquisaClick(Sender: TObject);
begin
  inherited;
 with module do
  begin
      if empresa.Text<>'' then
      begin
          sqlconsulta.Close;
          sqlconsulta.SQL.Clear;
          sqlconsulta.SQL.Add('SELECT * FROM CADEMPRESA WHERE NmEMPRESA like :empresa');
          sqlconsulta.ParamByName('empresa').Value:=empresa.Text+'%';
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
              cod:=dsconsulta.DataSet.FieldByName('IDEMPRESA').Value;
          end;

      end
      else
      begin
          ShowMessage( 'Para pesquisar preencher o nome da empresa');
      end;
  end;
end;

procedure TFPesquisaCliente.btAtualizaClick(Sender: TObject);
begin
  inherited;
   if dbgrid1.DataSource.DataSet.IsEmpty then
   begin
      ShowMessage( 'Selecione um registro para Atualizar');
   end
   else
   begin
      btnclicado:='Atualiza';
      FCadCliente.show;
      FCadCliente.cod.SetFocus;
      FCadCliente.cod.Text:=dbgrid1.Columns.items[0].field.text;
      FCadCliente.nome.Text:=dbgrid1.Columns.items[1].field.text;
      FCadCliente.cnpj.Text:=dbgrid1.Columns.items[2].field.text;
      FCadCliente.insc.Text:=dbgrid1.Columns.items[3].field.text;
      FCadCliente.status.Text:=dbgrid1.Columns.items[4].field.text;
      FCadCliente.dtcad.Text:=dbgrid1.Columns.items[5].field.text;
      FCadCliente.dtabertura.Text:=dbgrid1.Columns.items[6].field.text;
      FCadCliente.fonecomercial.Text:=dbgrid1.Columns.items[7].field.text;
      FCadCliente.celular.Text:=dbgrid1.Columns.items[8].field.text;
      FCadCliente.obs.Text:=dbgrid1.Columns.items[9].field.text;
      FCadCliente.email.Text:=dbgrid1.Columns.items[10].field.text;
      FCadCliente.excluido.Text:=dbgrid1.Columns.items[11].field.text;
      FCadCliente.dtexcluido.Text:=dbgrid1.Columns.items[12].field.text;
   end;

end;
end.
                    

unit UCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCad, Mask, StdCtrls, Buttons, ExtCtrls;

type
  TFCadEmpresa = class(TFCad)
    label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    nome: TEdit;
    insc: TEdit;
    email: TEdit;
    status: TComboBox;
    cod: TEdit;
    dtcad: TMaskEdit;
    dtabertura: TMaskEdit;
    dtexcluido: TMaskEdit;
    cnpj: TMaskEdit;
    fonecomercial: TMaskEdit;
    celular: TMaskEdit;
    excluido: TComboBox;
    obs: TMemo;
    procedure btsalvaClick(Sender: TObject);
    procedure limpacampos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEmpresa: TFCadEmpresa;

implementation

uses Umodule, UPesquisa, UPesquisaEmpresa;

{$R *.dfm}


procedure TFCadEmpresa.limpacampos;
begin
 var
  i : Integer;
begin
  with Screen.ActiveForm do
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      // Limpa Edits
      if Components[i] is TEdit then
        TEdit(Components[i]).Clear;

      // Limpa MaskEdits
      if Components[i] is TMaskEdit then
        TMaskEdit(Components[i]).Clear;

      if Components[i] is TComboBox then
        TComboBox(Components[i]).Text:='';

      if Components[i] is TMemo then
        TMemo(Components[i]).Clear;
    end;
    end;
  end;
end;

procedure TFCadEmpresa.btsalvaClick(Sender: TObject);
begin
  inherited;

  with module do
  begin


    if fpesquisaEmpresa.btnclicado='Insere' then
    begin

          sqlInsere.Close;
          sqlInsere.SQL.Clear;
          sqlInsere.SQL.Add('INSERT INTO CADEMPRESA');
          sqlInsere.SQL.Add('(IDEMPRESA,NMEMPRESA,NUCNPJ,NUINSCRICAO,STATIVO,DTCADASTRO,DTABERTURA,TLCOMERCIAL,TLCELULAR,TXOBS,TXEMAIL,STEXCLUIDO,DTEXCLUIDO)');
          sqlInsere.SQL.Add('values (:IDEMPRESA, :NMEMPRESA, :NUCNPJ, :NUINSCRICAO,:STATIVO,:DTCADASTRO, :DTABERTURA,:TLCOMERCIAL,:TLCELULAR,:TXOBS,:TXEMAIL,:STEXCLUIDO,:DTEXCLUIDO)');
          sqlInsere.ParamByName('IDEMPRESA').Value:=strtoint(cod.Text);
          sqlInsere.ParamByName('NMEMPRESA').Value:=nome.text;
          sqlInsere.ParamByName('NUCNPJ').Value:=cnpj.text;
          sqlInsere.ParamByName('NUINSCRICAO').Value:=insc.text;
          sqlInsere.ParamByName('STATIVO').Value:=status.text;
          if dtcad.Text<>'  /  /    ' then
          begin
              sqlInsere.ParamByName('DTCADASTRO').Value:=strtodate(dtcad.Text);
          end
          else
          begin
            sqlInsere.ParamByName('DTCADASTRO').Value:=null;
          end;
          if dtabertura.Text<>'  /  /    ' then
          begin
              sqlInsere.ParamByName('DTABERTURA').Value:=strtodate(dtabertura.Text);
          end
          else
          begin
            sqlInsere.ParamByName('DTABERTURA').Value:=null;
          end;
          sqlInsere.ParamByName('TLCOMERCIAL').Value:=fonecomercial.text;
          sqlInsere.ParamByName('TLCELULAR').Value:=celular.text;
          sqlInsere.ParamByName('TXOBS').Value:=obs.text;
          sqlInsere.ParamByName('TXEMAIL').Value:=email.text;
          sqlInsere.ParamByName('STEXCLUIDO').Value:=excluido.text;
          if dtexcluido.Text<>'  /  /    ' then
          begin
              sqlInsere.ParamByName('DTexcluido').Value:=strtodate(dtexcluido.Text);
          end
          else
          begin
            sqlInsere.ParamByName('DTexcluido').Value:=null;
          end;
          sqlInsere.ExecSQL(true);
          sqlInsere.Close;
          sqlInsere.SQL.Clear;
          sqlInsere.SQL.Add('Select * from CADEMPRESA Where IDEMPRESA=:IDEMPRESA');
          sqlInsere.ParamByName('IDEMPRESA').Value:=strtoint(cod.Text);
          sqlInsere.open;
          fPesquisaEmpresa.DBGrid1.DataSource:=dsinsere;
    end;
    if fpesquisaEmpresa.btnclicado='Atualiza' then
    begin
          sqlatualiza.Close;
          sqlatualiza.SQL.Clear;
          sqlatualiza.SQL.Add('UPDATE CADEMPRESA');
          sqlatualiza.SQL.Add('set IDEMPRESA =:IDEMPRESA, NMEMPRESA=:NMEMPRESA, NUCNPJ=:NUCNPJ,');
          sqlatualiza.SQL.Add('NUINSCRICAO=:NUINSCRICAO,STATIVO=:STATIVO,DTCADASTRO=:DTCADASTRO, DTABERTURA=:DTABERTURA,TLCOMERCIAL=:TLCOMERCIAL,TLCELULAR=:TLCELULAR,TXOBS=:TXOBS,TXEMAIL=:TXEMAIL,STEXCLUIDO=:STEXCLUIDO,DTEXCLUIDO=:DTEXCLUIDO');
          sqlatualiza.SQL.Add('WHERE IDEMPRESA=:IDEMPRESA');
          sqlatualiza.ParamByName('IDEMPRESA').Value:=strtoint(cod.Text);
          sqlatualiza.ParamByName('NMEMPRESA').Value:=nome.text;
          sqlatualiza.ParamByName('NUCNPJ').Value:=cnpj.text;
          sqlatualiza.ParamByName('NUINSCRICAO').Value:=insc.text;
          sqlatualiza.ParamByName('STATIVO').Value:=status.text;
          if dtcad.Text<>'  /  /    ' then
          begin
              sqlatualiza.ParamByName('DTCADASTRO').Value:=strtodate(dtcad.Text);
          end
          else
          begin
            sqlatualiza.ParamByName('DTCADASTRO').Value:=null;
          end;
          if dtabertura.Text<>'  /  /    ' then
          begin
              sqlatualiza.ParamByName('DTABERTURA').Value:=strtodate(dtabertura.Text);
          end
          else
          begin
            sqlatualiza.ParamByName('DTABERTURA').Value:=null;
          end;
          sqlatualiza.ParamByName('TLCOMERCIAL').Value:=fonecomercial.text;
          sqlatualiza.ParamByName('TLCELULAR').Value:=celular.text;
          sqlatualiza.ParamByName('TXOBS').Value:=obs.text;
          sqlatualiza.ParamByName('TXEMAIL').Value:=email.text;
          sqlatualiza.ParamByName('STEXCLUIDO').Value:=excluido.text;
          if dtexcluido.Text<>'  /  /    ' then
          begin
              sqlatualiza.ParamByName('DTexcluido').Value:=strtodate(dtexcluido.Text);
          end
          else
          begin
            sqlatualiza.ParamByName('DTexcluido').Value:=null;
          end;
          sqlatualiza.ExecSQL(true);
          dsconsulta.DataSet.Refresh;
    end;

  end;
  close;
end;

end.

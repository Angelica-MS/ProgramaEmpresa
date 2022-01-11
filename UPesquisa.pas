unit UPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Data.DB;

type
  TFPesquisa = class(TForm)
    Panel1: TPanel;
    btInsere: TSpeedButton;
    btAtualiza: TSpeedButton;
    PanelDados: TPanel;
    btExclui: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    empresa: TEdit;
    DBGrid1: TDBGrid;
    btnPesquisa: TSpeedButton;
    procedure btsalvaClick(Sender: TObject);
    procedure btAtualizaClick(Sender: TObject);
    procedure btInsereClick(Sender: TObject);
    procedure btExcluiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
      { Private declarations }
  public

  var
    btnclicado:string;

    { Public declarations }
  end;

var
  FPesquisa: TFPesquisa;

implementation

uses Umodule, UCad;

{$R *.dfm}


procedure TFPesquisa.btAtualizaClick(Sender: TObject);
begin
 btnclicado:='Atualiza';

end;

procedure TFPesquisa.btExcluiClick(Sender: TObject);
begin
btnclicado:='Exclui';


end;

procedure TFPesquisa.btInsereClick(Sender: TObject);
begin

  btnclicado:='Insere';
end;

procedure TFPesquisa.btsalvaClick(Sender: TObject);
begin
PanelDados.Enabled:=false;
btnclicado:='Salva';
end;


procedure TFPesquisa.DBGrid1DblClick(Sender: TObject);
begin
btnclicado:='Visualiza';
end;

procedure TFPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with module do
  begin
      sqlconsulta.Close;
      sqlInsere.Close;
      sqlexclui.Close;
  end;
end;

end.

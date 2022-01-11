unit Ucadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFCadastro = class(TForm)
    Panel1: TPanel;
    btInsere: TSpeedButton;
    btAtualiza: TSpeedButton;
    PanelDados: TPanel;
    btExlcui: TSpeedButton;
    btsalva: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure btInsereClick(Sender: TObject);
    procedure btsalvaClick(Sender: TObject);
    procedure btAtualizaClick(Sender: TObject);
  private
      { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastro: TFCadastro;

implementation

uses Umodule;

{$R *.dfm}

{ TFCadastro }





procedure TFCadastro.btInsereClick(Sender: TObject);
begin
PanelDados.Enabled:=true;
btInsere.Enabled:=false;
btAtualiza.Enabled:=false;
btExlcui.Enabled:=false;
btsalva.Enabled:=true;
end;

procedure TFCadastro.btsalvaClick(Sender: TObject);
begin
PanelDados.Enabled:=false;
end;

procedure TFCadastro.btAtualizaClick(Sender: TObject);
begin
PanelDados.Enabled:=true;
btInsere.Enabled:=false;
btAtualiza.Enabled:=false;
btExlcui.Enabled:=false;
btsalva.Enabled:=true;
end;

end.

unit UCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls;

type
  TFCad = class(TForm)
    PanelBotoes: TPanel;
    btsalva: TSpeedButton;
    btCancela: TSpeedButton;
    panelDados: TPanel;
    btFecha: TSpeedButton;
    procedure btCancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btFechaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCad: TFCad;

implementation

uses Umodule, UPesquisa;

{$R *.dfm}

procedure TFCad.btFechaClick(Sender: TObject);
begin
close;
end;

procedure TFCad.FormCreate(Sender: TObject);

var
hwndHandle : THANDLE;
hMenuHandle : HMenu;
begin
hwndHandle := Self.Handle;
if (hwndHandle <> 0) then
begin
hMenuHandle := GetSystemMenu(hwndHandle, FALSE);
if (hMenuHandle <> 0) then
DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;
end;

procedure TFCad.btCancelaClick(Sender: TObject);
begin

close;
end;

end.

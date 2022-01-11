unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Empresa1: TMenuItem;
    Funcionrios1: TMenuItem;
    Endereocs1: TMenuItem;
    procedure Funcionrios1Click(Sender: TObject);
    procedure Endereocs1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UPesquisaFuncionario, uPesquisaEndereco, UPesquisaEmpresa;

procedure TFPrincipal.Empresa1Click(Sender: TObject);
begin
  FPesquisaEmpresa := TFPesquisaEmpresa.Create(Application);
  Try
  FPesquisaEmpresa.Showmodal;
  Finally
  FPesquisaEmpresa.Release;
  End;
end;

procedure TFPrincipal.Endereocs1Click(Sender: TObject);
begin

  FPesquisaEndereco := TFPesquisaEndereco.Create(Application);
  Try
  FPesquisaEndereco.Showmodal;
  Finally
  FPesquisaEndereco.Release;
  End;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFPrincipal.Funcionrios1Click(Sender: TObject);
begin
  FPesquisaFuncionario := TFPesquisaFuncionario.Create(Application);
  Try
  FPesquisaFuncionario.Showmodal;
  Finally
  FPesquisaFuncionario.Release;
  End;
end;

end.

program PEmpresa;

uses
  Forms,
  Umodule in 'Umodule.pas' {module: TDataModule},
  UPesquisaEmpresa in 'UPesquisaEmpresa.pas' {FPesquisaEmpresa},
  UPesquisa in 'UPesquisa.pas' {FPesquisa},
  UCad in 'UCad.pas' {FCad},
  UCadEmpresa in 'UCadEmpresa.pas' {FCadEmpresa},
  UPesquisaFuncionario in 'UPesquisaFuncionario.pas' {FPesquisaFuncionario},
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  uPesquisaEndereco in 'uPesquisaEndereco.pas' {FPesquisaEndereco};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(Tmodule, module);
  Application.CreateForm(TFCadEmpresa, FCadEmpresa);
  Application.CreateForm(TFPesquisa, FPesquisa);
  Application.CreateForm(TFCad, FCad);
  Application.Run;
end.

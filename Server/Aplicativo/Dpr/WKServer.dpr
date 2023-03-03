program WKServer;

uses
  System.StartUpCopy,
  FMX.Forms,
  uDM in '..\Units\uDM.pas' {DM: TDataModule},
  uPrincipal in '..\View\uPrincipal.pas' {frmPrincipal},
  Classe.Conexao in '..\Controller\Classe.Conexao.pas',
  ClienteController in '..\Controller\ClienteController.pas',
  ClienteModel in '..\Model\ClienteModel.pas',
  EnderecoIntegracaoModel in '..\Model\EnderecoIntegracaoModel.pas',
  EnderecoModel in '..\Model\EnderecoModel.pas',
  RestServerController in '..\Controller\RestServerController.pas',
  EnderecoController in '..\Controller\EnderecoController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

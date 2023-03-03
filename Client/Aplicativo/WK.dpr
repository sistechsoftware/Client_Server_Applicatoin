program WK;

uses
  Vcl.Forms,
  PessoaController in 'Controller\PessoaController.pas',
  EnderecoController in 'Controller\EnderecoController.pas',
  ClienteModel in 'Model\ClienteModel.pas',
  EnderecoModel in 'Model\EnderecoModel.pas',
  EnderecoIntegracaoModel in 'Model\EnderecoIntegracaoModel.pas',
  frmPrincipal in 'View\frmPrincipal.pas' {fPrincipal},
  frmCadPessoa in 'View\frmCadPessoa.pas' {fCadPessoa},
  CepConsulta in 'Services\CepConsulta.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.

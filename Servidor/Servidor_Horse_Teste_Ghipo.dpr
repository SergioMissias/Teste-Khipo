program Servidor_Horse_Teste_Ghipo;

uses
  Vcl.Forms,
  Horse,
  Horse.Jhonson,
  u_ProjetoTesteGhipo in 'View\u_ProjetoTesteGhipo.pas' {frm_Principal},
  u_Dm in 'DAO\u_Dm.pas' {dm: TDataModule},
  Controller.Cliente in 'Controller\Controller.Cliente.pas',
  Model.Cliente in 'Model\Model.Cliente.pas',
  Model.Connection in 'Model\Model.Connection.pas',
  Controller.CRUD in 'Controller\Controller.CRUD.pas',
  Model.CRUD in 'Model\Model.CRUD.pas',
  Model.Produtos in 'Model\Model.Produtos.pas',
  Controller.Produtos in 'Controller\Controller.Produtos.pas',
  Model.LoginSenha in 'Model\Model.LoginSenha.pas',
  Controller.LoginSenha in 'Controller\Controller.LoginSenha.pas',
  Model.MovimentacoesEstoque in 'Model\Model.MovimentacoesEstoque.pas',
  Controller.MovimentacoesEstoque in 'Controller\Controller.MovimentacoesEstoque.pas';

{$R *.res}

begin
  Application.Initialize;

  THorse.Use(Jhonson());


  Controller.Crud.Registry;
  Controller.MovimentacoesEstoque.Registry;
  Controller.LoginSenha.Registry;
  Controller.Produtos.Registry;
  Controller.LoginSenha.Registry;

  THorse.Listen(9000);


  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.CreateForm(Tdm, dm);



  Application.Run;

end.

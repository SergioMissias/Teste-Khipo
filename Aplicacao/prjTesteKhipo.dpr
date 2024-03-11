program prjTesteKhipo;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_frmPrincipal in 'u_frmPrincipal.pas' {Form4},
  DM in 'DAO\DM.pas' {DM_app: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDM_app, DM_app);
  Application.Run;
end.

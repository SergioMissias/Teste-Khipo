unit Model.LoginSenha;

interface

uses
  Model.Connection,FireDAC.Comp.Client,
  Horse, System.JSON, System.SysUtils,
  Data.DB, DataSet.Serialize;


  type

  TClasseLoginSenha = Class

  private

      fSenha  :string;
      fUsuario:string;
      fNivel  :integer;
      fEmail:string;
      fidEmpresa:integer;
      tpMensagem :(tpErroSenha,tpErroUsuario,tpErroOperador);
      tpOperador:(tpPrestador,tpCliente);
    Fsenhalog: string;
    FusuarioLog: String;
    procedure Setsenhalog(const Value: string);
    procedure SetusuarioLog(const Value: String);
  public


    property usuarioLog:String read FusuarioLog write SetusuarioLog;
    property senhalog:string read Fsenhalog write Setsenhalog;
    procedure Usuario(Value:string) ;
    procedure Senha(Value:string)   ;
    procedure Nivel(Value:Integer)  ;
    procedure IdEmpresa(value:integer);
    procedure Email(value:string);
    function AcharLoginSenha(out ores:string) : TFDQuery;


  constructor Create;
  destructor Destroy;override;


  End;



implementation


{ TClasseLoginSenha }

{function TClasseLoginSenha.AcharLoginSenha(fNome, fSenha: string ; fcaso:integer): string;

{ TClasseLoginSenha }

function TClasseLoginSenha.AcharLoginSenha(out ores:string):TFDQuery;
var

uQrDinamica: TFDQuery;
begin
  uQrDinamica:=TFDQuery.Create(nil);
  uQrDinamica.Connection:=Model.Connection.FConnection;
  uQrDinamica.close;
  with uQrDinamica do
  begin
    sql.Clear;
    SQL.Add('SELECT * FROM Cad_Usuario WHERE Email  =:Email ');

    Params.ParamByName('Email').AsString:=usuarioLog;
  end;
  uQrDinamica.Open;
  if uQrDinamica.Eof=false then
  begin
   if uQrDinamica.FieldByName('Senha').AsString = senhalog then
   begin
     ores:=inttostr(uQrDinamica.FieldByName('Id_Usuario').asinteger);

   end;
  end;
  result:=uQrDinamica;
end;

constructor TClasseLoginSenha.Create;
begin
      Model.Connection.Connect;
end;

destructor TClasseLoginSenha.Destroy;
begin
         Model.Connection.Disconect;
  inherited;
end;

procedure TClasseLoginSenha.Email(value: string);
begin
fEmail:=value;
end;

procedure TClasseLoginSenha.IdEmpresa(value: integer);
begin

fidEmpresa:=value;
end;




procedure TClasseLoginSenha.Nivel(Value: Integer) ;
begin

fNivel:=Value;
end;

procedure TClasseLoginSenha.Senha(Value: string) ;
begin

fSenha:=Value;

end;

procedure TClasseLoginSenha.Setsenhalog(const Value: string);
begin
  Fsenhalog := Value;
end;

procedure TClasseLoginSenha.SetusuarioLog(const Value: String);
begin
  FusuarioLog := Value;
end;

procedure TClasseLoginSenha.Usuario(Value: string) ;
begin

fUsuario:=value;


end;


end.

unit Controller.LoginSenha;

interface
 uses Horse, System.JSON, System.SysUtils, Model.Cliente,
     FireDAC.Comp.Client, Data.DB, DataSet.Serialize;

procedure Registry;

implementation

uses
  Model.LoginSenha;

 procedure LoginSenha(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    log : TClasseLoginSenha;
    objLogin: TJSONObject;
    erro : string;
    respQry:TFDQuery;
    body  : TJsonValue;
begin
    // Conexao com o banco...

    try
        try
            respQry:=TFDQuery.Create(nil);
            log := TClasseLoginSenha.create;
            body := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(req.Body), 0) as TJsonValue;
            log.senhalog:= body.GetValue<string>('senha', '');
            log.usuarioLog:=  body.GetValue<string>('email', '');
            // aQry:= oServico.Servicos;


 {           body := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(req.Body), 0) as TJsonValue;

            log.Usuario(body.GetValue<string>('usuario', ''));
            log.Senha(body.GetValue<string>('senha', ''));
            log.Email(body.GetValue<string>('email', ''));
            log.IdEmpresa(StrToInt(body.GetValue<string>('idempresa', '0')));}
            respQry:=log.AcharLoginSenha(erro); // erro pode conter o id do usuario caso encontre o usuario.
                                                 // ou uma codigo negativo para falha em senha ou nivel de usuario
                                                 // olhar na classe uClasse.Model.LoginSenha.pas
         //   body.Free;




            objLogin := TJSONObject.Create;
            objLogin.AddPair('login', erro);
            objLogin.AddPair('email',respQry.FieldByName('email').asstring);

            if (strtoint(erro)>0) then     //erro vai ser sempre o idusuario, erro de login ou nao existe
            begin
              objLogin.AddPair('nivel',TJSONNumber.Create(respQry.FieldByName('nivel').AsInteger));
              objLogin.AddPair('email',respQry.FieldByName('email').asstring);
              objLogin.AddPair('nick_name',respQry.FieldByName('nick_name').asstring);
              objLogin.AddPair('senha',respQry.FieldByName('senha').asstring);

            end;

            res.Send<TJSONObject>(objLogin).Status(201);
        except on ex:exception do
            begin
                res.Send(ex.Message).Status(400);
                exit;
            end;
        end;
    finally
    //  objLogin.Free;
      log.free;
    end;
end;
procedure Registry;
begin

//'loginsenha?usuario='+fusu+'&senha='+fsenha+'&email='+femail+'&idempresa='+inttostr(fidEmpresa);
    THorse.Post('/loginsenha',LoginSenha);
// //   THorse.Post('/cliente', AddCliente);
 //   THorse.Get('/cliente/:id', ListarClienteID);
end;
end.

end.

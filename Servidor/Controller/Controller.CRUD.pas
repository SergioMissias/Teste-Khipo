unit Controller.CRUD;

interface

uses Horse, System.JSON, System.SysUtils,Model.CRUD ,
     FireDAC.Comp.Client, Data.DB, DataSet.Serialize;


procedure Registry;



implementation


procedure Incluir(req:THorseRequest ; Res:THorseResponse ; Next:TProc);
var
incluir : TCRUD_unico;
body : TJSONValue;
begin
   try
     incluir := TCRUD_unico.Create;
     body := TJSONValue.ParseJSONValue(TEncoding.UTF8.getbytes(Req.Body),0) as TJSONValue;
     incluir.Tabela := Body.GetValue<String>('tabela','');
     incluir.Campos := Body.GetValue<String>('campos','');
     incluir.Crud   := Body.GetValue<string>('tipoCrud','');
     incluir.valores:= Body.GetValue<string>('valores','');
     if incluir.Executar_CRUD  = 'ok' then
        begin
          Res.Send('Ok').Status(201) ;
        end
     else
        res.Send('erro ao incluir').Status(404);
   finally
      incluir.Free;
   end;

end;

Procedure Registry;
begin

  THorse.Post('/incluir',incluir);
end;



end.

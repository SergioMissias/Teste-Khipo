unit Controller.MovimentacoesEstoque;

interface

uses Horse, System.JSON, System.SysUtils,Model.MovimentacoesEstoque,
     FireDAC.Comp.Client, Data.DB, DataSet.Serialize;


procedure Registry;



implementation


procedure Incluir(req:THorseRequest ; Res:THorseResponse ; Next:TProc);
var
incluir : TMovimentoEstoque;
body : TJSONValue;
erro:string;
begin
   try
     incluir := TMovimentoEstoque.Create;
     body := TJSONValue.ParseJSONValue(TEncoding.UTF8.getbytes(Req.Body),0) as TJSONValue;

     incluir.Id_Produto := Body.GetValue<int64>('Id_Produto',0);
     incluir.Qt_Movimentada := Body.GetValue<Double>('Qt_Movimentada',0);
     incluir.Tipo_Movimento   := Body.GetValue<string>('Tipo_Movimento','');
     incluir.Data_Movimento:= Body.GetValue<string>('Data_Movimento','');

     incluir.Valor_Unitario := Body.GetValue<Double>('Valor_Unitario',0);
     incluir.Id_Usuario   := Body.GetValue<int64>('Id_Usuario',0);
     incluir.Reg_Inventario:= Body.GetValue<string>('Reg_Inventario','');


     if incluir.IncluirMovimento(erro) then
        begin
          Res.Send('Ok').Status(201) ;
        end
     else
        res.Send(erro).Status(404);
   finally
      incluir.Free;
   end;

end;

Procedure Registry;
begin
  THorse.Post('/incluir',incluir);
end;



end.

end.

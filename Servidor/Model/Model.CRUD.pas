unit Model.CRUD;

interface


USES  System.SysUtils, u_Dm,FireDAC.Comp.Client, Data.DB,  System.Classes ;


 type

   TCRUD_unico = Class

   private
    FCrud: String;
    FTabela: string;
    FCampos: String;
    Fid: int64;
    FValores: string;


   public

     property Tabela:string read FTabela write FTabela;
     property Campos:String read FCampos write FCampos;
     property Crud : String read FCrud write FCrud;
     property valores:String read Fvalores write Fvalores;
     property id:int64 read Fid write Fid;
     function Executar_CRUD:String;
     constructor Create;
     destructor Destroy; override;




 End;



implementation




{ TCRUD_unico }

constructor TCRUD_unico.Create;
begin
 //  VALORES:= TStringList.Create;
end;

destructor TCRUD_unico.Destroy;
begin
//  VALORES.Free;
  inherited;
end;

function TCRUD_unico.Executar_CRUD: String;
var
Fdq_Query : TFDQuery;
St_Campos : TStringList;
I: integer;
sinal:string;
begin
    try

       Fdq_Query := TFDQuery.Create(nil);
       Fdq_Query.ConnectionName := dm.FDConn.ConnectionName;
       St_Campos := TStringList.Create;
       ExtractStrings([';'], [], PChar(Campos),St_Campos);


        if crud='I' then
           begin
             Fdq_Query.Close;
             Fdq_Query.SQL.add('Insert into'+ Tabela+' (');
             for I := 0 to St_Campos.Count do
               begin

                  if i>0 then
                    begin
                       sinal := ',';
                    end
                 else
                   if i=St_Campos.Count then
                     begin
                        sinal:='';
                     end;

                  Fdq_Query.SQL.add(' '+St_Campos[i]+sinal);
               end;
             Fdq_Query.SQL.add(' )');
             Fdq_Query.SQL.add(' Values ('+Valores+')');
           end;

           Fdq_Query.ExecSQL;

    finally
       Fdq_Query.Free;
    end;

end;

end.
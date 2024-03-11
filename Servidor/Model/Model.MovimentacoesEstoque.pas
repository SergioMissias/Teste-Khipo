unit Model.MovimentacoesEstoque;

interface
uses
  Model.Connection,FireDAC.Comp.Client,
  Horse, System.JSON, System.SysUtils,
  Data.DB, DataSet.Serialize;

  type

     TMovimentoEstoque = class

     private
    FValor_Unitario: Double;
    FId_Produto: int64;
    FQt_Movimentada: Double;
    FTipo_Movimento: string;
    fId_MovimentoEstoque: int64;
    FData_Movimento: string;
    FReg_Inventario: string;
    FId_Usuario: int64;


     public
        property Id_MovimentoEstoque: int64 read fId_MovimentoEstoque write FId_MovimentoEstoque;
        property Id_Produto: int64   read FId_Produto  write FId_Produto ;
        property Qt_Movimentada:Double  read FQt_Movimentada  write FQt_Movimentada ;
        property Tipo_Movimento:string   read FTipo_Movimento  write FTipo_Movimento ;
        property Data_Movimento:string  read FData_Movimento  write FData_Movimento ;
        property Valor_Unitario:Double   read FValor_Unitario  write FValor_Unitario ;
        property Id_Usuario: int64       read FId_Usuario  write FId_Usuario ;
        property  Reg_Inventario:string   read FReg_Inventario  write FReg_Inventario ;
        function IncluirMovimento(out erro:string): Boolean;

  end;




implementation





{ TMovimentoEstoque }

function TMovimentoEstoque.IncluirMovimento(out erro:string): Boolean;
var
    qry : TFDQuery;

begin
    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            sql.Clear;
            SQL.Add('INSERT INTO Movimento_Estoque(Id_Produto, Qt_Movimentada, Tipo_Movimento,Data_Movimento,Valor_Unitario,Id_Usuario,Reg_Inventario)');
            SQL.Add('VALUES(:Desc, :Preco, :un,:ID_GrProdutos,:ID_Produtos)');

            ParamByName('Id_Produto').Value := Id_Produto;
            ParamByName('Qt_Movimentada').Value := Qt_Movimentada;
            ParamByName('Tipo_Movimento').Value := Tipo_Movimento;
            ParamByName('Data_Movimento').Value := Data_Movimento;
            ParamByName('Valor_Unitario').Value := Valor_Unitario ;
            ParamByName('Id_Usuario').Value := Id_Usuario;
            ParamByName('Reg_Inventario').Value := Reg_Inventario ;
            ExecSQL;

            ID_Produto := FieldByName('Id_Produto').AsLargeInt;
        end;

        qry.Free;
        erro := '';
        result := true;

    except on ex:exception do
        begin
            erro := 'Erro ao cadastrar Produtos: ' + ex.Message;
            Result := false;
        end;
    end;
end;

end.

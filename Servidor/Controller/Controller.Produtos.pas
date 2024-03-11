unit Controller.Produtos;

interface

uses Horse, System.JSON, System.SysUtils, Model.Produtos,
     FireDAC.Comp.Client, Data.DB, DataSet.Serialize;

procedure Registry;

implementation

procedure ListarProdutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    Pro : TProdutos;
    qry : TFDQuery;
    erro : string;
    arrayProdutos : TJSONArray;
    Produtos : TJSONObject;
begin
    try
        Pro := TProdutos.Create;
    except
        res.Send('Erro ao conectar com o banco').Status(500);
        exit;
    end;

    try
        qry := Pro.ListarProdutos('', erro);

        arrayProdutos := qry.ToJSONArray();
        Produtos := TJSONObject.Create;
        produtos.AddPair('produtos',arrayProdutos);
        res.Send<TJSONObject>(produtos);

    finally
        qry.Free;
        Pro.Free;
    end;
end;

procedure ListarProdutosID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    Pro : TProdutos;
    objProdutos: TJSONObject;
    arrayProdutos :TJsonArray;
    qry : TFDQuery;
    erro : string;
begin
    try
        Pro := TProdutos.Create;
        Pro.id_Produtos := Req.Params['id'].ToInteger;
    except
        res.Send('Erro ao conectar com o banco').Status(500);
        exit;
    end;

    try
        qry := Pro.ListarProdutos('', erro);

        if qry.RecordCount > 0 then
        begin
            objProdutos := TJSONObject.Create;
            arrayProdutos := qry.ToJSONArray;
            objProdutos.AddPair('produto',arrayProdutos);

            res.Send<TJSONObject>(objProdutos)
        end
        else
            res.Send('Produto não encontrado').Status(404);
    finally
        qry.Free;
        Pro.Free;
    end;
end;

procedure Addprodutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    Pro : TProdutos;
    objProdutos: TJSONObject;
    erro : string;
    body  : TJsonValue;
begin
    // Conexao com o banco...
    try
        Pro := TProdutos.Create;
    except
        res.Send('Erro ao conectar com o banco').Status(500);
        exit;
    end;


    try
        try
            body := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(req.Body), 0) as TJsonValue;

            Pro.Desc := body.GetValue<string>('desc', '');
            Pro.ID_GrProdutos := body.GetValue<int64>('id_grprodutos', 0);
            Pro.un := body.GetValue<string>('un', '');
            Pro.Preco := body.GetValue<Double>('preco', 0);
            Pro.Inserir(erro);

            body.Free;

            if erro <> '' then
                raise Exception.Create(erro);

        except on ex:exception do
            begin
                res.Send(ex.Message).Status(400);
                exit;
            end;
        end;


        objProdutos := TJSONObject.Create;
        objProdutos.AddPair('id_produtos', Pro.id_Produtos.ToString);

        res.Send<TJSONObject>(objProdutos).Status(201);
    finally
        Pro.Free;
    end;
end;





procedure Deleteprodutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    Pro : TProdutos;
    objProdutos: TJSONObject;
    erro : string;
begin
    // Conexao com o banco...
    try
        Pro := TProdutos.Create;
    except
        res.Send('Erro ao conectar com o banco').Status(500);
        exit;
    end;

    try
        try
            Pro.id_Produtos := Req.Params['id'].ToInteger;

            if NOT Pro.Excluir(erro) then
                raise Exception.Create(erro);

        except on ex:exception do
            begin
                res.Send(ex.Message).Status(400);
                exit;
            end;
        end;


        objProdutos := TJSONObject.Create;
        objProdutos.AddPair('Id_Produtos', Pro.id_Produtos.ToString);

        res.Send<TJSONObject>(objProdutos);
    finally
        Pro.Free;
    end;
end;







procedure Editarprodutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
    Pro : TProdutos;
    objProdutos: TJSONObject;
    erro : string;
    body : TJsonValue;
begin
    // Conexao com o banco...
    try
        Pro := TProdutos.Create;
    except
        res.Send('Erro ao conectar com o banco').Status(500);
        exit;
    end;

    try
        try
            body := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(req.Body), 0) as TJsonValue;
            Pro.Desc := body.GetValue<string>('desc', '');
            Pro.ID_GrProdutos := body.GetValue<int64>('idgrprodutos', 0);
            Pro.un := body.GetValue<string>('un', '');
            Pro.Preco := body.GetValue<Double>('preco', 0);
            Pro.id_Produtos := body.GetValue<int64>('idprodutos', 0);
            Pro.Editar(erro);

            body.Free;

            if erro <> '' then
                raise Exception.Create(erro);




//        objProdutos := TJSONObject.Create;
//        objProdutos.AddPair('id_produto', Pro.id_Produtos.ToString);

        res.Send('Editado').Status(200);

        except on ex:exception do
            begin
                res.Send(ex.Message).Status(400);
                exit;
            end;
        end;
    finally
        Pro.Free;
    end;
end;

procedure Registry;
begin
    THorse.Get('/produtos', ListarProdutos);
    THorse.Get('/produtos/:id', ListarProdutosID);
    THorse.Post('/produtos', Addprodutos);
    THorse.Put('/produtos', Editarprodutos);
    THorse.Delete('/produtos/:id', Deleteprodutos);
end;

end.

interface

implementation

end.

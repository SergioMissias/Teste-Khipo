unit Model.Produtos;

interface

uses FireDAC.Comp.Client, Data.DB, System.SysUtils, Model.Connection;

type
    TProdutos = class
    private
        FID_Produtos: Integer;
        Fun: string;
        FDesc: string;
        FID_GrProdutos: int64;
        FPreco: Double;
    public
        constructor Create;
        destructor Destroy; override;
        property ID_Produtos : Integer read FID_Produtos write FID_Produtos;
        property Desc : string read FDesc write FDesc;
        property un : string read Fun write Fun;
        property ID_GrProdutos : int64 read FID_GrProdutos write FID_GrProdutos;
        property Preco : Double read FPreco write FPreco;
        function ListarProdutos(order_by: string; out erro: string): TFDQuery;
        function Inserir(out erro: string): Boolean;
        function Excluir(out erro: string): Boolean;
        function Editar(out erro: string): Boolean;
end;

implementation

{ TProdutos }

constructor TProdutos.Create;
begin
    Model.Connection.Connect;
end;

destructor TProdutos.Destroy;
begin
    Model.Connection.Disconect;
end;

function TProdutos.Excluir(out erro: string): Boolean;
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
            SQL.Add('DELETE FROM Produtos WHERE ID_Produtos=:ID_Produtos');
            ParamByName('ID_Produtos').Value := ID_Produtos;
            ExecSQL;
        end;

        qry.Free;
        erro := '';
        result := true;

    except on ex:exception do
        begin
            erro := 'Erro ao excluir Produtos: ' + ex.Message;
            Result := false;
        end;
    end;
end;

function TProdutos.Editar(out erro: string): Boolean;
var
    qry : TFDQuery;
begin
    // Validacoes...
    if ID_Produtos <= 0 then
    begin
        Result := false;
        erro := 'Informe o id. Produtos';
        exit;
    end;

    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            sql.Clear;
            SQL.Add('UPDATE Produtos SET Descricao = :Desc'+
                                        ',Preco_Venda =:Preco'+
                                        ',Un_Medida =:un '+
                                        ',Id_Grupo_Produto =:ID_GrProdutos');
            SQL.Add('WHERE ID_Produto=:ID_Produtos');
            ParamByName('Desc').Value := Desc;
            ParamByName('Preco').Value := Preco;
            ParamByName('un').Value := Un;
            ParamByName('ID_GrProdutos').Value := ID_GrProdutos;
            ParamByName('ID_Produtos').Value := ID_Produtos ;
            ExecSQL;
        end;

        qry.Free;
        erro := '';
        result := true;

    except on ex:exception do
        begin
            erro := 'Erro ao alterar cliente: ' + ex.Message;
            Result := false;
        end;
    end;
end;

function TProdutos.Inserir(out erro: string): Boolean;
var
    qry : TFDQuery;
begin
    // Validacoes...
    if desc.IsEmpty then
    begin
        Result := false;
        erro := 'Informe o nome do cliente';
        exit;
    end;

    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            sql.Clear;
            SQL.Add('INSERT INTO Produtos(Descricao, Preco_Venda, Un_Medida,Id_Grupo_Produto)');
            SQL.Add('VALUES              (:Desc    , :Preco     , :un      ,:ID_GrProdutos)');

            ParamByName('Desc').Value := Desc;
            ParamByName('Preco').Value := Preco;
            ParamByName('un').Value := Un;
            ParamByName('ID_GrProdutos').Value := ID_GrProdutos;
//            ParamByName('ID_Produtos').Value := ID_Produtos ;

            ExecSQL;

//            ID_Produtos := FieldByName('Produtos').AsInteger;
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

function TProdutos.ListarProdutos(order_by: string;
                                out erro: string): TFDQuery;
var
    qry : TFDQuery;
begin
    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT * FROM Produtos WHERE 1 = 1');

            if ID_Produtos > 0 then
            begin
                SQL.Add('AND id_Produto = :ID_Produtos');
                ParamByName('ID_Produtos').Value := ID_Produtos;
            end;

            if order_by = '' then
                SQL.Add('ORDER BY Descricao')
            else
                SQL.Add('ORDER BY ' + order_by);

            Active := true;
        end;

        erro := '';
        Result := qry;
    except on ex:exception do
        begin
            erro := 'Erro ao consultar Produtos: ' + ex.Message;
            Result := nil;
        end;
    end;
end;


end.

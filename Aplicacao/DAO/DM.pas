unit DM;

interface

uses
  System.SysUtils, System.Classes, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FMX.ListView;

type
  TDM_app = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTReq_Login: TRESTRequest;
    RESTReq_GrProduto: TRESTRequest;
    RESTReqListaProduto: TRESTRequest;
  private

    { Private declarations }
  public
    { Public declarations }
    procedure AddProduto(idProduto: integer;
                                    Descricao:string; Preco_Venda :Double ; LISTVIEW:TListView);
  end;

var
  DM_app: TDM_app;

implementation

uses
  FMX.ListView.Appearances, FMX.ListView.Types;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


procedure TDM_app.AddProduto(idProduto: integer;
                                    Descricao:string; Preco_Venda :Double ; LISTVIEW:TListView);
var
    item : TListViewItem;
    txt : TListItemText;
begin
    item := ListView.Items.Add;
    item.Height := 55;
//    item.Tag := 0; // Fechado...

    with item do
    begin
        tag := idProduto;
        txt := TListItemText(Objects.FindDrawable('Text1'));
        txt.Text := FormatFloat('00000', idProduto);

        TListItemText(Objects.FindDrawable('Text1')).Text := Descricao;
        TListItemText(Objects.FindDrawable('Text2')).Text := Preco_Venda.ToString;
    end;
end;





end.

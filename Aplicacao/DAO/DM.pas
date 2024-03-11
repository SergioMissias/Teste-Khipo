unit DM;

interface

uses
  System.SysUtils, System.Classes, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TDM_app = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTReq_Login: TRESTRequest;
    RESTReq_GrProduto: TRESTRequest;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_app: TDM_app;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

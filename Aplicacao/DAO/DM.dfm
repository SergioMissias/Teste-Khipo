object DM_app: TDM_app
  Height = 304
  Width = 582
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://192.168.1.202:9000'
    Params = <>
    Left = 256
    Top = 8
  end
  object RESTReq_Login: TRESTRequest
    Client = RESTClient1
    Params = <>
    Left = 368
    Top = 56
  end
  object RESTReq_GrProduto: TRESTRequest
    Client = RESTClient1
    Params = <>
    Left = 344
    Top = 120
  end
end

object dm: Tdm
  Height = 234
  Width = 532
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=Khipo'
      'User_Name=sa'
      'Password=Sm385211'
      'Server=ACER-SM05062022'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 152
    Top = 40
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://192.168.1.202:9000/produtos'
    Params = <>
    Left = 272
    Top = 24
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 304
    Top = 88
  end
  object RESTResponse1: TRESTResponse
    Left = 464
    Top = 48
  end
end

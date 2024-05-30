object DataModule21: TDataModule21
  Height = 480
  Width = 640
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Database3.accdb;Mo' +
      'de=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 160
    Top = 72
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Korisnik'
    Left = 24
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 72
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    Left = 24
    Top = 144
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Prihodi'
    Left = 288
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 320
    Top = 40
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 72
    Top = 336
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Rashodi'
    Left = 32
    Top = 312
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 464
    Top = 56
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ZaposleniAdministracija'
    Left = 544
    Top = 56
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource4
    Parameters = <>
    Left = 496
    Top = 136
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource4
    Parameters = <>
    Left = 440
    Top = 128
  end
  object DataSource5: TDataSource
    DataSet = ADOTable5
    Left = 472
    Top = 288
  end
  object ADOTable5: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    TableName = 'Prihodi'
    Left = 544
    Top = 280
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource5
    Parameters = <>
    Left = 512
    Top = 336
  end
  object DataSource6: TDataSource
    DataSet = ADOTable6
    Left = 312
    Top = 296
  end
  object ADOTable6: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    TableName = 'Studio'
    Left = 368
    Top = 272
  end
  object Zaposleni: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource4
    Parameters = <>
    Left = 352
    Top = 328
  end
  object ADOTable7: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    TableName = 'Izvestaj'
    Left = 240
    Top = 288
  end
  object DataSource7: TDataSource
    DataSet = ADOTable7
    Left = 192
    Top = 304
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource7
    Parameters = <>
    Left = 224
    Top = 336
  end
  object ADOTable8: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    TableName = 'Rashodi'
    Left = 176
    Top = 192
  end
  object DataSource8: TDataSource
    DataSet = ADOTable8
    Left = 136
    Top = 216
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource8
    Parameters = <>
    Left = 176
    Top = 224
  end
  object ADOTable9: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    TableName = 'Proizvodi'
    Left = 296
    Top = 160
  end
  object DataSource9: TDataSource
    DataSet = ADOTable9
    Left = 248
    Top = 168
  end
  object ADOQuery7: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource9
    Parameters = <>
    Left = 304
    Top = 200
  end
end

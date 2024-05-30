unit Unit21;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule21 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource5: TDataSource;
    ADOTable5: TADOTable;
    ADOQuery4: TADOQuery;
    DataSource6: TDataSource;
    ADOTable6: TADOTable;
    Zaposleni: TADOQuery;
    ADOTable7: TADOTable;
    DataSource7: TDataSource;
    ADOQuery5: TADOQuery;
    ADOTable8: TADOTable;
    DataSource8: TDataSource;
    ADOQuery6: TADOQuery;
    ADOTable9: TADOTable;
    DataSource9: TDataSource;
    ADOQuery7: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule21: TDataModule21;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

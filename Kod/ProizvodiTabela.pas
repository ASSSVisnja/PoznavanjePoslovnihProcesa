unit ProizvodiTabela;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, DodajProizvod, Unit21, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TForm35 = class(TForm)
    ImageViewer1: TImageViewer;
    Button2: TButton;
    Grid1: TGrid;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form35: TForm35;

implementation
uses Proizvodi;
{$R *.fmx}

procedure TForm35.Button1Click(Sender: TObject);
begin
Form36.Show;
Self.Hide;
end;

procedure TForm35.Button2Click(Sender: TObject);
begin
Form34.Show;
Self.Hide;
end;

end.

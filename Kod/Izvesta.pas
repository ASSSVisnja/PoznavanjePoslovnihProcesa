unit Izvesta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit21, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  DodajIzvesta;

type
  TForm31 = class(TForm)
    ImageViewer1: TImageViewer;
    Button2: TButton;
    Grid1: TGrid;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form31: TForm31;

implementation
uses Odrzavanje;
{$R *.fmx}

procedure TForm31.Button1Click(Sender: TObject);
begin
Form32.Show;
 Self.Hide;
end;

procedure TForm31.Button2Click(Sender: TObject);
begin
Form30.Show;
 Self.Hide;
end;

end.

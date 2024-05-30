unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit3,
  FMX.Edit, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Unit21,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.DB, Data.Win.ADODB, PrijavaZaposleni;

type
  TForm2 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    editUN: TEdit;
    editP: TEdit;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
 uses Unit1;
{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
var
  sUN, sP: String;
  Found: Boolean;
begin

  sUN := editUN.Text;
  sP := editP.Text;


  with DataModule21 do
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Korisnik WHERE EMail = :sUN AND Lozinka = :sP');
    ADOQuery1.Parameters.ParamByName('sUn').Value := sUN;
    ADOQuery1.Parameters.ParamByName('sP').Value := sP;
    ADOQuery1.Open;
    Found := not ADOQuery1.IsEmpty;
  end;

  if Found then
  begin

    Form3.Show;
    ShowMessage('Uspesno ste se prijavili.');
    Hide;
  end
  else
  begin

    ShowMessage('Pogresan email ili password.');

    editP.Text := '';
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 Form26.Show;
 Self.Hide;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form1.Show;
Self.Hide;
end;

end.

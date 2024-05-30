unit PrijavaZaposleni;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Administracija,
  Unit21;

type
  TForm26 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    editUN: TEdit;
    editP: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation
uses Unit2;

{$R *.fmx}

procedure TForm26.Button1Click(Sender: TObject);

var
  sUN, sP: String;
  Found: Boolean;
begin

  sUN := editUN.Text;
  sP := editP.Text;


  with DataModule21 do
  begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM ZaposleniAdministracija WHERE EMail = :sUN AND Lozinka = :sP');
    ADOQuery2.Parameters.ParamByName('sUn').Value := sUN;
    ADOQuery2.Parameters.ParamByName('sP').Value := sP;
    ADOQuery2.Open;
    Found := not ADOQuery2.IsEmpty;
  end;

  if Found then
  begin
    Form27.Show;
    ShowMessage('Uspesno ste se prijavili.');
    Hide;
  end
  else
  begin

    ShowMessage('Pogrsna sifra ili email.');

    editP.Text := '';
  end;
end;
procedure TForm26.Button3Click(Sender: TObject);
begin
Form2.Show;
Self.Hide;
end;

end.

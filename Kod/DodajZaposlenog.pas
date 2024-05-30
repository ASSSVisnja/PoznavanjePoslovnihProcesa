unit DodajZaposlenog;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.ExtCtrls, Unit21;

type
  TForm24 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Ime: TEdit;
    Prezime: TEdit;
    Email: TEdit;
    Telefon: TEdit;
    Lozinka: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation
uses Administracija;

{$R *.fmx}

procedure TForm24.Button1Click(Sender: TObject);
begin
if (Email.Text <> '') and (Telefon.Text <> '') and
    (Ime.Text <> '') and (Prezime.Text <> '') and
    (Lozinka.Text <> '') then
    with DataModule21 do
    begin
    try
      ADOConnection1.Connected := True;

      ADOConnection1.Execute(
        'INSERT INTO ZaposleniAdministracija (EMail, Telefon, Ime, Prezime, Lozinka) ' +
        'VALUES (' +
        QuotedStr(Email.Text) + ', ' +
        QuotedStr(Telefon.Text) + ', ' +
        QuotedStr(Ime.Text) + ', ' +
        QuotedStr(Prezime.Text) + ', ' +
        QuotedStr(Lozinka.Text) +
        ')'
      );

      ShowMessage('Uspesno ste se registrovali.');
      DataModule21.ADOQuery3.Close;
      DataModule21.ADOQuery3.SQL.Clear;
      DataModule21.ADOQuery3.SQL.Add('SELECT * FROM ZaposleniAdministracija');
      DataModule21.ADOQuery3.Open;
    except
      on E: Exception do
        ShowMessage('An error occurred: ' + E.Message);
    end;
  end
  else
    ShowMessage('Molim vas popunite sva polja.');

end;

procedure TForm24.Button3Click(Sender: TObject);
begin
Form27.Show;
Self.Hide;
end;

end.

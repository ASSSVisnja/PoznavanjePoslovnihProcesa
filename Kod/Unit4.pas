unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit2,
  FMX.Edit, Data.DB, Data.Win.ADODB, Unit21;

type
  TForm4 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Ime: TEdit;
    Prezime: TEdit;
    Email: TEdit;
    Telefon: TEdit;
    Lozinka: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

procedure TForm4.Button1Click(Sender: TObject);
begin
  if (Email.Text <> '') and (Telefon.Text <> '') and
    (Ime.Text <> '') and (Prezime.Text <> '') and
    (Lozinka.Text <> '') then
    with DataModule21 do
  begin
    try
      ADOConnection1.Connected := True;

      ADOConnection1.Execute(
        'INSERT INTO Korisnik (EMail, Telefon, Ime, Prezime, Lozinka) ' +
        'VALUES (' +
        QuotedStr(Email.Text) + ', ' +
        QuotedStr(Telefon.Text) + ', ' +
        QuotedStr(Ime.Text) + ', ' +
        QuotedStr(Prezime.Text) + ', ' +
        QuotedStr(Lozinka.Text) +
        ')'
      );

      ShowMessage('Uspesno ste se registrovali.');
      DataModule21.ADOQuery1.Close;
      DataModule21.ADOQuery1.SQL.Clear;
      DataModule21.ADOQuery1.SQL.Add('SELECT * FROM Korisnik');
      DataModule21.ADOQuery1.Open;
    except
      on E: Exception do
        ShowMessage('An error occurred: ' + E.Message);
    end;
  end
  else
    ShowMessage('Molim vas popunite sva polja.');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form2.Show;
Self.Hide;
end;

end.

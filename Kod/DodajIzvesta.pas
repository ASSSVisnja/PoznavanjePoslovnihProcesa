unit DodajIzvesta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, Unit21;

type
  TForm32 = class(TForm)
    Button1: TButton;
    Datum: TEdit;
    Oprema: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Stanje: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form32: TForm32;

implementation
uses Izvesta;
{$R *.fmx}

procedure TForm32.Button1Click(Sender: TObject);
begin
Form31.Show;
Self.Hide;
end;

procedure TForm32.Button2Click(Sender: TObject);
begin
if (Oprema.Text <> '') and (Stanje.Text <> '') and
    (Datum.Text <> '') then
    with DataModule21 do
    begin
    try
      ADOConnection1.Connected := True;

      ADOConnection1.Execute(
        'INSERT INTO Izvestaj (Oprema, Stanje, Datum) ' +
        'VALUES (' +
        QuotedStr(Oprema.Text) + ', ' +
        QuotedStr(Stanje.Text) + ', ' +
        QuotedStr(Datum.Text) +
        ')'
      );

      ShowMessage('Uspesno ste dodali izvestaj.');
      DataModule21.ADOQuery5.Close;
      DataModule21.ADOQuery5.SQL.Clear;
      DataModule21.ADOQuery5.SQL.Add('SELECT * FROM Izvestaj');
      DataModule21.ADOQuery5.Open;
    except
      on E: Exception do
        ShowMessage('An error occurred: ' + E.Message);
    end;
  end
  else
    ShowMessage('Molim vas popunite sva polja.');

end;

end.

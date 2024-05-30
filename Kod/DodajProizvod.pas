unit DodajProizvod;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, Unit21;

type
  TForm36 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Proizvodi: TEdit;
    Cena: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form36: TForm36;

implementation
uses ProizvodiTabela;
{$R *.fmx}

procedure TForm36.Button1Click(Sender: TObject);
begin
Form35.Show;
Self.Hide;
end;

procedure TForm36.Button2Click(Sender: TObject);
begin
if (Proizvodi.Text <> '') and (Cena.Text <> '') then
    with DataModule21 do
    begin
    try
      ADOConnection1.Connected := True;

      ADOConnection1.Execute(
        'INSERT INTO Proizvodi (Proizvodi, Cena) ' +
        'VALUES (' +
        QuotedStr(Proizvodi.Text) + ', ' +
        QuotedStr(Cena.Text) +
        ')'
      );

      ShowMessage('Uspesno ste dodali Proizvod.');
      DataModule21.ADOQuery7.Close;
      DataModule21.ADOQuery7.SQL.Clear;
      DataModule21.ADOQuery7.SQL.Add('SELECT * FROM Proizvodi');
      DataModule21.ADOQuery7.Open;
    except
      on E: Exception do
        ShowMessage('An error occurred: ' + E.Message);
    end;
  end
  else
    ShowMessage('Molim vas popunite sva polja.');

end;

end.

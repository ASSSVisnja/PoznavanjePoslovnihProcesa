unit Unit19;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit20,
  FMX.Edit, Unit21;

type
  TForm19 = class(TForm)
    Z: TImageViewer;
    Button1: TButton;
    Email: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Kartica: TEdit;
    ImePrezime: TEdit;
    Telefon: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation
uses Unit5;
{$R *.fmx}

procedure TForm19.Button1Click(Sender: TObject);
begin
Form5.Show;
Self.Hide;
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
Form20.Show;
Self.Hide;
end;

procedure TForm19.Button3Click(Sender: TObject);
begin
  if (Email.Text <> '') and (Telefon.Text <> '') and
    (ImePrezime.Text <> '') and
    (Kartica.Text <> '') then
    with DataModule21 do
  begin
    try
      ADOConnection1.Connected := True;

      ADOConnection1.Execute(
        'INSERT INTO Prihodi (EMail, Telefon, ImePrezime, Usluga, Iznos) ' +
        'VALUES (' +
        QuotedStr(Email.Text) + ', ' +
        QuotedStr(Telefon.Text) + ', ' +
        QuotedStr(ImePrezime.Text) + ', ' +
        QuotedStr('AudioMaterijal') + ', ' +
        QuotedStr('500') +
        ')'
      );

      ShowMessage('Uspesno ste platili uslugu.');
      DataModule21.ADOQuery4.Close;
      DataModule21.ADOQuery4.SQL.Clear;
      DataModule21.ADOQuery4.SQL.Add('SELECT * FROM Prihodi');
      DataModule21.ADOQuery4.Open;
      Form20.Show;
      Self.Hide;
    except
      on E: Exception do
        ShowMessage('An error occurred: ' + E.Message);
    end;
  end
  else
    ShowMessage('Molim vas popunite sva polja.');
end;

end.

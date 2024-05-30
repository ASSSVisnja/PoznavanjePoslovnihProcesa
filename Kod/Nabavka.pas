unit Nabavka;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, Unit21;

type
  TForm33 = class(TForm)
    Button1: TButton;
    Faktura: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Kartica: TEdit;
    Dobavljac: TEdit;
    Iznos: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form33: TForm33;

implementation
uses Odrzavanje;
{$R *.fmx}

procedure TForm33.Button1Click(Sender: TObject);
begin
Form30.Show;
Self.Hide;
end;

procedure TForm33.Button3Click(Sender: TObject);
begin
 if (Dobavljac.Text <> '') and (Faktura.Text <> '') and
    (Iznos.Text <> '')then
    with DataModule21 do
  begin
    try
      ADOConnection1.Connected := True;

      ADOConnection1.Execute(
        'INSERT INTO Rashodi (Dobavljac, IdFakture, Iznos) ' +
        'VALUES (' +
        QuotedStr(Dobavljac.Text) + ', ' +
        QuotedStr(Faktura.Text) + ', ' +
        QuotedStr(Iznos.Text) +
        ')'
      );

      ShowMessage('Uspesno ste platili fakturu.');
      DataModule21.ADOQuery6.Close;
      DataModule21.ADOQuery6.SQL.Clear;
      DataModule21.ADOQuery6.SQL.Add('SELECT * FROM Rashodi');
      DataModule21.ADOQuery6.Open;
    except
      on E: Exception do
        ShowMessage('An error occurred: ' + E.Message);
    end;
  end
  else
    ShowMessage('Molim vas popunite sva polja.');
end;

end.

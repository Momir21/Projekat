unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, Unit5;

type
  TForm3 = class(TForm)
    Username: TLabel;
    password: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Login: TButton;
    procedure LoginClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.LoginClick(Sender: TObject);
begin
 var username, password : string;

 username := Edit1.Text;
 password := Edit2.Text;

                 begin
 var FiveForm := TForm5.Create(Self);

 FiveForm.Show;
end;
end;

end.

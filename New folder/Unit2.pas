unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, Unit5;

type
  TForm2 = class(TForm)
    Signin: TButton;
    Username: TLabel;
    Email: TLabel;
    Password: TLabel;
    Confirm_password: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure SigninClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.SigninClick(Sender: TObject);
begin
    var username, email, password, con_password : string;

    username := Edit1.Text;
    email := Edit2.Text;
    password := Edit3.Text;
    con_password := Edit4.Text;

    if edit1.Text = null   then
    begin
      showMessage('Please enter username')
    end
    else
    showMessage('Correct');

      begin
 var FiveForm := TForm5.Create(Self);

 FiveForm.Show;
end;


end;


end.

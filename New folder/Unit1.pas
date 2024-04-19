unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, Unit2, Unit3;

type
  TForm1 = class(TForm)
    Signin: TButton;
    Login: TButton;
    procedure SigninClick(Sender: TObject);
    procedure LoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.LoginClick(Sender: TObject);
begin
 var ThirdForm := TForm3.Create(Self);

 ThirdForm.Show;
end;

procedure TForm1.SigninClick(Sender: TObject);
begin
 var SecondForm := TForm2.Create(Self);

 SecondForm.Show;
end;

end.

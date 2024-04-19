unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, Unit6, Unit7, Unit8;

type
  TForm5 = class(TForm)
    Vozac: TButton;
    Dispicar: TButton;
    Kupac: TButton;
    procedure KupacClick(Sender: TObject);
    procedure VozacClick(Sender: TObject);
    procedure DispicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

procedure TForm5.DispicarClick(Sender: TObject);
begin
begin
 var EightForm := TForm8.Create(Self);

 EightForm.Show;
end;
end;

procedure TForm5.KupacClick(Sender: TObject);
begin
begin
 var SixForm := TForm6.Create(Self);

 SixForm.Show;
end;
end;

procedure TForm5.VozacClick(Sender: TObject);
begin
begin
 var SevenForm := TForm7.Create(Self);

 SevenForm.Show;
end;
end;

end.

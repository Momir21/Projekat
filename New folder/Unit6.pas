unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm6 = class(TForm)
    Mesto_utovara: TLabel;
    Mesto_istovara: TLabel;
    Datum_prevoza: TLabel;
    Zakazi_transport: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Teret: TLabel;
    Edit4: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}

end.

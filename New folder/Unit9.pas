unit Unit9;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  TDataModule9 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDMemTable1: TFDMemTable;
    FDTable1: TFDTable;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDSQLiteSecurity1: TFDSQLiteSecurity;
  private
    { Private declarations }
    procedure initdatabase;
  public
    { Public declarations }
  end;

CONST
    DB_FILENAME = 'sqlite_encrypt.sdb';
    DB_PASSWORD = 'MYSQLitePassword';
    DB_ENCRYPTION = 'aes-256';
    DB_TABLE = ' ';

var
  DataModule9: TDataModule9;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}
uses
    system.IOUtils;


procedure TDataModule9.initdatabase;
begin
       FDConnection1.Params.Values['Database'] := Tpath.Combine(Tpath.GetDocumentsPath, DB_FILENAME);

       FDTable1.TableName := DB_TABLE;

       if TFile.Exists(FDConnection1.Params.Values['Database']) = true then
       begin
          FDSQLiteSecurity1.Database := FDConnection1.Params.Values['Database'];
       end
         else
         begin
               FDConnection1.Open;

               TRY
                   FDTable1.FieldDefs.Clear;
                   FDTable1.FieldDefs.Assign(FDMemtable1.FieldDefs);
                   FDTable1.CreateTable(false);
                   FDTable1.CopyDataSet(FDMemtable1, [coStructure, coRestart, coAppend]);


               FINALLY
                         FDConnection1.Close;
               END;

                FDSQLiteSecurity1.Database := FDConnection1.Params.Values['Database'];
                FDSQLiteSecurity1.Password := DB_ENCRYPTION + ':' + DB_PASSWORD;
                FDSQLiteSecurity1.SetPassword;
         end;

                 FDConnection1.Params.Values['Encryption']:= DB_ENCRYPTION;
                 FDConnection1.Params.Password := DB_PASSWORD;
                 FDConnection1.Open;
                 FDTable1.Open;
                 FDMemtable1.Free;
end;

end.

unit UnitReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComObj, StdCtrls, Registry ;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var reg: TRegIniFile;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
   reg:=TRegIniFile.Create('Subkey');
   reg.WriteString('TEST', 'Param', edt1.Text);
   if not reg.OpenKey('Subkey\TEST',false) then
      lbl1.Caption:='добавлено';
   reg.Free;
end;

procedure TForm1.btn2Click(Sender: TObject);
var r:TRegistry;
begin
     r:=TRegistry.Create;
     r.RootKey:= HKEY_CURRENT_USER;
     if r.DeleteKey('Subkey') then lbl1.Caption:='ok';
    r.Free  ;
end;

end.

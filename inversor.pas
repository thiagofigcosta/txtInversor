unit inversor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i, t: cardinal; s : string;
begin
  if (Edit1.Text <> '') then // aqui ele  verifica se o 'TEdit1' esta diferente de Vazio
  begin                      // Caso não esteja vazio Faça
    s := '';                 // variavel 'S' recebe 'Vazio'
    t:=length(Edit1.Text);   // Variavel 'T' Recebe o Texto digita por Caracter
    setlength(s,t);          // 'SetLength' Lê Todo o texto
    for i:=0 to t-1 do         // do Inicio até o Fim do texto digitado faça
      s[t-i]:=Edit1.Text[i+1]; // Var 'S' na posição 'T-i' recebe o texto invertendo ele
    edit2.text := s;           // 'TEdit2' recebe o Texto ja Invertido
    end
  else
    begin
      ShowMessage('Digite Algum Texto!'); // caso O Edit1 esteja Vazio  aparece a Mensagem.
    end
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear; // Este Comando Faz com que  Limpe o campo do  Edit1
  Edit2.Clear; // Este Comando Faz com que  Limpe o campo do  Edit2
end;


end.

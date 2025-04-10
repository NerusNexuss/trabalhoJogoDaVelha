unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    LbPlacarO: TLabel;
    BtnReiniciarJogo: TButton;
    BtnSair: TButton;
    LbJogadorDaVezResultado: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function vezJogador(LbJogadorDaVezResultado: string): string;
begin

  if LbJogadorDaVezResultado = 'x' then
     LbJogadorDaVezResultado := 'o'
  else if LbJogadorDaVezResultado = 'o'then
      LbJogadorDaVezResultado := 'x';

  vezJogador := LbJogadorDaVezResultado;
end;

procedure TForm1.Button1Click(Sender: TObject);
  var
    escolherJogador: String;


begin
    Button1.Caption := LbJogadorDaVezResultado.Caption;
    escolherJogador := vezJogador(LbJogadorDaVezResultado.Caption);
    LbJogadorDaVezResultado.Caption := escolherJogador;

end;

end.

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
    LbPlacarX: TLabel;
    LbPlacarO: TLabel;
    BtnReiniciarJogo: TButton;
    BtnSair: TButton;
    LbJogadorDaVezResultado: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BtnReiniciarJogoClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
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

function Jogar(Botao: TButton; JogadorAtual: string): string;
begin
  if Botao.Caption <> '' then
    Exit(JogadorAtual);

  Botao.Caption := JogadorAtual;
  Result := vezJogador(JogadorAtual);
end;

function VerificarVitoria( Button1, Button2, Button3,Button4, Button5, Button6,Button7, Button8, Button9: TButton): string;
begin

  if (Button1.Caption <> '') and (Button1.Caption = Button2.Caption) and (Button2.Caption = Button3.Caption) then
    Exit(Button1.Caption);
  if (Button4.Caption <> '') and (Button4.Caption = Button5.Caption) and (Button5.Caption = Button6.Caption) then
    Exit(Button4.Caption);
  if (Button7.Caption <> '') and (Button7.Caption = Button8.Caption) and (Button8.Caption = Button9.Caption) then
    Exit(Button7.Caption);


  if (Button1.Caption <> '') and (Button1.Caption = Button4.Caption) and (Button4.Caption = Button7.Caption) then
    Exit(Button1.Caption);
  if (Button2.Caption <> '') and (Button2.Caption = Button5.Caption) and (Button5.Caption = Button8.Caption) then
    Exit(Button2.Caption);
  if (Button3.Caption <> '') and (Button3.Caption = Button6.Caption) and (Button6.Caption = Button9.Caption) then
    Exit(Button3.Caption);


  if (Button1.Caption <> '') and (Button1.Caption = Button5.Caption) and (Button5.Caption = Button9.Caption) then
    Exit(Button1.Caption);
  if (Button3.Caption <> '') and (Button3.Caption = Button5.Caption) and (Button5.Caption = Button7.Caption) then
    Exit(Button3.Caption);


  Result := '';
end;

function ReiniciarJogo(
  Button1, Button2, Button3,
  Button4, Button5, Button6,
  Button7, Button8, Button9: TButton
): string;
begin
  Button1.Caption := '';
  Button2.Caption := '';
  Button3.Caption := '';
  Button4.Caption := '';
  Button5.Caption := '';
  Button6.Caption := '';
  Button7.Caption := '';
  Button8.Caption := '';
  Button9.Caption := '';

  Result := 'x';

end;

function AtualizarPlacar(vencedor: string; LbPlacarX, LbPlacarO: TLabel): string;
var
  placarX, placarO: Integer;
begin
  placarX := StrToIntDef(LbPlacarX.Caption, 0);
  placarO := StrToIntDef(LbPlacarO.Caption, 0);

  if vencedor = 'x' then
  begin
    Inc(placarX);
    LbPlacarX.Caption := IntToStr(placarX);
  end
  else if vencedor = 'o' then
  begin
    Inc(placarO);
    LbPlacarO.Caption := IntToStr(placarO);
  end;
  Result := 'X: ' + IntToStr(placarX) + ' | O: ' + IntToStr(placarO);
end;

function ZerarPlacar(LbPlacarX, LbPlacarO: TLabel): string;
begin
  LbPlacarX.Caption := '0';
  LbPlacarO.Caption := '0';

  Result := 'Placar zerado!';
end;




procedure TForm1.BtnReiniciarJogoClick(Sender: TObject);
begin

  LbJogadorDaVezResultado.Caption := ReiniciarJogo(
    Button1, Button2, Button3,
    Button4, Button5, Button6,
    Button7, Button8, Button9
  );


  ZerarPlacar(LbPlacarX, LbPlacarO);
end;
procedure TForm1.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button1, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button2, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button3, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button4, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button5, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button6, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button7, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button8, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;
procedure TForm1.Button9Click(Sender: TObject);
var
  vencedor: string;
begin
  LbJogadorDaVezResultado.Caption := Jogar(Button9, LbJogadorDaVezResultado.Caption);

  vencedor := VerificarVitoria(Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9);

  if vencedor <> '' then
  begin
    ShowMessage('Jogador ' + vencedor + ' venceu!');


    AtualizarPlacar(vencedor, LbPlacarX, LbPlacarO);
  end;
end;

end.

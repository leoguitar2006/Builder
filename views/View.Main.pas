unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Providers.NBA, Model.Team,
  Providers.TeamBuilder, Interfaces.BuildTeam;

type
  TFrmMain = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.Button1Click(Sender: TObject);
var
  Builder : IBuildTeam;
  Celtics, Cavs, Suns, Bulls: TTeam;
begin
  Memo1.Lines.Clear;

  Builder := TTeamBuilder.Create;

  Celtics := TNBA.CreateBostonCeltics(Builder);
  Memo1.Lines.Add(Celtics.Name);
  Memo1.Lines.Add(Celtics.Conference);
  Memo1.Lines.Add(Celtics.Titles.ToString);
  Memo1.Lines.Add('--------------');

  Cavs := TNBA.CreateClevelandCavaliers(Builder);
  Memo1.Lines.Add(Cavs.Name);
  Memo1.Lines.Add(Cavs.Conference);
  Memo1.Lines.Add(Cavs.Titles.ToString);
  Memo1.Lines.Add('--------------');

  Suns := TNBA.CreatePhoenixSuns(Builder);
  Memo1.Lines.Add(Suns.Name);
  Memo1.Lines.Add(Suns.Conference);
  Memo1.Lines.Add(Suns.Titles.ToString);
  Memo1.Lines.Add('--------------');

  Bulls := TNBA.CreateChicagoBulls(Builder);
  Memo1.Lines.Add(Bulls.Name);
  Memo1.Lines.Add(Bulls.Conference);
  Memo1.Lines.Add(Bulls.Titles.ToString);
  Memo1.Lines.Add('--------------');
end;

end.

program Builder;

uses
  Vcl.Forms,
  View.Main in 'views\View.Main.pas' {FrmMain},
  Model.Team in 'models\Model.Team.pas',
  Interfaces.BuildTeam in 'interfaces\Interfaces.BuildTeam.pas',
  Providers.TeamBuilder in 'providers\Providers.TeamBuilder.pas',
  Providers.NBA in 'providers\Providers.NBA.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.

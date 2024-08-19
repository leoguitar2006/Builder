unit Providers.TeamBuilder;

interface

uses Interfaces.BuildTeam, Model.Team;

type
  TTeamBuilder = class(TInterfacedObject, IBuildTeam)
  private
    FTeam: TTeam;
  public
    constructor Create;
    destructor Destroy; override;

    function SetName(Name: String): IBuildTeam;
    function SetConference(Conference: String): IBuildTeam;
    function SetTitles(Titles: integer): IBuildTeam;

    function GetTeam: TTeam;
  end;

implementation

{ TTeamBuilder }

constructor TTeamBuilder.Create;
begin
  FTeam := TTeam.Create;
end;

destructor TTeamBuilder.Destroy;
begin
  FTeam.Free;
  inherited;
end;

function TTeamBuilder.GetTeam: TTeam;
begin
  Result := FTeam;
end;

function TTeamBuilder.SetConference(Conference: String): IBuildTeam;
begin
  FTeam.Conference := Conference;
  Result := Self;
end;

function TTeamBuilder.SetName(Name: String): IBuildTeam;
begin
  FTeam.Name := Name;
  Result := Self;
end;

function TTeamBuilder.SetTitles(Titles: integer): IBuildTeam;
begin
  FTeam.Titles := Titles;
  Result := Self;
end;

end.

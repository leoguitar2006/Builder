unit Providers.NBA;

interface

uses Providers.TeamBuilder, Model.Team, Interfaces.BuildTeam;

type
  TNBA = class
    class function CreateBostonCeltics(Builder: IBuildteam): TTeam;
    class function CreateChicagoBulls(Builder: IBuildTeam): TTeam;
    class function CreateClevelandCavaliers(Builder: IBuildTeam): TTeam;
    class function CreatePhoenixSuns(Builder: IBuildTeam): TTeam;
  end;

implementation

{ TNBA }

class function TNBA.CreateBostonCeltics(Builder: IBuildTeam): TTeam;
begin
  Result := Builder.SetName('Boston Celtics')
                   .SetConference('East')
                   .SetTitles(18)
                   .GetTeam;
end;

class function TNBA.CreateChicagoBulls(Builder: IBuildTeam): TTeam;
begin
    Result := Builder.SetName('Chicago Bulls')
                   .SetConference('East')
                   .SetTitles(6)
                   .GetTeam;
end;

class function TNBA.CreateClevelandCavaliers(Builder: IBuildTeam): TTeam;
begin
  Result := Builder.SetName('Cleveland Cavaliers')
               .SetConference('East')
               .SetTitles(1)
               .GetTeam;
end;

class function TNBA.CreatePhoenixSuns(Builder: IBuildTeam): TTeam;
begin
  Result := Builder.SetName('Phoenix Suns')
             .SetConference('West')
             .SetTitles(0)
             .GetTeam;
end;

end.

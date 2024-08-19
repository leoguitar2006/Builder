unit Interfaces.BuildTeam;

interface

uses Model.Team;

type
  IBuildTeam = interface
    ['{E050CC34-7018-48AC-9DCA-B4900BED3F15}']
    function SetName(Name: String): IBuildTeam;
    function SetConference(Conference: String): IBuildTeam;
    function SetTitles(Titles: integer): IBuildTeam;
    function GetTeam: TTeam;
  end;



implementation

end.

unit Model.Team;

interface

type
  TTeam = class
  private
    FName: string;
    FConference: string;
    FTitles: integer;
    procedure SetConference(const Value: string);
    procedure SetName(const Value: string);
    procedure SetTitles(const Value: integer);
  published
    property Name: string read FName write SetName;
    property Conference: string read FConference write SetConference;
    property Titles: integer read FTitles write SetTitles;
  end;

implementation

{ TTeam }

procedure TTeam.SetConference(const Value: string);
begin
  FConference := Value;
end;

procedure TTeam.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TTeam.SetTitles(const Value: integer);
begin
  FTitles := Value;
end;

end.

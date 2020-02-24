unit SimpleAttributes;

interface

uses
  System.RTTI, System.Variants, System.Classes;

type
  Tabela = class(TCustomAttribute)
  private
    FName: string;
  public
    constructor Create(aName: string);
    property Name: string read FName;
  end;

  Campo = class(TCustomAttribute)
  private
    FName: string;
  public
    Constructor Create(aName: string);
    property Name: string read FName;
  end;

  PK = class(TCustomAttribute)
  end;

  Ignore = class(TCustomAttribute)
  end;

  AutoInc = class(TCustomAttribute)
  end;

  Bind = class(TCustomAttribute)
  private
    FField: String;
    procedure SetField(const Value: String);
  published
    constructor Create (aField : String);
    property Field : String read FField write SetField;
  end;
  
  ProceName = class(TCustomAttribute)
  private
    FName: String;
  public
    constructor Create(Const aName: String);
    property Name: String read FName write FName;
  end;

  FieldRetorno = class(TCustomAttribute)
  private
    FName: String;
  public
    constructor Create(Const aName: String);
    property Name: String read FName write FName;
  end;

implementation


{ Bind }

constructor Bind.Create(aField: String);
begin
  FField := aField;
end;

procedure Bind.SetField(const Value: String);
begin
  FField := Value;
end;

{ Tabela }

constructor Tabela.Create(aName: string);
begin
  FName := aName;
end;

{ Campo }

constructor Campo.Create(aName: string);
begin
  FName := aName;
end;

{ ProceName }

constructor ProceName.Create(const aName: String);
begin
  FName := aName;
end;

{ FieldRetorno }

constructor FieldRetorno.Create(const aName: String);
begin
  FName := aName;
end;

end.

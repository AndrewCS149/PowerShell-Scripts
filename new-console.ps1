# creates a new dotnet console app and adds a solution to the csproj file
function new-console {
  Param(
    [string]$name
  )

  mkdir $name
  cd .\$name
  dotnet new console -n $name
  dotnet new sln
  dotnet sln add .\$name\"$name".csproj
  cd .\$name
}
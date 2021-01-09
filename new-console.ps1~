# creates a new dotnet console app and adds a solution to the csproj file
function new-console {
  # name: name of console app
  Param(
    [string]$name
  )

  # create a new directory and cd into new directory
  mkdir $name
  cd .\$name

  # create a new dotnet console app
  dotnet new console -n $name

  # create a new solution 
  dotnet new sln

  # add .csproj file to solution
  dotnet sln add .\$name\"$name".csproj

  # cd into project folder
  cd .\$name
}
# create new .cs file with starter code
function new-class {

  # name: the name of the new file
  # edit: switch statement to signify if file should be opened for editing after creation
  Param(
    [string]$name,
    [switch]$edit
  )  

  # get namespace of project
  $namespace = read-host -prompt 'Namespace'.ToLower()

  # get current absolute path
  $path = -join "$(Get-Item .)".Replace("\", ".")
  $normalizePath = $path.ToLower()

  # get idx of namespace within path
  $idx = $normalizePath.IndexOf($namespace) + $namespace.Length

  # get path from project root to current folder
  $projectPath = $path.Substring($idx + 1)

  # create .cs file and add starter code
  new-item "$name.cs"
  add-content -Path .\"$name.cs" -Value "using System;

namespace $($projectPath) 
{ 
    public class $($name)
    {    
    }
}"

  if ($edit) {
    vim .\"$name.cs"
  }
}

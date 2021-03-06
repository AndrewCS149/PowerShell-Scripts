# PowerShell-Scripts

## Description

This serves as a location I can share my newly-created PowerShell scripts. The majority of these scripts are for command line use only. 

Be sure to check back as I will update this with more functions as I create them.

---

## How to Use

1. To use this function throughout your machine, you will first need to create a $PROFILE script. Follow the steps on the Microsoft documentation: [Creating a Profile](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.1)

2. Once a profile is set up, create another folder to hold all of the scripts you create (NOTE: you can just imbed all of these functions into the \$PROFILE script itself to use them, but that will quickly clutter your profile script). Then dot-source all of the `.ps1` files into the \$PROFILE script to use them in any location:

```powershell
$Path = "C:\Path\To\Scripts\Folder" 
Get-ChildItem -Path $Path -Filter *.ps1 |ForEach-Object {
    . $_.FullName
}
```

This code snippet was derived from Mathias Jessen on [Stack OverFlow:](https://stackoverflow.com/questions/38469234/how-to-source-all-powershell-scripts-from-a-directory)

---
## FUNCTIONS:

## `new-class`

The `new-class` file contains the function `new-class`. This function is used to create a new csharp.cs file with this basic starter code:

```csharp
using System;

namespace YourNamespace
{
    public class ClassName
    {
    }
}
```

#### Parameters:

Required

`$name` : The name of the .cs file.

Optional

`$edit` : Switch statement to determine if file should be opened (with VIM) for editing or not after the file is created.

#### Example:

`new-class MyFile -edit`

or 

`new-class MyFile`

---

## `new-console`

The `new-console` file contains the function `new-console`. This file will complete the following steps:

- create a new folder with the specified name
- change directory into new folder
- create a new dotnet console app with folder name
- create a new solution in the folder
- add the .csproj file to the solution
- open solution in visual studio

#### Parameters:

Required

`$name` : The name of the console app.

Optional

None.

#### Example:

`new-console ConsoleName`

---
## `acp`

This function streamlines the 'add commit push' process for GIT. When used, it will prompt for a commit message and the desired branch to push to. 

#### Parameters:

Required

None.

Optional

None.

#### Example:

`acp`

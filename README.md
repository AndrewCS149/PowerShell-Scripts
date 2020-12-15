# PowerShell-Scripts

---

## Description

This serves as a location I can share my newly-created PowerShell scripts. As I create more scripts, I will update the README with descriptions of each new file. 

---

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

#### Parameters

**Required**

`$name` : The name of the .cs file.

**Optional**

`$edit` : Switch statement to determine if file should be opened (with VIM) for editing or not after the file is created.

#### Example:

`new-class MyFile -edit`

or 

`new-class MyFile`

#### How to Use

To use this function throughout your machine, copy and paste this function into your $PROFILE file. This can be opened by running `notepad $PROFILE`. 

# Scripts - PS

This repository is dedicated for useful PowerShell Scripts, for sharing with everyone having common needs!

> Mostly system-wide scripts require Administrative rights to execute, in such a case, start PowerShell as *Administrator*


&nbsp;

&nbsp;

## Execution Policy

For executing any script, ***PS*** must be allowed to do so by setting the execution policy. Details can be taken from Microsoft documentation, but for our current purpose we will set the execution policy as follows:


&nbsp;

### Checking the execution policy

The command *Get-ExecutionPolicy -list* can be used for checking the currently set execution policy at all the levels of policy.

```powershell
PS C:\Windows\system32> Get-ExecutionPolicy -list

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       Undefined
 LocalMachine       Undefined


PS C:\Windows\system32>
```


&nbsp;

### Updating policy to "Unrestricted"

In order to execute any script, use:

```powershell
PS C:\Windows\system32> Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```


&nbsp;

### Changing policy back to "Undefined"

After executing the script, revert back the old, default policy:

```powershell
PS C:\Windows\system32> Set-ExecutionPolicy -ExecutionPolicy Undefined
```


&nbsp;

&nbsp;

## Executing the Script

After setting the execution policy, execute the script like:

```powershell
PS C:\Windows\system32> .\<<Script-File>>
```







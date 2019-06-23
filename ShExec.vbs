Set Arg = WScript.Arguments
If Arg.Unnamed.Count = 0 Then WScript.Quit 1
app = Arg.Unnamed.Item(0)
If Arg.Named.Exists("par") Then parameter = Arg.Named.Item("par") Else parameter = ""
If Arg.Named.Exists("dir") Then dir = Arg.Named.Item("dir") Else dir = ""
If Arg.Named.Exists("runas") Then uac = "runas" Else uac = "open"
window = 1
If Arg.Named.Exists("hide") Then window = 0
If Arg.Named.Exists("min") Then window = 2
If Arg.Named.Exists("max") Then window = 3
If Arg.Named.Exists("inactive") Then window = 4
If Arg.Named.Exists("current") Then window = 5
If Arg.Named.Exists("mininactive") Then window = 7
If Arg.Named.Exists("default") Then window = 10

Set sh = CreateObject("Shell.Application")
sh.ShellExecute app, parameter, dir, uac, window
WScript.Quit 0


'Tool Document
'
'Syntax
'      ShExec.vbs "application" [/par:TestParameter] [/dir:TestDirectory] [/runas] [/hide] [/min] [/max] [/inactive] [/mininactive] [/current] [/default]


'API: ShellExecute Document
'
'Syntax
'      .ShellExecute "application", "parameters", "dir", "verb", window
'
'      .ShellExecute 'some program.exe', '"some parameters with spaces"', , "runas", 1
'Key
'   application   The file to execute (required)
'   parameters    Arguments for the executable
'   dir           Working directory
'   verb          The operation to execute (runas/open/edit/print)
'   window        View mode application window (normal=1, hide=0, 2=Min, 3=max, 4=restore, 5=current, 7=min/inactive, 10=default)
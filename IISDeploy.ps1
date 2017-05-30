Param([string]$name, [string] $port, [string] $path )

# Повышаем права скрипта
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

# Получаем список сайтов на IIS 
$output = C:\Windows\System32\inetsrv\Appcmd.exe list site

# Ищем наш сайт
if ( "$output".IndexOf(("SITE `""+$name)) -gt -1){
	# Если существует то удаляем
    C:\Windows\System32\inetsrv\Appcmd.exe delete site $name
}

# Добавляем сайт
C:\Windows\System32\inetsrv\Appcmd.exe add site /name:$name /physicalPath:$path /bindings:http://localhost:$port

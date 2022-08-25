$LMD = (Get-Item "<path to a file>").LastWriteTime.ToString("MM/dd/yyyy")

$Today_Stamp = Get-Date -Format "MM/dd/yyyy"
$Log_Stamp = Get-Date -Format "MM/dd/yyyy HH:mm:ss"

if($LMD -eq $Today_Stamp)
{Echo ("[$Log_Stamp] today_stamp [$Today_Stamp] file_stamp [$LMD] True") >> "<path to a log_file>"}
else {Echo ("[$Log_Stamp] today_stamp [$Today_Stamp] file_stamp [$LMD] False") >> "<path to a log_file>"}

EXIT
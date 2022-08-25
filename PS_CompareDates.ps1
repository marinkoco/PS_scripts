#This PS script compares last write date to a file with today's date and  writes the result (0 or 1, with the timestamp of the action) to a log.

$LMD = (Get-Item "<path to a file>").LastWriteTime.ToString("MM/dd/yyyy")

$Today_Stamp = Get-Date -Format "MM/dd/yyyy"
$Log_Stamp = Get-Date -Format "MM/dd/yyyy HH:mm:ss"

if($LMD -eq $Today_Stamp)
{Echo ("[$Log_Stamp] today_stamp [$Today_Stamp] file_stamp [$LMD] True") >> "<path to a log_file>"}
else {Echo ("[$Log_Stamp] today_stamp [$Today_Stamp] file_stamp [$LMD] False") >> "<path to a log_file>"}

EXIT

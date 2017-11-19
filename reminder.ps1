# Keep shopping list in TXT file on laptop
$list = Get-Content c:\users\nlemery81\desktop\shoppinglist.txt

$x = $list.length

$From = "nlemery81@gmail.com"
$To = "mycellnumber@vtext.com"
$Subject = "Go to the store"
$Body = $list
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"

if ($x > 0) {
	Send-MailMessage -From $From -to $To -Subject $Subject -Body $Body 
	-SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential 
	("nlemery81", "thisisnotmyrealpassword")
	}

# If there is any text in shoppinglist.txt, email it to my cell phone's 
# SMS gateway. Use Windows Task Scheduler to run script with Powershell 
# every day at 6PM, 20 minutes before I get off the bus and back in 
# my car.

# Edited to remove personal information.

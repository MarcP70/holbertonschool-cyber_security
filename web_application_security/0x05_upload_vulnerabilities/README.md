Upload Vulnerabilities
 Amateur
 By: Yosri Ghorbel
 Weight: 1
 Migrated to checker v2:
 Your score will be updated as you progress.


Resources
Read or watch:
File upload vulnerabilities
Unrestricted File Upload
File Upload Attacks Explained
File Upload Protection – 10 Best Practices
Preventing File Upload Vulnerabilities
Testing for Upload Vulnerability
Bypass File Upload Restrictions
Understanding Content-Type and Content-Disposition Headers in File Uploads
References:
File Upload Protection Cheat Sheet
File Upload Security Checklist
Understanding MIME Types and File Extensions
Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google: (at least 14 questions)

What is an unrestricted file upload?
Why are file uploads a security risk?
How can file upload forms be exploited?
What is a web shell?
How do MIME types relate to upload security?
What is content-type spoofing?
How can server-side validation mitigate risks?
What is the importance of file extension filtering?
How can client-side checks be bypassed?
What are some secure file upload practices?
How does file size limitation help security?
What are the risks of storing files on the same domain?
How do file permissions affect upload security?
Why should upload directories not be executable?
Requirements
General
All your files will be run on Kali Linux 2023.2
Allowed editors: vi, vim, emacs
You must substitute the IP range for $1.
The first line of all your files should be exactly #!/bin/bash.
All your files should end with a new line.
All your scripts should be less than 4 lines long $ wc -l file should print <= 4.
You are not allowed to use backticks, &&, || or ;.
Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Oops! We forget that endpoint for testing purpose
mandatory
Your mission is to determine which subdomain contains a web application with an insecure file upload feature.
This task requires you to methodically explore each subdomain, looking for any interfaces or functionalities that allow file uploads.
Identifying the correct subdomain sets the stage for deeper vulnerability analysis in subsequent tasks.

Target Machine: Cyber - WebSec 0x05
Main Domain: http://web0x05.hbtn
Example:
$ cat 0-target.txt
up3l0d3r.web0x05.hbtn
Useful Instructions
1. Consider using automated tools like subdomain enumeration tools or web crawlers to quickly identify which subdomains host web applications with upload features.
2. For each subdomain that hosts an upload feature, manually inspect the page and attempt a benign file upload (e.g., a simple text file) to understand how the application processes uploads.
3. Keep detailed notes on your findings for each subdomain, including the types of upload features found and any immediate indicators of potential vulnerabilities.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x05_upload_vulnerabilities
File: 0-target.txt

0/4 pts
1. Some filters are only client-sided !
mandatory
Having identified the vulnerable subdomain, your next challenge is to bypass the client-side file type filtering mechanism of the web application’s upload feature.
Your success in uploading a restricted file type will reveal a hidden Flag ⛳️ as proof of your accomplishment.

Target Machine: Cyber - WebSec 0x05
Target Endpoint: http://[vuln-subdomain].web0x05.hbtn/task1
You will need to use this php command to read the flag: <?php readfile('FLAG_1.txt') ?>
FLAG will only be generated if you upload a php file!

Useful Instructions
1. Use browser developer tools to inspect the upload form and any JavaScript code that validates file types. Look for patterns or keywords it checks against.
2. Consider using tools like Burp Suite to intercept and modify the upload request, changing the file name or MIME type to bypass client-side checks.
3. Explore different ways to initiate the file upload (e.g., drag-and-drop functionality) that might not trigger client-side validation as expected.
4. Pay attention to any error messages or feedback from the server after attempting an upload. These messages can offer clues for refining your bypass technique.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x05_upload_vulnerabilities
File: 1-flag.txt

0/6 pts
2. Special Characters are so special !
mandatory
After successfully navigating past the client-side restrictions, you’re faced with a more formidable challenge: bypassing the server-side validation that scrutinizes the file formats being uploaded.
This task requires you to cleverly use special characters in the file name to deceive the server-side checks, allowing you to upload a file type that is normally restricted.
Successfully uploading such a file will unveil a hidden Flag ⛳️.

Target Machine: Cyber - WebSec 0x05
Target Endpoint: http://[vuln-subdomain].web0x05.hbtn/task2
You will need to use this php command to read the flag: <?php readfile('FLAG_2.txt') ?>,
FLAG will only be generated if you upload a php file!

Useful Instructions
1. Investigate how the server processes file names and extensions. Some servers might strip or ignore certain special characters, altering the file name after processing.
2. Experiment with adding special characters like spaces, dots, or null bytes (`%00`) in the file extension. For example, attempting to upload a file named "payload.php.jpg" might be blocked, but "payload.php%00.jpg" could bypass the filter if the server improperly handles null bytes.
3. Utilize tools like Burp Suite to intercept and modify your upload requests, carefully crafting the file names with special characters to test the server's validation logic.
4. Keep an eye on the server's response to each upload attempt. A successful bypass might not always be explicitly confirmed by the application’s UI. Check for any changes in behavior or new functionalities accessible after your upload.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x05_upload_vulnerabilities
File: 2-flag.txt

0/6 pts
3. What mystery the Magic Numbers Hide ?
mandatory
With client-side and basic server-side restrictions behind you, the challenge now escalates to bypassing server-side validation that inspects the content of uploaded files, specifically through magic numbers.
Magic numbers are unique values at the beginning of files that identify the file format to the system.
This task involves manipulating an uploaded file’s magic numbers to pass it off as a benign type while maintaining its malicious functionality.
Successfully fooling the server’s content inspection will reveal another hidden Flag ⛳️.

Target Machine: Cyber - WebSec 0x05
Main Domain: http://[vuln-subdomain].web0x05.hbtn/task3
You will need to use this php command to read the flag: <?php readfile('FLAG_3.txt') ?>,
FLAG will only be generated if you upload a php file!

Useful Instructions
1. Research and understand the concept of magic numbers in file formats. Identify the magic numbers for both the file type you intend to upload and a benign file type that is allowed by the server.
2. Craft a file that begins with the magic numbers of an allowed file type but contains payload or code typical of a restricted file type. Tools like hex editors can help you modify the file content directly.
3. Test your crafted file by attempting to upload it through the application's upload feature. Pay close attention to how the application responds to determine if your bypass was successful.
4. If direct modification of magic numbers does not yield success, consider more advanced techniques such as embedding your malicious payload within a benign file in a way that does not affect the file's ability to pass as the benign type but still allows execution of the payload under certain conditions.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x05_upload_vulnerabilities
File: 3-flag.txt

0/6 pts
4. Does File Length matter ?
mandatory
This sophisticated security measure aims to prevent the upload of potentially malicious files by imposing a strict limit on the file size.
Your objective is to bypass this restriction and successfully upload a file that exceeds the server-imposed limit, revealing a hidden Flag ⛳️ as a marker of your success.

Target Machine: Cyber - WebSec 0x05
Main Domain: http://[vuln-subdomain].web0x05.hbtn/task4
There is also a another backdoor, just take a look at the response headers
You will need to use this php command to read the flag: <?php readfile('FLAG_4.txt') ?>,
FLAG will only be generated if you upload a php file!

Useful Instructions
1. Begin by understanding the server's file length restrictions. Attempt to upload files of varying sizes to pinpoint the exact limit imposed by the server-side validation.
2. Explore compression techniques or file manipulation methods that can reduce the apparent size of your payload without compromising its functionality. Consider formats that support compression natively and can be decompressed by the application or server.
3. Investigate alternative upload methods provided by the application that might not enforce the same file length checks as the primary upload feature. This could include APIs, legacy upload forms, or other indirect file submission functionalities.
4. Leverage tools like Burp Suite to intercept and modify upload requests, experimenting with ways to either compress your payload further or trick the server into misjudging the file size (e.g., by manipulating HTTP headers related to content length).
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x05_upload_vulnerabilities
File: 4-flag.txt

0/6 pts

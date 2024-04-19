Content Discovery
 Amateur
 By: Yosri Ghorbel
 Weight: 1
 Migrated to checker v2:
 Your score will be updated as you progress.


Resources
Read or watch:
Content discovery
Content Discovery for Web Application Security
Content Discovery: Understanding Your Web Attack Surface
What are the content discovery
OWASP Testing Guide: Content Discovery
Exploiting: Content Discovery
References:
dirb
nikto
sfuzz
wfuzz
gobuster
dirbuster
feroxbuster
Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

What is content discovery?
Why is content discovery important?
How does directory bruteforcing work?
What is Gobuster and how is it used?
Explain the use of Burp Suite in content discovery.
How does OWASP ZAP assist in content discovery?
What are wordlists and how are they used in content discovery?
Describe the purpose of tools like DirBuster.
What are hidden directories and files in web security?
Explain fuzzing in the context of web security.
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
0. Manual Discovery - Secrets in Plain Sight
mandatory
Dive into the art of content discovery by exploring often overlooked files that can be treasure troves of information: robots.txt, sitemap.xml, and favicon analysis.
Your mission is to uncover a hidden endpoint, a concealed resource, and identify the web application framework.

Target Machine: Cyber - WebSec 0x04
Target Endpoint: http://web0x04.hbtn/
For this task you should submit your finding in the following format: - <: from robots.txt>, <: from sitemap.xml>, <: from favicon> - Example:

$ cat 0-plain_sight.txt
/wp-admin, wp-upload.php, wordpress
Useful Instructions
1. Start by navigating to `/robots.txt`. Look for Disallow entries that might hint at hidden or restricted paths. One of these paths contains your first flag.
2. Access `/sitemap.xml` next. Sitemaps are intended to help search engines index web content but can also reveal hidden resources. Find the resource that's not linked from anywhere else on the site to discover your second flag.
3. Download the site's favicon.ico and use tools or online resources like the OWASP favicon database to match it against known framework icons. Identifying the correct framework will lead you to your third flag.
4. Pay close attention to the details in each file, as they might contain direct paths or subtle hints leading to the next discovery step.
5. Utilize online tools for favicon analysis and comparison to expedite framework identification.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 0-plain_sight.txt

0/4 pts
1. Manual Discovery - Headers, Headers, Always Check Headers
mandatory
HTTP Headers often hide secrets 🤫.
In this task, you’ll meticulously inspect HTTP response headers to unearth a hidden Flag ⛳️.
This requires a keen eye and an understanding of how developers might conceal information within the HTTP protocol.

Target Machine: Cyber - WebSec 0x04
Target Endpoint: http://web0x04.hbtn/
Useful Instructions
1. Utilize `curl`, browser developer tools, or similar tools to examine the complete set of HTTP response headers returned from the target endpoint.
2. Do not overlook non-standard headers; the flag may be tucked away within a custom or uncommon header field.
3. Be aware that servers can dynamically alter headers based on the request's nature. Vary your request type, user-agent, and other headers to provoke different responses.
4. Certain headers might appear only under specific circumstances (e.g., receiving error codes or when making requests with unique headers). Adjust your requests to explore these possibilities.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 1-flag.txt

0/6 pts
2. Manual Discovery - Stalking the Stack: A Template Tale
mandatory
Behind every sleek website lies a framework or template, often leaving breadcrumbs for the curious investigator.
Your mission: infiltrate cod.hbtn.io, sift through its JavaScript source code, and uncover the origin of its frontend template.

Target Website: https://cod.hbtn.io
Your task is to submit the URL of the live preview of the frontend template used by cod.hbtn.io, found on the template vendor’s website.

Example submission format:
$ cat 2-vendor.txt
https://vendorwebsite.com/template-name/
Useful Instructions
1. Investigate the JavaScript files included or referenced by `cod.hbtn.io`. Look for comments, file names, or other clues that might indicate the template's origin.
2. Pay attention to external libraries or frameworks linked within the source code, as these can often lead to template information.
3. Vendor URLs or template names might be mentioned directly in the JavaScript code—keep an eye out for URLs or references to third-party websites.
4. Once you have a potential name or source, research it online to find the vendor's website, specifically searching for a live preview of the template in use.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 2-vendor.txt

0/4 pts
3. Manual Discovery - Time Travelers: Unearthing the Past with OSINT
mandatory
Open Source Intelligence (OSINT) tools provide a treasure trove of information if you know where to look.
From understanding a website’s technology stack with:

Diving into its version history via the Wayback Machine
Exploring code repositories on GitHub
Discovering misconfigured S3 buckets
Leveraging Google dorking for targeted search results.
Exploring used framework with Wappalyzer
Each tool offers a unique lens to view a target’s digital footprint.
Your mission will extend beyond mere observation; you’ll apply these skills in a practical challenge.

For this endeavor, your destination is holbertonschool.com, but not as it exists today.
You’re tasked with journeying back in time to February 2016 using the Wayback Machine.
Your objective: identify the individual who was proudly mentioned on the index page as a “Sr. Software Engineer at Microsoft.”

Target Website: https://www.holbertonschool.com
Example:
$ cat 3-senior.txt
Yosri Ghorbel
Useful Instructions
1. Navigate to the Wayback Machine `https://web.archive.org` and search for `holbertonschool.com`.
2. Locate the snapshot closest to February 2016 and thoroughly explore the index page.
3. Your goal is to find a mention of an individual credited as a "Sr. Software Engineer at Microsoft" during that time frame.
4. This task tests your ability to use OSINT tools effectively, specifically the Wayback Machine, to uncover historical data about a target website that might not be readily available through current pages.

Remember:
- OSINT tools like Wappalyzer can reveal what technologies were used on `holbertonschool.com` at different times.
- GitHub might host previous versions of the website code or related projects that provide additional context or clues.
- Google dorking can help find mentions of `holbertonschool.com` in specific timeframes or contexts.
- Always respect privacy and ethical boundaries while conducting OSINT research.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 3-senior.txt

0/4 pts
4. The Buster Series - Initiating with Gobuster `dir mode`
mandatory
Gobuster is a powerful tool designed to automate the process of content discovery.
It employs various modes, making it indispensable for the modern cybersecurity toolkit.
Your quest involves mastering Gobuster’s modes to unearth hidden resources, subdomains, and much more.
We start our journey with an overview of the seven key modes Gobuster offers:

dir: A mode for classic directory brute-forcing.
dns: Brute-forces DNS subdomains.
s3: Enumerates open S3 buckets and checks for their existence and listings.
gcs: Searches for open Google Cloud Storage buckets.
vhost: Conducts brute-forcing of virtual hosts (vhosts), different from DNS subdomain searching.
fuzz: Undertakes basic fuzzing, pinpointing where a keyword (FUZZ) should be replaced.
tftp: Brute-forces TFTP file names.
This comprehensive feature set makes Gobuster adept at revealing the unseen parts of web applications and infrastructure.

Your first mission is to familiarize yourself with Gobuster’s dir mode by conducting a directory brute-force attack against a target website.
You’ll leverage this mode to discover hidden directories that will return a Flag ⛳️ as content with Task #4 as Website title.

Target Machine: Cyber - WebSec 0x04
Target Website: http://web0x04.hbtn
Useful Instructions
1. Select a wordlist for the directory brute-forcing operation. You can use common wordlists provided by tools like `dirb` or `SecLists`.
2. Execute Gobuster in `dir` mode against the target website, specifying your chosen wordlist.
3. Analyze the output, focusing on HTTP status codes that indicate the presence of a directory (e.g., 200 OK, 403 Forbidden).
4. Document any interesting directories you discover, noting their paths and any content or functionality they reveal.

Remember:
- Experiment with different wordlists and options (e.g., specifying file extensions) to uncover as much as possible.
- Be mindful of the network and server load you're generating with your requests to ensure responsible use of the tool.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 4-flag.txt

0/6 pts
5. The Buster Series - Unveiling Hidden Subdomains `dns mode`
mandatory
This powerful feature is designed for DNS subdomain enumeration,
allowing you to uncover hidden or unlinked subdomains which could expose additional facets of the target’s online presence or infrastructure vulnerabilities.
You’ll leverage this mode to discover hidden subdomain that will return a Flag ⛳️ as content with Task #5 as Website title.

Target Machine: Cyber - WebSec 0x04
Target Domain: web0x04.hbtn
Useful Instructions
1. Choose a wordlist tailored for DNS subdomain brute-forcing. The `SecLists` project offers comprehensive lists suited for this purpose.
2. Use Gobuster in `dns` mode to enumerate subdomains for the target domain.
3. Pay careful attention to the output, particularly any discovered subdomains. These entries can reveal development, staging, or other sensitive environments related to the target.
4. Record the subdomains found, noting any that were previously unknown or particularly interesting in terms of security or functionality.

Remember:
- Utilizing a high thread count with `-t` can speed up the scan but ensure it's within reasonable limits to avoid network or service disruption.
- Some discovered subdomains may not be immediately accessible or resolve to public IP addresses, necessitating further investigation or different attack vectors.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 5-flag.txt

0/6 pts
6. The Buster Series - Virtually Hosted Hijinks `vhost mode`
mandatory
Elevate your reconnaissance mission with Gobuster’s vhost mode, designed for brute-forcing virtual hosts (vhosts) on a target server.
This mode can unveil hidden vhosts, potentially exposing development, staging,
or alternate versions of the target’s web application that are hosted on the same server but are not directly linked or easily discovered.
You’ll leverage this mode to discover hidden host that will return a Flag ⛳️ as content with Task #8 as Website title.

Target Machine: Cyber - WebSec 0x04
Target Domain: web0x04.hbtn
Useful Instructions
1. Prepare a wordlist tailored for discovering subdomains and virtual hosts. Consider including environment-specific prefixes (e.g., "dev", "test", "staging") and common subdomains.
2. Initiate Gobuster in `vhost` mode against the target domain to enumerate possible virtual hosts.
3. Pay close attention to Gobuster's output, noting any successfully discovered virtual hosts. These vhosts might offer alternative paths to understanding or penetrating the target's web infrastructure.
4. Document each discovered virtual host, considering its potential role or function within the target organization. Evaluate any security implications or vulnerabilities that these alternate entry points might introduce.

Remember:
- When brute-forcing virtual hosts, you're effectively making numerous DNS queries. Ensure your actions do not violate any terms of service or ethical guidelines.
- Some discovered virtual hosts may require additional steps to access or may not resolve publicly. Further DNS enumeration or web application testing techniques may be necessary to fully explore these findings.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 6-flag.txt

0/6 pts
7. The Buster Series - Fuzzing for Fun and Profit `fuzz mode`
mandatory
Fuzzing is a powerful technique used to discover unknown vulnerabilities, misconfigurations, or hidden content by sending a wide range of inputs and observing the application’s responses.
You’ll leverage this mode to find a page that will return a Flag ⛳️ as content with Task #9 as Website title.

Target Machine: Cyber - WebSec 0x04
Target Website: http://web0x04.hbtn/{¶}/hbtn-{¶}
Useful Instructions
1. Constructing a fuzzing attack requires a precise location to be efficient.
2. Create or select a wordlist tailored for fuzzing. Your wordlist should include common filenames, extensions, or parameters that could unveil hidden content.
3. Execute Gobuster in `fuzz` mode, replacing the target URL's specific component `{¶}` with the keyword `FUZZ`.
4. Analyze the responses for status codes or content lengths that stand out from the norm. These anomalies could indicate successful discovery of hidden content or functionality.
5. Document any findings from your fuzzing efforts, highlighting how the discovered resources could impact the target's security posture or provide further avenues for exploration.

Remember:
- Fuzzing can generate a significant amount of traffic. Be mindful of the target server's capacity and any legal or ethical considerations.
- The effectiveness of fuzzing is highly dependent on the quality and relevance of your wordlist. Customizing your wordlist for the target environment can greatly enhance your results.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 7-flag.txt

0/6 pts
8. The Buster Series - Tackling TFTP with Brute Force `tftp mode`
mandatory
Your final challenge in the Gobuster series focuses on the tftp mode,
a specialized approach aimed at brute-forcing filenames on servers using the Trivial File Transfer Protocol (TFTP).
TFTP servers are commonly used for booting network devices or for simple file transfers in environments where security is not a primary concern.
However, misconfigured or unauthorized TFTP servers can expose sensitive information or system files to an attacker.
You’ll leverage this mode to find a file that contains a Flag ⛳️.

Target Machine: Cyber - WebSec 0x04
Target Host: web0x04.hbtn
Instructions
1. Given the nature of TFTP, compile a wordlist of common system configuration filenames, bootloader files, or backup file names that might exist on a TFTP server.
2. Use Gobuster’s `tftp` mode to enumerate files on the target TFTP server.
3. Be attentive to successful hits in Gobuster’s output, which can indicate the existence of a file on the server. Each found file warrants further analysis to understand its contents and implications.
4. Compile a list of discovered files, offering insights into any potentially sensitive data or system information they might reveal.

Remember:
- TFTP does not support authentication by default, making it inherently insecure. Ensure that your testing is authorized and does not disrupt the target environment.
- Brute-forcing a server can lead to network congestion or server performance issues. Conduct your tests responsibly and consider the impact on the target server and network.
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x04_content_discovery
File: 8-flag.txt

0/6 pts

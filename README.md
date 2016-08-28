# testATS
some bash scripts that collect hostnames and run Apple's NSCurl on them to test ATS Support

##usage

1. get urls from a file or folder (folder is recursively scanned)

		./findHosts.sh DEMO_input/ > result_urls.txt 
		
	(DEMO_input/ is the path to your files to scan!)
	
2. **OPTIONAL:** If you have some URLs in your project that you do not want to to test, you can remove them now. Write them in the Blacklist for that.

		 ./applyBlacklist.sh result_urls.txt DEMO_blacklist.txt 
		 
3. Run the ATSTest script which will execute NSCurl in a loop and write detailed reports for each URL in the folder specified.

		./testATS.sh ./result_urls.txt result_atstests
		
#####Done.
You get the detailed reports in the folder and can see which urls fail (or only work with certain allowed/disallowed exceptions)
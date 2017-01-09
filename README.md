# ><(((('>
# IOC_Dynamoo_Scraper
Dynamoo Scrapper IOC Crontab

Basic bash script for a cronjob, for creating near real-time IOC blacklisted IP list from the Dynamoo blog.

Uses curl to scrape http://blog.dynamoo.com once a day for blacklisted IP addresses. Extracts the IPs using regex from the curl scrape. Removes duplicates, using sort, for overlap.

Aggregation of the scrape runs once a day (via crontab), and archives the list a date labeled txt file list for importing into security tools.

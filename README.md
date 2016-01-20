# narextract
Extract performance and configuration data from EMC VNX NAR files

meant for use with windows explorer
select a group of NAR files and drag them onto the narextract.bat file
narextract will iterate through every NAR file in the list extracting the data to CSV


list the NARs available on the array
naviseccli -User <username> -Password <password> -Scope 1 -Address <IP ADDR> analyzer -archive -list
download the NARS from the array
naviseccli -User <username> -Password <password> -Scope 1 -Address <IP ADDR> analyzer -archive -path c:\temp -o -all
delete the NARS from the array
naviseccli -User <username> -Password <password> -Scope 1 -Address <IP ADDR> analyzer -archive -o -delete 



nalyzer -archiveretrieve [-file filename] [-location pathname] [-overwrite y|n] [-retry times] [-v]

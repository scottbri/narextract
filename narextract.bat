:Loop
IF [%1]==[] GOTO Continue

naviseccli analyzer -archivedump -data %1  -header y  -object s -enquote qu -out %1_extract_SP_DATA.csv -overwrite y
rem naviseccli analyzer -archivedump -data %1  -header y  -object l -format on,pt,rch,rcm,rb,wch,wcm,wb,rchr,wcrr -enquote qu -out %1_extract_LUNPROFILE_DATA.csv -overwrite y
naviseccli analyzer -messner -archivedump -data %1  -header y  -object al -format on,pt,rch,rcm,rb,wch,wcm,wb,rchr,wcrr -enquote qu -out %1_extract_ALL-LUNPROFILE_DATA.csv -overwrite y

rem naviseccli analyzer -messner -archivedump -stats %1  -out %1_extract_STATS.txt -overwrite y
rem naviseccli analyzer -messner -archivedump -rel %1  -out %1_extract_RELATIONS.xml -xml -overwrite y
naviseccli analyzer -messner -archivedump -config %1  -out %1_extract_CONFIG.xml -xml -overwrite y

rem naviseccli analyzer -archivedump -data %1  -header y  -object s -format oan,pt,on,u,rt,tb,tt,abql,dp -enquote qu -out %1_extract_SP.csv -overwrite y
naviseccli analyzer -archivedump -data %1  -header y  -object d -format oan,pt,on,u,rt,tb,tt,abql -enquote qu -out %1_extract_DISK_DATA.csv -overwrite y
rem naviseccli analyzer -archivedump -data %1  -header y  -object al -enquote qu -out %1_extract_allluns.csv -overwrite y
rem naviseccli analyzer -archivedump -data %1  -header y  -object p -format oan,pt,on,tb,tt,rb,wb,rio,wio -enquote qu -out %1_extract_port.csv -overwrite y
naviseccli analyzer -archivedump -data %1  -header y  -object rg -format oan,pt,on,u,rt,tb,tt,abql -enquote qu -out %1_extract_raidgroup.csv -overwrite y
naviseccli analyzer -archivedump -data %1  -header y  -object ml -format oan,pt,on,u,rt,tb,tt,abql,rb,wb,rio,rch,rcm,rchr,wio,wch,wcm,wchr,ff -enquote qu -out %1_extract_metalun.csv -overwrite y


rem naviseccli analyzer -archivedump -data %1  -header y  -object tl -format on,pt,rch,rcm,rb,wch,wcm,wb,tb,tt,rio,wio -enquote qu -out %1_extract_THIN-LUNPROFILE_DATA.csv -overwrite y
rem naviseccli analyzer -messner -archivedump -data %1  -header y  -object pl -format on,pt,rch,rcm,rb,wch,wcm,wb,tb,tt,rio,wio -enquote qu -out %1_extract_POOL-LUNPROFILE_DATA.csv -overwrite y
rem naviseccli analyzer -messner -archivedump -data %1  -header y  -object ppl -format on,pt,rch,rcm,rb,wch,wcm,wb,tb,tt,rio,wio -enquote qu -out %1_extract_PRIVPOOL-LUNPROFILE_DATA.csv -overwrite y
rem naviseccli analyzer -messner -archivedump -data %1  -header y  -object prg -format oan,pt,on,u,rt,tb,tt,abql -enquote qu -out %1_extract_privateraidgroup.csv -overwrite y


rem naviseccli analyzer -messner -archivedump -data %1  -header y  -enquote qu -out %1_extract_EVERYTHING.csv -overwrite y

rem naviseccli analyzer -archivedump -data %1  -header y  -object al -format on,pt,rb,rs,rio,wb,ws,wio -enquote qu -out %1_extract_symmmerge-import.csv -overwrite y



SHIFT
GOTO Loop
:Continue

pause
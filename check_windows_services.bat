@Echo Off

REM Required for arrays.
setlocal enabledelayedexpansion

set services=XXXXXXXXXXXXXXXXXXXXXXXXX^
 			 xxxxxxxxxxxxx^
			 xxxxxxxxxxxxx^
			 xxxxxxxxxxxxx^
			 xxxxxxxxxxxxx^
			 xxxxxxxxxxxxx^
			 xxxxxxxxxxxxx^
			 xxxxxxxxxxxxx^
			 xxxxxxxxxxxxx^
		
			 
REM (for %%a in (%services%) do (
  
  REM SC queryex "%%a"|Find "STATE"|Find /v "RUNNING">Nul&&(
    REM @echo CRITICAL: "%%a" is not working.
    REM REM @exit 2
	REM )||(
		REM @echo OK: "%%a" is working.
		REM REM @exit 0
	REM )
REM )) 

(for %%a in (%services%) do (
  
  SC queryex "%%a"|Find "STATE"|Find /v "RUNNING">Nul&&(
    @echo CRITICAL: "%%a" service is not working.
    @exit 2
	)||(
		REM The service is working.
	)
))

@echo OK: 
@exit 0




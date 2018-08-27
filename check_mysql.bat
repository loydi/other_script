@Echo Off
Set ServiceName=mysql

SC queryex "%ServiceName%"|Find "STATE"|Find /v "RUNNING">Nul&&(

    @echo CRITICAL: "%ServiceName%" is not working.
    @exit 2
)||(
    @echo OK: "%ServiceName%" is working.
    @exit 0
)
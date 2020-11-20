MAKEFILE_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
backup-mysql-prod-to-local:                                                                                                                                                                                                                                                                                                                          
	ssh devops@academy.colosseumdental.com "sudo -i PWD=/root/ mysqldump --opt --single-transaction d8_aca_prod|gzip" > ../backups/d8_aca_prod.$$(date +%Y%m%d-%H%M).sql.gz 

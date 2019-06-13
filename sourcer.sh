alias dcab='docker-compose exec ngafid20_serv /bin/bash' # enter bash shell
alias dcrn='docker-compose exec ngafid20_serv mvn compile exec:java -Dexec.mainClass="org.ngafid.WebServer"' # run webserver
alias dcpf='docker-compose exec ngafid20_serv mvn compile exec:java -Dexec.mainClass="org.ngafid.ProcessFlights"' # process flights
alias dcb='docker-compose build' # build container
alias dcbu='docker-compose up --build -d' # build and up
alias dcps='docker-compose ps' # lists running containers
alias dka='docker kill $(docker ps -q)'

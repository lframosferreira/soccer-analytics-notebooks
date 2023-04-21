#!/bin/bash

# create data dir if it doens't exist
if [ ! -d "data/" ]; then 
    mkdir data;
fi

if [ ! -d "data/atv03" ]; then
    mkdir data/atv03;
fi

mkdir \
    data/atv03/competitions \
    data/atv03/events \
    data/atv03/matches \
    data/atv03/playeranks \
    data/atv03/teams \
    data/atv03/players \
    data/atv03/referees \
    data/atv03/coaches \
    data/atv03/tagId2name \
    data/atv03/eventId2name

# downloads the datasets stored in https://figshare.com/collections/Soccer_match_event_dataset/4415000/5
# already unzip content and rename the files to be more readable
wget -P data/atv03/competitions https://figshare.com/ndownloader/files/15073685
mv data/atv03/competitions/15073685 data/atv03/competitions/competitions.json

wget -P data/atv03/events https://figshare.com/ndownloader/files/14464685
unzip data/atv03/events/14464685 -d data/atv03/events/
rm data/atv03/events/14464685

wget -P data/atv03/matches https://figshare.com/ndownloader/files/14464622
unzip data/atv03/matches/14464622 -d data/atv03/matches/
rm data/atv03/matches/14464622

wget -P data/atv03/playeranks https://figshare.com/ndownloader/files/16972010
mv data/atv03/playeranks/16972010 data/atv03/playeranks/playeranks.json

wget -P data/atv03/players https://figshare.com/ndownloader/files/15073721
mv data/atv03/players/15073721 data/atv03/players/players.json

wget -P data/atv03/teams https://figshare.com/ndownloader/files/15073697
mv data/atv03/teams/15073697 data/atv03/teams/teams.json

wget -P data/atv03/referees https://figshare.com/ndownloader/files/15074030
mv data/atv03/referees/15074030 data/atv03/referees/referees.json

wget -P data/atv03/coaches https://figshare.com/ndownloader/files/15073868
mv data/atv03/coaches/15073868 data/atv03/coaches/coaches.json

wget -P data/atv03/tagId2name https://figshare.com/ndownloader/files/21385239
mv data/atv03/tagId2name/21385239 data/atv03/tagId2name/tagId2name.csv

wget -P data/atv03/eventId2name https://figshare.com/ndownloader/files/21385245
mv data/atv03/eventId2name/21385245 data/atv03/eventId2name/eventId2name.csv
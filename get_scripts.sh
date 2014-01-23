#!/bin/bash
clear
set +v

function download_script()
{
	echo $1
	echo $2
	wget $1 -O ~/.irssi/scripts/autorun/$2
}

mkdir -p ~/.irssi/scripts/autorun
#colour all nicks and remember the colour for each
download_script http://scripts.irssi.org/scripts/nickcolor.pl nickcolor.pl
#extra window for hilights
download_script http://scripts.irssi.org/scripts/hilightwin.pl hilightwin.pl
#a better windowlist
download_script http://anti.teamidiot.de/static/nei/*/Code/Irssi/adv_windowlist.pl adv_windowlist.pl
#shows where you stopped reading
download_script http://scripts.irssi.org/scripts/trackbar.pl trackbar.pl
#auto whois people who pm you
download_script http://scripts.irssi.org/scripts/auto_whois.pl auto_whois.pl
#nicklist
download_script http://scripts.irssi.org/scripts/nicklist.pl nicklist.pl
#osx notifier
#note: this depends on "terminal-notifier" which can be installed via homebrew
un=`uname`
if [[ "$un" == "Darwin" ]]; then
	download_script https://raw2.github.com/paddykontschak/irssi-notifier/master/notifier.pl
fi

#download_script http://scripts.irssi.org/scripts/fakectcp.pl

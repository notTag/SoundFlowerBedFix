# SwitchAudioSource -s "Soundflower (2ch)"

audSrc=`SwitchAudioSource -c`
echo $audSrc
if [ "$audSrc" != "Soundflower (2ch)" ]
then
	echo "Attempting to switch to Soundflower"
	SwitchAudioSource -s "Soundflower (2ch)"
	SwitchAudioSource -c
	echo "Attempting to switch to Soundflower"
else
	echo "failed"
fi


#pgrep -f "SoundflowerBed"
echo kill
kill $(pgrep -f "SoundflowerBed" | awk '{print $1}')
echo open
open /Applications/SoundflowerBed.app

#printf "open SoundflowerBed\n"
SwitchAudioSource -s "Soundflower (2ch)"

echo kill
kill $(pgrep -f "SoundflowerBed" | awk '{print $1}')
echo open
open /Applications/SoundflowerBed.app

#printf "open SoundflowerBed\n"
#       _              __  __           _ _   _      ___           _      _   _
#  _ __| |__ _ _  _   / / /  \  __ __ _(_) |_| |_   / __| ___ _ _ (_)__  (_)_(_)
# | '_ \ / _` | || | / _ \ () | \ V  V / |  _| ' \  \__ \/ _ \ ' \| / _|  |_ _|
# | .__/_\__,_|\_, | \___/\__/   \_/\_/|_|\__|_||_| |___/\___/_||_|_\__|  |___|
# |_|          |___|
#Creative Algorithms and Music with Sonic π
#               |___/
#      .-./`)     ____    ,---.    ,---.             ,---.
#      \ '_ .') .'  __ `. |    \  /    |            /,--.|
#     (_ (_) _)/   '  \  \|  ,  \/  ,  |           //_  ||
#       / .  \ |___|  /  ||  |\_   /|  |          /_( )_||
#  ___  |-'`|     _.-`   ||  _( )_/ |  |         /(_ o _)|
# |   | |   '  .'   _    || (_ o _) |  |        / /(_,_)||_
# |   `-'  /   |  _( )_  ||  (_,_)  |  |       /  `-----' ||
#  \      /    \ (_ o _) /|  |      |  |       `-------|||-'
#   `-..-'      '.(_,_).' '--'      '--'               '-'
#

#Use default bpm
#Grade 4 Jam in E_basic

live_loop :kickDrumSnare do
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.5
end

with_fx :ping_pong, mix: 0.5 do
  live_loop :cymbals do
    sample :drum_cymbal_closed
    sleep 0.25
    
  end
end

use_synth :fm
live_loop :bass do
  play :e2
  sleep 1
  play :g2
  sleep 1
end













#       _              __  __           _ _   _      ___           _      _   _
#  _ __| |__ _ _  _   / / /  \  __ __ _(_) |_| |_   / __| ___ _ _ (_)__  (_)_(_)
# | '_ \ / _` | || | / _ \ () | \ V  V / |  _| ' \  \__ \/ _ \ ' \| / _|  |_ _|
# | .__/_\__,_|\_, | \___/\__/   \_/\_/|_|\__|_||_| |___/\___/_||_|_\__|  |___|
# |_|          |___|
# A pattern index approach used by Sonic Pi algoravers including by DJ_Dave
#  ___                             _          _ 
# / __|_  _ _ _  __ ___ _ __  __ _| |_ ___ __| |
# \__ \ || | ' \/ _/ _ \ '_ \/ _` |  _/ -_) _` |
# |___/\_, |_||_\__\___/ .__/\__,_|\__\___\__,_|
#      |__/            |_| 
#inlude a path to external samples

use_bpm 160

kicked = "/Users/ariffat/Documents/Dirt-Samples 2/east/006_taiko_1.wav"
clap ="/Users/ariffat/Documents/Dirt-Samples 2/dr2/001_DR110CLP.WAV"
kicked2 ="/Users/ariffat/Documents/Dirt-Samples 2/gretsch/013_kick.wav"

nt = :c2

live_loop :met1 do
  sleep 1
end

with_fx :ping_pong, phase: 0.5 do
  live_loop :VoxyLady, sync: :met1, delay: 16 do
    sample :bass_voxy_hit_c, amp: 3, rate: 2, cutoff: 90 + 15
    sleep 2
  end
end

live_loop :synBass, sync: :met1, delay: 4 do
  use_synth :fm
  play :c3, amp: 3.5, release: 0.5,
    pan: rrand(-0.6,0.6) if spread(6, 16).tick if pattern "x-xx-"
  sleep 0.5
end

define :pattern do |i|
  return i.ring.tick == "x"
end

with_fx :tanh, krunch: 0.5, mix: 0.05 do
  live_loop :kick1, sync: :met1, delay: 16 do
    a = 2
    sample kicked, amp: a if pattern "x-----x---x--x--"
    sleep 0.5
  end
end

live_loop :kick2, sync: :met1, delay: 8 do
  a = 2
  sample kicked2, amp: a  if pattern "x-xx-"
  sleep 1
end

live_loop :h_Clap, sync: :met1 do
  #stop
  a = 2
  sample clap if pattern "x-xx--"
  sleep 0.5
end

live_loop :sample1, sync: :met1, delay: 32 do
  sample :loop_amen, onset: pick, sustain: 0, release: 0.1
  sleep 0.5
end


live_loop :synth1, sync: :met1, delay: 24 do #use synths for note:
  synth  :tb303, note: (octs nt,  2).tick + 0, release: 0.25 , cutoff: rrand(60, 100),  amp: 2
  sleep 0.5
end

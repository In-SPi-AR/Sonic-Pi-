#       _              __  __           _ _   _      ___           _      _   _
#  _ __| |__ _ _  _   / / /  \  __ __ _(_) |_| |_   / __| ___ _ _ (_)__  (_)_(_)
# | '_ \ / _` | || | / _ \ () | \ V  V / |  _| ' \  \__ \/ _ \ ' \| / _|  |_ _|
# | .__/_\__,_|\_, | \___/\__/   \_/\_/|_|\__|_||_| |___/\___/_||_|_\__|  |___|
# |_|          |___|
#Creative Algorithms and Music with Sonic π

#PseudoRandomised Deterministc Soundscape
#kinaesthetic Awareness
#This audio for tuning to the mind's eye
#Student relaxed and eyes closed. Listen
#to the soundscape then illustrate
#what is visualised
#Share illustrations and discuss

#We'll play with some parameters effecting audio filters whilst live coding


#drum05 = "/Users/ariffat/Documents/Ruby_SonicPi/Music EdNet DayTime 25/Saturn 6/Bar Band Basic Drumset 05.wav"
use_bpm 120

live_loop :met do
  sleep 0.5
end

#with_fx :echo, phase: 0.05 do
live_loop :stretcher, sync: :met do
  use_bpm 60
  stop
  sample :loop_weirdo, beat_stretch: 18, cutoff: 120, amp: 2
  sleep 18
end
#end

with_fx :reverb, room: 1, mix: 0.5 do # reverb softens the timbre
  live_loop :random_riff, sync: :met do
    use_bpm 60
    stop
    use_random_seed 500 #500 is a nice seed for arpeggiated scale
    use_synth :fm
    s = [0.125, 0.25, 0.5].choose
    12.times do
      r = [0.5, 0.25, 1, 2].choose
      n = (scale :e3, :minor, num_octaves: 2).choose
      co = rrand(40, 80)
      play n, release: r, cutoff: co, amp: 1.5
      sleep s
    end
  end
end

with_fx :echo, phase: 0.15 do
  live_loop :rise, sync: :met do
    stop
    sleep 4
    if one_in(2)
      sample :guit_e_slide, beat_stretch: 4, attack: 0.25, release: 0.25
      sleep 4
    else
      sample :guit_e_slide, beat_stretch: 8, attack: 0.25, release: 0.25 if one_in(2)
      sleep 8
    end
  end
end

live_loop :drums, sync: :met do
  use_random_seed 3 #change the seed for effect on range randomization
  stop
  sample :drum_bass_soft, amp: 1
  sleep 1
  sample :drum_cymbal_closed, rate: rrand(1,3)
  sleep 0.5
  2.times do
    sample :drum_cymbal_closed, rate: rrand(1,2), amp: 2
    sleep 0.25
  end
end

live_loop :euclid_beat, sync: :met do
  stop
  sample :drum_heavy_kick, amp: 2, pan: -0.75 if (spread 3, 8).tick
  sample :drum_cymbal_hard, amp: 1, pan: 0.75, rpitch:  4 if (spread 2, 9).look
  sample :perc_snap, rate: 2, amp: 2 if (spread 2, 9).tick
  sleep 0.5
end






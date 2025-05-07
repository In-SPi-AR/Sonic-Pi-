#       _              __  __           _ _   _      ___           _      _   _
#  _ __| |__ _ _  _   / / /  \  __ __ _(_) |_| |_   / __| ___ _ _ (_)__  (_)_(_)
# | '_ \ / _` | || | / _ \ () | \ V  V / |  _| ' \  \__ \/ _ \ ' \| / _|  |_ _|
# | .__/_\__,_|\_, | \___/\__/   \_/\_/|_|\__|_||_| |___/\___/_||_|_\__|  |___|
# |_|          |___|


#  _        _     _____ _                ___ _
# | |   ___| |_  |_   _| |_  ___ _ __   / __(_)_ _  __ _
# | |__/ -_)  _|   | | | ' \/ -_) '  \  \__ \ | ' \/ _` |
# |____\___|\__|   |_| |_||_\___|_|_|_| |___/_|_||_\__, |
#                                                  |___/

`
 Composition by beryann: jean-pierre quinquenel, Musicologist
 Source from in_thread and transcribed with slight variations
`

myLF0 = (range 40, 110, 5).mirror

live_loop :sp3 do
  use_synth :bass_foundation
  use_random_seed 33
  16.times do
    play scale(40, :minor_pentatonic).tick, release: 0.3, cutoff: myLF0.look,
      pan: rrand(-0.6,0.6) if spread(6, 16).tick
    sleep 0.25
  end
end

use_synth :kalimba
live_loop :gamme do
  play scale(:e3, :melodic_major).choose, amp: 3 if spread(4, 12).tick
  sleep 0.25
end

live_loop :note, delay: 8 do
  with_fx :reverb, room: 0.9 do
    density 4 do
      use_synth :fm #was pluck in the original... NB: coef produces a nice syncopated rhythm
      play [:e4, :gs4, :b4, :e5], amp: 1, coef: 0.1 if spread(7, 23).tick
      sleep 1
    end
  end
end

live_loop :rhyt, delay: 16 do
  sample :bd_haus
  sleep 0.5
  sample :sn_zome
  sleep 0.5
end

live_loop :voix, delay: 2 do
  stop
  spl = "/Users/ariffat/Documents/ChoirEm.wav"
  sample spl, rpitch: -2, amp: 3.5, cutoff: 110
  sleep sample_duration spl
end

use_random_seed 30000
with_fx :echo, phase: 0.5, mix: 0.5 do
  live_loop :bell, delay: 32 do
    sample :perc_bell, rpitch: (ring, 0, 12, 7, 4).choose, amp: 3
    sleep 4
  end
end

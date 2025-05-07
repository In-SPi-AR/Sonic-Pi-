#       _              __  __           _ _   _      ___           _      _   _
#  _ __| |__ _ _  _   / / /  \  __ __ _(_) |_| |_   / __| ___ _ _ (_)__  (_)_(_)
# | '_ \ / _` | || | / _ \ () | \ V  V / |  _| ' \  \__ \/ _ \ ' \| / _|  |_ _|
# | .__/_\__,_|\_, | \___/\__/   \_/\_/|_|\__|_||_| |___/\___/_||_|_\__|  |___|
# |_|          |___|
#Creative Algorithms and Music with Sonic π

#Grade 4 Jam in E V2 Extended
use_bpm 72

live_loop :metro do
  sleep 0.25
end

define :pattern do |i|
  return i.ring.tick == "x"
end

#with_fx :ixi_techno, phase: 0.35, mix: 0.75 do
live_loop :beater, sync: :metro do
  #stop
  sample :arovane_beat_e, onset: 2, release: 0.5, rate: 1, amp: 4 if pattern "-x-xx-x-"
  sleep 0.25
end
#end

live_loop :kickDrumSnare, sync: :metro do
  #stop
  sample :drum_bass_hard, pan: 0.3
  sleep 1
  sample :drum_bass_hard, pan: -0.3, rate: 1.2
  sleep 1
end

with_fx :reverb, mix: 0.45 do
  live_loop :cymbals, sync: :metro do
    #stop
    sleep 0.5
    sample :drum_cymbal_closed, amp: 3, release: 0.25
    sleep 0.5
    sample :drum_cymbal_pedal, amp: 2, release: 0.25
  end
end


use_synth :fm
with_fx :compressor do
  
  live_loop :bass, sync: :metro do
    #stop
    #sample :ambi_lunar_land, attack: 1, sustain: 2, amp: 2, release: 2
    play :e2, release: 0.5, amp: 3
    sleep 1
    play :g2, release: 1
    sleep 1
    play :e3, release: 0.25, amp: 2
    sleep 0.5
    play :e3, release: 0.15, amp: 5
    sleep 0.25
    play :e2, release: 0.15, amp: 5
    sleep 0.25
    play :g3, release: 2
    sleep 1
  end
end


riff = (ring :e3, :r, :e2, :r, :g3, :r, :g2, :g2)
with_fx :reverb, room: 1 do
  live_loop :riffed, sync: :metro do
    #stop
    use_synth :tech_saws
    play riff.choose, release: 0.15, amp: 4
    sleep 0.25
  end
end









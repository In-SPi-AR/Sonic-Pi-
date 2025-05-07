#       _              __  __           _ _   _      ___           _      _   _
#  _ __| |__ _ _  _   / / /  \  __ __ _(_) |_| |_   / __| ___ _ _ (_)__  (_)_(_)
# | '_ \ / _` | || | / _ \ () | \ V  V / |  _| ' \  \__ \/ _ \ ' \| / _|  |_ _|
# | .__/_\__,_|\_, | \___/\__/   \_/\_/|_|\__|_||_| |___/\___/_||_|_\__|  |___|
# |_|          |___|

#  ______          _  _  _ _
# (______)        (_)(_)(_) |
#  _     _ ____    _  _  _| |__   ___
# | |   | / ___)  | || || |  _ \ / _ \
# | |__/ / |      | || || | | | | |_| |
# |_____/|_|       \_____/|_| |_|\___/
#

use_bpm 100

live_loop :bass_line do
  use_synth :bass_foundation
  
  play (ring :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :g2, :r, :g2, :r, :g2, :r,
        
        :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :g2, :r, :g2, :r, :d2, :r,
        ).tick
  sleep 0.25
end

live_loop :amen_break do
  8.times do
    sample :loop_amen, beat_stretch: 3
    sleep 3
  end
  
  2.times do
    sample :loop_amen, beat_stretch: 6
    sleep 6
  end
end

s=0.125
sq=1*s # semiquaver, to md dotted minim
q=2*s
c=4*s
cd=6*s
m=8*s
md=12*s

live_loop :tune do
  with_fx :ping_pong do
    with_fx :reverb, room: 0.8 do
      with_synth :bass_foundation do
        tr=[:r,:b4,:c6,:b5,:d5,:a4,:b4,
            :b5,:g5,:b4,:b4,:d5,:c5,:b4,
            :b4,:a3,:b3,:c4,:d4,:b3,:c5,:b4] #the notes
        td=[6*7.5*c,cd,cd,c*9,cd,cd,c*12,
            cd,cd,cd+c,q,cd+c,q,md,cd,
            cd,cd+q,q,q,cd+c,q,c*15] #note durations
        play_pattern_timed(tr,td)
      end
    end
  end
end

live_loop :swooshy do
  with_fx :level, amp: 2 do
    sample :ambi_lunar_land, rate: 1
    sleep 12
    sample :ambi_lunar_land, rate: -1
    sleep 12
  end
end


###################################

# 🎧 Spacey FX for atmosphere (TARDIS and Dalek)
live_loop :swooshy do
  with_fx :level, amp: 2 do
    sample :ambi_lunar_land, rate: 1
    sleep 12
    sample :ambi_lunar_land, rate: -1
    sleep 12
  end
end

live_loop :dalek_pulse do
  sample :elec_filt_snare, rate: 0.25, amp: 0.4
  sleep 4
end
#########################

# 🌌 Ambient Space Pads — floating harmony
live_loop :space_pads do
  use_synth :fm
  with_fx :echo, phase: 0.75, decay: 6 do
    play_chord [:e3, :g3, :b3], release: 6, amp: 0.4
    sleep 8
    play_chord [:a3, :c4, :e4], release: 6, amp: 0.4
    sleep 8
  end
end

# 🚪 TARDIS Dematerialization FX 🛸🌀
live_loop :tardis_fx do
  with_fx :slicer, phase: 0.25, mix: 0.3 do
    with_fx :echo, phase: 0.375, decay: 8 do
      with_fx :reverb, mix: 0.8, room: 0.9 do
        sample :ambi_drone, rate: 0.4, amp: 0.6
        sleep 12
        sample :ambi_drone, rate: -0.4, amp: 0.6  # Reverse time flow
        sleep 12
      end
    end
  end
end

# 🤖 Dalek Voice Loop — "EXTERMINATE!"
live_loop :dalek_voice do
  with_fx :distortion, distort: 0.6 do
    with_fx :echo, phase: 0.5, decay: 4 do
      with_fx :pitch_shift, pitch: -3 do
        sample :misc_crow, rate: 0.5, amp: 0.5  # Substitute for Dalek "voice"
      end
    end
  end
  sleep 16  # Space out the menace
end


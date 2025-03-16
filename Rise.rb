# ____  _                __    ___
#|  _ \| | __ _ _   _   / /_  / _ \
#| |_) | |/ _` | | | | | '_ \| | | |
#|  __/| | (_| | |_| | | (_) | |_| |
#|_|   |_|\__,_|\__, |  \___/ \___/
#               |___/
#Creative Algorithms and Music with Sonic π

#|Rise|
#|Algorave by Altan|
#|Sam Aaron attributed|
#  ____  _
# |  _ \(_)___  ___
# | |_) | / __|/ _ \
# |  _ <| \__ \  __/
# |_| \_\_|___/\___|

use_bpm 60

use_synth :fm

play 28, release: 6, amp: 3, decay: 4

sleep 8

use_synth :mod_fm
2.times do
  with_fx :ping_pong, phase: 0.80 do
    play 56, cutoff: 90, release: 12, amp: 1.0
  end
  sleep 8
end

sample :misc_crow, beat_stretch: 8, amp: 2, cutoff: 90

2.times do
  sample :ambi_piano
  sleep sample_duration :ambi_piano
end

2.times do
  
  sample :arovane_beat_d, beat_stretch: 8, amp: 4
  
  with_fx :reverb, room: 1 do
    
    16.times do
      
      use_synth :dsaw
      
      play 28, cutoff: 130, release: 0.1, amp: 2
      
      sleep 0.125
      
      play 28 + 12, cutoff: 80, release: 0.1, amp: 2
      
      sleep 0.125
      
      play 28 + 24, cutoff: 120, release: 0.1, amp: 3
      
      sleep 0.125
      
      play 28 + 36, cutoff: 80, release: 0.1, amp: 2
      
      sleep 0.125
      
    end
    
  end
end
########################################################
2.times do
  
  with_fx :slicer, phase: 0.125 do
    
    play 28 + 12 - 4, cutoff: 110, release: 16, amp: 3
    
  end
  
  8.times do
    
    sample :loop_industrial, beat_stretch: 1, amp: 3
    
    with_fx :reverb, room: 1 do
      
      2.times do
        
        sample :bd_haus, amp: 5
        
        use_synth :fm
        
        play 28, cutoff: 110, release: 0.1, amp: 2
        
        sleep 0.125
        
        play 28 + 12, cutoff: 80, release: 0.1, amp: 2
        
        sleep 0.125
        
        play 28 + 24, cutoff: 90, release: 0.1, amp: 2
        
        sleep 0.125
        
        play 28 + 36, cutoff: 80, release: 0.1, amp: 2
        
        sleep 0.125
        
      end
      
    end
    
  end
  
end
##| ##########################################################

use_synth :tb303

play 28, cutoff: 90, release: 6, amp: 3, attack: 8, decay: 16

#########################################################
use_synth :zawa
with_fx :panslicer,  phase: 0.5 do
  play 28, cutoff: 90, release: 6, amp: 3, attack: 16, sustain: 8, decay: 16
end

16.times do
  with_fx :ixi_techno do
    sample :bd_tek
    sleep 0.25
    sample :bd_klub
    sleep 0.25
    sample :bd_tek
    sleep 0.25
    sample :bd_klub
    sleep 0.25
    sample :bd_boom
    sleep 0.5
    sample :bd_tek
    sleep 0.125
    sample :bd_klub
    sleep 0.125
    sample :bd_tek
    sleep 0.125
    sample :bd_klub, rate: 3
    sleep 0.125
  end
end
############################################################################
use_synth :tb303
with_fx :panslicer,  phase: 0.25 do
  play 28, cutoff: 110, release: 3, amp: 3, attack: 8, sustain: 4, decay: 8
end
###########################################################################


4.times do
  
  with_fx :slicer, phase: 0.125 do
    
    play 28 + 12 - 4, cutoff: 110, release: 16, amp: 3
    
  end
  
  sample :loop_industrial, beat_stretch: 2, amp: 3
  
  8.times do
    with_fx :reverb, room: 1 do
      
      2.times do
        
        sample :bd_haus, amp: 5
        
        use_synth :fm
        
        play 28, cutoff: 110, release: 0.1, amp: 2
        
        sleep 0.125
        
        play 28 + 12, cutoff: 80, release: 0.1, amp: 2
        
        sleep 0.125
        
        play 28 + 24, cutoff: 90, release: 0.1, amp: 2
        
        sleep 0.125
        
        play 28 + 36, cutoff: 80, release: 0.1, amp: 2
        
        sleep 0.125
        
      end
      
    end
    
  end
  #sleep 2
end


sample :loop_industrial, beat_stretch: 4, amp: 3

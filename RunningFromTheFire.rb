# ____  _                __    ___
#|  _ \| | __ _ _   _   / /_  / _ \
#| |_) | |/ _` | | | | | '_ \| | | |
#|  __/| | (_| | |_| | | (_) | |_| |
#|_|   |_|\__,_|\__, |  \___/ \___/
#               |___/

#Creative Algorithms and Music with Sonic π
#    🔥Running From The Fire 2 💣
#        .ar"""" """$$$$be.
#      -"           ^""**$$$e.
#    ."                   '$$$c
#   /                      "4$$b
#  d  3                      $$$$
#  $  *                   .$$$$$$
# .$  ^c           $$$$$e$$$$$$$$.
# d$L  4.         4$$$$$$$$$$$$$$b
# $$$$b ^ceeeee.  4$$ECL.F*$$$$$$$
# $$$$P d$$$$F $ $$$$$$$$$- $$$$$$
# 3$$$F "$$$$b   $"$$$$$$$  $$$$*"
#  $$P"  "$$b   .$ $$$$$...e$$
#   *c    ..    $$ 3$$$$$$$$$$eF
#     %ce""    $$$  $$$$$$$$$$*
#      *$e.    *** d$$$$$"L$$
#       $$$      4J$$$$$% $$$
#      $"'$=e....$*$$**$cz$$"
#      $  *=%4.$ L L$ P3$$$F
#      $   "%*ebJLzb$e$$$$$b
#       %..      4$$$$$$$$$$
#        $$$e   z$$$$$$$$$$
#         "*$c  "$$$$$$$P"
#           """*$$$$$$$"
#

dr1  = 
#add the path to your external sample directory... easiest way is to drag-n-drop the sample here 
#after  "dr1 =" and sonic pi will write the path for you eg "you path to the sample"

use_bpm 180

in_thread do
  196.times do
    if one_in(2)
      sample :bd_zum, amp: 1, pan: rrand(0.30, 1)
      sample :hat_zild, amp: 1, pan: rrand(0.30, 1)
      sleep 1
      
      sample :bd_zum, amp: 1, pan: rrand(-0.30, -1)
      sample :hat_sci, amp: 1
      sleep 1
      
      sample :bd_zum, amp: 1, pan: rrand(0.30, 1)
      sample :hat_zild, amp: 1, pan: rrand(0.30, 1)
      sleep 0.5
      
      sample :bd_zum, amp: 1, pan: rrand(0.30, 1)
      sample :hat_zild, amp: 1, pan: rrand(0.30, 1)
      sleep 0.5
      
      sample :bd_zum, amp: 1, pan: rrand(-0.30, -1)
      sample :hat_sci, amp: 1
      sleep 1
      ################################################
    else
      sample :bd_zum, amp: 1, pan: -1
      sample :hat_bdu, amp: 1, pan: -1
      sleep 0.5
      
      sample :bd_zum, amp: 1, pan: 1
      sample :hat_cats, amp: 1, pan: 1
      sleep 0.5
      
      
      sample :bd_zum, amp: 1, pan: -1
      sample :hat_bdu, amp: 1, pan: -1
      sleep 1
      
      
      sample :bd_zum, amp: 1, pan: 1
      sample :hat_bdu, amp: 1, pan: -1
      sleep 0.25
      
      sleep 0.25
      
      sample :bd_zum, amp: 1, pan: -1
      sample :hat_cats, amp: 1, pan: 1
      sleep 0.5
      
      sample :bd_zum, amp: 1, pan: 1
      sample :hat_zild, amp: 1, pan: -1
      sleep 1
    end
    
  end
end


4.times do
  sample :ambi_dark_woosh, amp: 1
  
  in_thread do
    28.times do
      sample dr1, "new5", amp: 5
      sleep 8
    end
    sample :ambi_dark_woosh
  end
  
  in_thread do
    18.times do
      with_fx :ping_pong, phase: 0.35 do
        sample :elec_lo_snare, rate: 5, beat_stretch: 4, amp: 1, pan: 1
        sleep 0.5
        sample :elec_mid_snare, rate: 2, beat_stretch: 4, amp: 1, pan: -1
        sleep 0.25
        sample :elec_mid_snare, rate: 2, beat_stretch: 4, amp: 1, pan: -1
        sleep 0.25
        sleep 11
      end
    end
  end
  
  sleep 12
  
  ##| in_thread do
  ##|   loop do
  ##|     sample :ambi_lunar_land, amp: 3, decay: 4
  ##|     sleep rrand(24, 48)
  ##|   end
  ##| end
  
  in_thread do
    with_fx :reverb, room: 3 , mix: 0.75 do
      use_synth  :tb303  #can change to :fm synth
      4.times do
        play :E2, release: 4, amp: 1, decay: 2
        sleep 12
      end
      2.times do
        play :g2, release: 4, amp: 1, decay: 2
        sleep 12
      end
      2.times do
        play :E2, release: 4, amp: 1, decay: 2
        sleep 12
      end
      2.times do
        play :g2, release: 4, amp: 1, decay: 2
        sleep 12
      end
      2.times do
        play :c2, release: 4, amp: 1, decay: 2
        sleep 12
      end
      2.times do
        play :g2, release: 4, amp: 1, decay: 2
        sleep 12
      end
      
      play :e2, release: 6
      sleep 6
    end
  end
  
  with_fx :flanger, depth: 1, phase: 0.2 do
    use_synth :blade #or use_synth :blade
  end
  
  in_thread do
    with_fx :ping_pong, phase: 0.12, detune: 4, amp: 1, slide: 4 do
      96.times do
        play (chord :e3, :minor).reverse.tick, release: 1.5
        sleep 0.5
      end
    end
  end
  
  sleep 48
  
  in_thread do
    with_fx :ping_pong, phase: 0.12, detune: 4, amp: 1, slide: 4 do
      48.times do
        play (chord :g3, :maj).tick, release: 1.5
        sleep 0.5
      end
    end
  end
  
  sleep 24
  
  in_thread do
    with_fx :ping_pong, phase: 0.12, detune: 4, amp: 1, slide: 4 do
      48.times do
        play (chord :e3, :min).reverse.tick, release: 1.5
        sleep 0.5
      end
    end
  end
  
  sleep 24
  with_fx :ping_pong, phase: 0.12, detune: 4, amp: 1, slide: 4 do
    in_thread do
      48.times do
        play (chord :g2, :major).reverse.tick, release: 1.5
        play (chord :g3, :major).tick, release: 1
        sleep 0.5
      end
    end
    
    sleep 24
    
    in_thread do
      48.times do
        play (chord :c3, :major).reflect.tick, release: 1
        sleep 0.5
      end
    end
    
    sleep 24
    
    in_thread do
      48.times do
        play (chord :g2, :major).tick, release: 1
        sleep 0.5
      end
    end
    sleep 24
    
    in_thread do
      play (chord :e3, :minor), release: 4, amp: 1, decay: 4, slide: 3
      sleep 4
    end
  end
  
  sample :ambi_lunar_land, amp: 3, decay: 4
  
  play :e2, release: 0.25, amp: 1
  sleep 0.25
  play :e2, release: 0.25, amp: 1
  sleep 0.25
  
end



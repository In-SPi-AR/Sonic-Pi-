#  _____ _          ___
# |_   _| |_  ___  / __| ___ __ _ ___ ___ _ _  ___
#   | | | ' \/ -_) \__ \/ -_) _` (_-</ _ \ ' \(_-<
#   |_| |_||_\___| |___/\___\__,_/__/\___/_||_/__/
#  _                     _                                   _
# |_   .__ ._  _  _.._  |__ ||  _|_   ._  _   /\ ._._ \    /|_)
# |_|_||(_)|_)(/_(_|| | |(_)||<  |_|_|| |(/_ /--\| |o  \/\/o| \o
#          |
#Teaching points for consideration? What outcomes can be identified...
#especially linked to across-curriculum, coding -music- maths - etc
#Do you 'see' scope for music and coding to exist in the same space... How/Why?
#Could this approach be engaging for students in your classes.. PMI (positive-minus-interesting) points

use_bpm 140

#Quick drum intro... no loop
sample :drum_roll
sleep 6
sample :drum_bass_soft
sleep 0.5
sample :drum_bass_soft
sleep 0.5

#######RightHand.... using function 'play_pattern_time [], []
with_fx :reverb, room: 0.8 do
  use_synth :piano
  
  live_loop :RightHand_Melody, delay: 6 do
    2.times do
      play_pattern_timed [:b4, :b4, :a4], [1], release: 0.5, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 110
      play_pattern_timed [:g4],[3], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 90
    end
    
    
    play_pattern_timed [:b4, :b4,:c5, :d5], [0.5, 0.5, 1, 1], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 110
    play_pattern_timed [:d5, :c5, :b4, :c5], [1, 0.5, 0.5, 1], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 90
    play_pattern_timed [:a4, :a4, :b4, :c5], [0.5, 0.5, 1, 1], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 110
    play_pattern_timed [:c5, :b4, :a4, :b4], [1, 0.5, 0.5, 1], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 90
    play_pattern_timed [:b4, :b4, :c5], [1], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 110
    play_pattern_timed [:d5], [3], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 90
    play_pattern_timed [:b4, :b4, :a4], [1], release: 0.5, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 110
    play_pattern_timed [:g4],[3], release: 1, attack: 0.05, sustaine: 1, decay: 0.05, cutoff: 110
  end
end
########Lefty... in top-down precedence and right-left associativity
########
with_fx :band_eq, amp: 2, res: 0.9 do
  live_loop :LeftHand_bass, delay: 6 do
    
    play :g3, release: 2 #1
    play :b3, release: 2
    sleep 2
    play :fs3, release: 1
    sleep 1
    
    play :g3, release: 2 #2
    play :b3, release: 2
    sleep 2
    play :d3, release: 1
    sleep 1
    
    play :g3, release: 2 #3
    play :b3, release: 2
    sleep 2
    play :fs3, release: 1
    sleep 1
    
    play :g3, release: 2 #4
    play :b3, release: 2
    sleep 2
    play :d3, release: 1
    sleep 1
    
    play :g3, release: 2 #5
    play :b3, release: 2
    sleep 2
    play :fs3, release: 1
    sleep 1
    
    play :g3, release: 2 #6
    play :b3, release: 2
    sleep 2
    play :d3, release: 1
    sleep 1
    
    play :fs3, release: 2 #7
    play :c3, release: 2
    sleep 2
    play :a3, release: 1
    sleep 1
    
    play :d3, release: 2 #8
    play :a3, release: 2
    sleep 2
    play :g3, release: 1
    sleep 1
    
    
    play :g3, release: 2 #9
    play :b3, release: 2
    sleep 2
    play :a3, release: 1
    sleep 1
    
    
    play :g3, release: 2 #10
    play :b3, release: 2
    sleep 2
    play :fs3, release: 1
    sleep 1
    
    play :g3, release: 1 #11
    play :e3, release: 1
    sleep 1
    play :g3, release: 1
    play :d3, release: 1
    sleep 1
    play :c4, release: 1
    play :d3, release: 1
    sleep 1
    
    play chord(:g3, :major), release: 3 #12
    sleep 3
  end
end

#Chuck in some percussion accompanyment
live_loop :percussion, delay: 12 do
  sample :drum_bass_soft, amp: 1
  sleep 1.0
  sample :drum_bass_soft
  sample :drum_snare_soft, amp: 3, relax_time: 0.5
  sleep 0.5
  sample :drum_bass_soft, amp: 1
  sleep 0.5
  sample :drum_bass_soft
  sleep 1.0
end

live_loop :percussion2 do
  sample :drum_cymbal_soft, amp: 1
  sleep 1.0
end

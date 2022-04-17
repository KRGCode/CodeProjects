#Use in SonicPi
#Inspired by #ambient experiment by Darin Wilson (SonicPI example)

use_synth :hollow
with_fx :flanger, mix: 0.7 do
  with_fx :echo do
    
    live_loop :noteseq do
      sample :elec_ping
      play choose([:D4,:E4, :Ds4]), attack: 2, release: 6
      sleep rrand(3,5)
    end
    
    live_loop :noteseq do
      sample :ambi_lunar_land
      play choose([:Fs4,:G4, :E3]), attack: 2, release: 5
      sleep rrand(3,4)
    end
    
    live_loop :noteseq do
      sample :ambi_soft_buzz
      play choose([:A4, :Cs5, :A1]), attack: 2, release: 5
      sleep rrand(5,6)
    end
  end
end


#Continious Spook Mix ****************************************8

use_synth :rodeo
with_fx :flanger, mix: 0.7 do
  with_fx :echo do
    
    live_loop :noteseq do
      sample :elec_ping
      play choose([:D4,:F4, :Ds4]), attack: 2, release: 6
      sleep rrand(3,5)
    end
    
    live_loop :noteseq do
      sample :drum_cymbal_open
      play choose([:Fs4,:G4, :E3]), attack: 2, release: 5
      sleep rrand(3,4)
    end
    
    live_loop :noteseq do
      sample :ambi_glass_hum
      play choose([:A4, :C5, :A2]), attack: 2, release: 5
      sleep rrand(3,6)
    end
  end
end

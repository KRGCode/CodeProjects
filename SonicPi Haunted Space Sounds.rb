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


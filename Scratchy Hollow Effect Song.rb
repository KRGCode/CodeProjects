in_thread do
  with_synth :sound_in do
    live_loop :noteseq do
      sample :ambi_glass_rub, release: 5
      sample :elec_chime
      sample :elec_hollow_kick
      sample :elec_wood
      play choose([:D4,:F4, :E3, :F4, :C4, :C3]), attack: 2, release: 8
      sleep rrand(1,8)
    end
  end
end

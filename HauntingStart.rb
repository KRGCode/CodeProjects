in_thread do
  live_loop :noteseq do
    sample :bass_thick_c
    sample :ambi_glass_rub, release: 1
    sample :elec_chime
    play choose([:D4,:F4, :Ds4, :E3, :F4]), attack: 2, release: 6
    sleep rrand(3,5)
  end
end

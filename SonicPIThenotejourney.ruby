use_synth :piano
with_fx :echo do
  
  notes = (ring :Cs3, :Fs3, :Ds3, :Cs6, :Fs6, :Ds6)
  live_loop :slow do
    play notes.tick, release: 0.1
    sleep 0.3
  end
  
  
  live_loop :faster do
    play notes.tick, release: 0.1
    sleep 0.295
  end
end


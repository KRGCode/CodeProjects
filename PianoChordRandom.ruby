2.times do
  use_synth :pluck
  with_fx :echo do
    play :A2, :C2, :D2
    sleep 0.5
    play :D2, :F2, :E3
    sleep 1
    play :A3
    sleep 0.5
    play :A2
    sleep 0.5
    play :A4
    sleep 0.5
  end
end
loop do
  play rrand(50,75)
  use_synth :piano
  with_fx :krush do
    with_fx :tremolo do
      play :A2, :C2, :D2
      sleep 0.5
      play :D2, :F2, :E3
      sleep 1
      play :A3
      sleep 0.5
      play :A2
      sleep 0.5
      play :A4
      sleep 0.5
    end
  end
end

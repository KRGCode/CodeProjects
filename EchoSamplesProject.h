#SonicPi
use_random_seed 500
4. times do
  with_fx :echo , amp: 1 do
    sample :ambi_choir
    sleep 0.5
  end
end
sleep 1
4. times do
  with_fx :compressor, amp: 1 do
    sample :ambi_choir
    sleep 0.5
  end
end
sleep 1
use_random_seed 500
4.times do
  with_fx :wobble, amp: 1 do
    sample :ambi_choir, cutoff_slide: 4
    sleep 0.5
  end
end
sleep 1
4.times do
  with_fx :slicer, amp: 1 do
    sample :ambi_choir, env_curve: 5
    sleep 0.5
  end
end
sleep 1
4.times do
  with_fx :ixi_techno do
    sample :ambi_choir, sustain_level: 10
    sleep 0.5
  end
end
sleep 1
4.times do
  with_fx :tremolo, amp: 1 do
    sample :ambi_choir, slope_below: 4
    sleep 0.5
  end
end

#sample from AudioKit, Oh YeahBass

use_synth :hollow
with_fx :ixi_techno do
  with_fx :bitcrusher do
    1. times do
      sample "Drive:/Users/UserName/3D Objects/Desktop/Music Samples/AudioKit-Oh YeahBass.wav", rate: 1, amp: 3
    end
  end
end
sleep 20

use_synth :bnoise
with_fx :pan do
  with_fx :echo do
    1. times do
      sample "Drive:/Users/UserName/3D Objects/Desktop/Music Samples/AudioKit-Oh YeahBass.wav", rate: 1, amp: 2
    end
  end
end

#chatgpt-code a trance song in sonicpi-

# Set the tempo and time signature
use_bpm 130
use_synth :tb303

# Define the chord progression
chords = [chord(:E3, :minor), chord(:C3, :major), chord(:D3, :major), chord(:A3, :minor)]

# Define the bassline
bassline = [:E2, :C2, :D2, :A2]

# Define the melody
melody = [:E4, :G4, :A4, :B4, :A4, :G4, :E4, :G4, :A4, :B4, :A4, :G4, :F4, :D4]

# Play the chord progression
with_fx :reverb, room: 0.6 do
  2.times do
    chords.each do |chord|
      play chord, release: 1.5
      sleep 1.5
    end
  end
end

# Add a bassline
with_fx :distortion, distort: 0.5 do
  live_loop :bassline do
    use_synth :tb303
    bassline.each do |note|
      play note, release: 0.5
      sleep 0.5
    end
  end
end

# Add a melody
with_fx :echo, phase: 0.25, decay: 0.5 do
  live_loop :melody do
    use_synth :blade
    melody.each do |note|
      play note, release: 0.3, cutoff: 100, amp: 0.5
      sleep 0.25
    end
  end
end
________________________________

#my version after edits

#chatgpt
# Set the tempo and time signature
use_bpm 85
use_synth :mod_sine

# Define the chord progression
chords = [chord(:E3, :minor), chord(:C3, :major), chord(:D3, :major), chord(:A3, :minor)]

# Define the bassline
bassline = [:E2, :C2, :D2, :A2]

# Define the melody
melody = [:E4, :G4, :A4, :B4, :A4, :G4, :E4, :G4, :A4, :B4, :A4, :G4, :F4, :D4]

# Play the chord progression
with_fx :echo, room: 0.6 do
  2.times do
    chords.each do |chord|
      play chord, release: 1.5
      sleep 1.5
    end
  end
end

# Add a bassline
with_fx :bitcrusher do
  live_loop :bassline do
    use_synth :beep
    bassline.each do |note|
      play note, release: 0.5
      sleep 0.5
    end
  end
end

# Add a melody
with_fx :echo, phase: 0.25, decay: 0.5 do
  live_loop :melody do
    use_synth :square
    melody.each do |note|
      play note, release: 0.3, cutoff: 100, amp: 0.5
      sleep 0.25
    end
  end
end

# Für Elise by Ludwig van Beethoven in Sonic Pi with ChatGpt (asked Chatgpt for the main theme and repeat theme that I then edited. 

# Set the tempo
use_bpm 75

# Define the melody for Für Elise using music notation
define :fur_elise do
  use_synth :piano
  with_fx :eq do
    with_fx :reverb do
    end
  end
  
  # Main theme
  play_pattern_timed [:es5, :d5, :es5, :d5, :es5, :b4, :d5, :c5, :a4, :c4, :e4, :a4, :b4, :es4],
    [0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 2]
  
  # Repeat the theme
  play_pattern_timed [:es5, :d5, :es5, :d5, :e5, :b4, :d5, :c5, :a4, :c4, :es4, :a4, :b4, :es4],
    [0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 2]
  
  play_pattern_timed [:es5, :ds5, :es5, :ds5, :es5, :bs4, :ds5, :cs5, :as4, :cs4, :es4, :as4, :bs4, :es4],
    [0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 2]
  
  play_pattern_timed [:e5, :d5, :e5, :d5, :e5, :b4, :d5, :c5, :a4, :c4, :e4, :a4, :b4, :e4],
    [0.10, 0.10, 0.10, 0.10, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 2, 2]
end

# Main loop
live_loop :fur_elise do
  fur_elise
end

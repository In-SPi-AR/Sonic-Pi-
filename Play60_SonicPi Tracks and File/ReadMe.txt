SONIC PI FILES and REQUIRED WAVs for SYNCOPATED.RB

1.Load each rb files into separate buffers
2.Where external samples a required eg 006_taiko.wav for the Syncopated.rb file, place the .wav files in a directory/folder for you choosing
3. Load the .rb file into a Sonic Pi buffer
3c. Remove the green coloured path statement after the = symbol 
3c. Drag a copy of the required .wav file from your directory/folder to the right of the = symbol

The wav file path is now assigned to the sample variable (left of the = symbol) and is ready for play back.

NB: the ‘=‘ is an assign operator for assigning functionality to a variable eg variable x = function y
The variable is declare and sit to the left of the = symbol. The functions i.e. an external audio sample sit to the right of the = symbol in the form of

x = y 

“x” is the variable declaration/name, y is/are conditions/functions assigned to the variable via the = symbol

NNB: When ‘doing’ computation the == (double =) is used to evaluate equality eg  ‘left = to right’


For Syncopated.rb to work “out-of-the-box”, remove the path statements then drop the 3 .wav files to the right of the = operator/symbol. NB: My path system is Mac/Linux syntax. If using Window/MS Os you “slash” symbols will be back-slashes.

From this 
kicked = "/Users/myName/Documents/Dirt-Samples 2/east/006_taiko_1.wav"
clap ="/Users/myName/Documents/Dirt-Samples 2/dr2/001_DR110CLP.WAV"
kicked2 ="/Users/MyName/Documents/Dirt-Samples 2/gretsch/013_kick.wav"

To this

kicked =  “/your/-path-/006_taiko_1.wav”
clap = “/your/-path-/001_DR110CLP.WAV”
kicked2 = “/your/-path-/013_kick.wav”

Happy Coding :)
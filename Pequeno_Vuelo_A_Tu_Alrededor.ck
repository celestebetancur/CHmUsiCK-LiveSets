Chmusick tempo; 

TheCooker  s => dac;
Drum drum => dac;
Harmony h => dac;
FMSynth fm => Echo echo => NRev rev => dac;
Rec r;

[60,62,63,62,70] @=> int notes[];
(32,1) => fm.ratio;

0.5 => rev.mix;
0.6 => echo.mix;

170 => tempo.TEMPO;

spork~drum.drum(drum.favorite(5));
spork~h.sinOsc(["Cm","Cm","Ab","Ab"]);
//spork~h.sinOsc(["Bb"]);
spork~fm.fmBass([48,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0]);

//spork~r.recDAC("Pequeño_Vuelo_A_Tu_Alrededor_LiveCode_Session");

while(true)
{
    for(0 => int i; i< notes.cap(); i++)
    {
        Std.mtof(notes[i]) => s.freq;
        s.sound();
        (30.0/170.0)::second => now;
    }
}


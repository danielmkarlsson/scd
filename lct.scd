(
Pdef(\1,
    Pseed(70, //43 
        Pbind(*[
            type: \midi,
            midiout: ~m,
            chan: Pstutter(Pexprand((1..3),inf),Pxshuf((0..6),inf)),
            degree: Pxshuf([0,2,4,11,7,9,1,3,5,8,1,3,6,10],inf).trace,
            scale: Pstutter(Pwhite(1,4),Pseq([Scale.harmonicMinor,Scale.aeolian,Scale.harmonicMajor,Scale.chromatic],inf),inf),
            mtranspose: Pxshuf([0,2,-1,-2,3,4,1,-3,-4],inf),
            octave: Pstutter(Pwhite(1,4),Pwrand((3..6),[1,2,3,2,1].normalizeSum,inf)),
            amp: Pseg(Pwhite(0.0,1.0),Pwhite(5.0,11.0),\welch,inf),
            dur: Pwhite(0.5,2.0),
            legato: Pexprand(5.0,20.0),
        ]).play(quant: 1);
        CmdPeriod.doOnce {~m.allNotesOff(0);};
    ))
)


(
Pdef(\2,
    Pseed(46, 
        Pbind(
            \type, \midi,
            \midiout, ~m,
            \chan, Pstutter(Pexprand((1..2),inf),Pxshuf((0..6),inf)),
            \degree, Pxshuf([0,2,4,11,7,9,1,3,5,8,1,3,6,10],inf).trace,
            \scale, Pstutter(Pwhite(1,4),Pseq([Scale.harmonicMinor,Scale.aeolian,Scale.harmonicMajor,Scale.chromatic],inf),inf),
            \mtranspose, Pxshuf([0,2,-1,-2,3,4,1,-3,-4],inf),
            \octave, Pstutter(Pwhite(1,4),Pwrand((3..6),[1,2,3,2,1].normalizeSum,inf)),
            \amp, Pseg(Pwhite(0.0,1.0),Pwhite(5.0,11.0),\welch,inf),
            \dur, Pwhite(1.0,4.0),
            \legato, Pexprand(5.0,20.0),
        ).play(quant: 1);
        CmdPeriod.doOnce {~m.allNotesOff(0);};
    ))
)

(
Pdef(\3,
    Pseed(49, 
        Pbind(
            \type, \midi,
            \midiout, ~m,
            \chan, Pstutter(Pexprand((1..2),inf),Pxshuf((0..6),inf)),
            \degree, Pxshuf((0..11),inf).trace,
            \scale, Pstutter(Pwhite(1,4),Pseq([Scale.harmonicMinor,Scale.aeolian,Scale.harmonicMajor,Scale.chromatic],inf),inf),
            \mtranspose, Pxshuf([0,2,-1,-2,3,4,1,-3,-4],inf),
            \octave, Pstutter(Pwhite(1,4),Pwrand((3..6),[1,2,3,2,1].normalizeSum,inf)),
            \amp, Pseg(Pwhite(0.0,1.0),Pwhite(5.0,11.0),\welch,inf),
            \dur, Pwhite(1.0,4.0),
            \legato, Pexprand(5.0,20.0),
        ).play(quant: 1);
        CmdPeriod.doOnce {~m.allNotesOff(0);};
    ))
)

(
Pdef(\4,
    Pseed(50, 
        Pbind(
            \type, \midi,
            \midiout, ~m,
            \chan, Pstutter(Pexprand((1..2),inf),Pxshuf((0..6),inf)),
            \degree, Pxshuf((0..11),inf).trace,
            \scale, Pstutter(Pwhite(2,8),Pxshuf([Scale.harmonicMinor,Scale.aeolian,Scale.harmonicMajor,Scale.chromatic],inf),inf),
            \mtranspose, Pxshuf([0,2,-1,-2,3,4,1,-3,-4],inf),
            \octave, Pstutter(Pwhite(1,4),Pwrand((3..6),[1,2,3,2,1].normalizeSum,inf)),
            \amp, Pseg(Pwhite(0.0,1.0),Pwhite(5.0,11.0),\welch,inf),
            \dur, Pwhite(1.0,4.0),
            \legato, Pexprand(5.0,20.0),
        ).play(quant: 1);
        CmdPeriod.doOnce {~m.allNotesOff(0);};
    ))
)

(
Pdef(\5,
    Pseed(60, 
        Pbind(
            \type, \midi,
            \midiout, ~m,
            \chan, Pstutter(Pexprand((1..2),inf),Pxshuf((0..6),inf)),
            \degree, Pxshuf((0..11),inf).trace,
            \scale, Pstutter(Pwhite(5,10),Pxshuf([Scale.harmonicMinor,Scale.aeolian,Scale.harmonicMajor,Scale.chromatic],inf),inf),
            \mtranspose, Pstutter(Pwhite(5,10),Pxshuf([0,2,-1,-2,3,4,1,-3,-4],inf)),
            \octave, Pstutter(Pwhite(1,4),Pwrand((3..6),[1,2,3,2,1].normalizeSum,inf)),
            \amp, Pseg(Pwhite(0.0,1.0),Pwhite(5.0,11.0),\welch,inf),
            \dur, Pwhite(0.25,4.0),
            \legato, Pexprand(1.0,10.0),
        ).play(quant: 1);
        CmdPeriod.doOnce {~m.allNotesOff(0);};
    ))
)

(
Pdef(\6,
    Pseed(61, 
        Pbind(
            \type, \midi,
            \midiout, ~m,
            \chan, Pstutter(Pexprand((1..2),inf),Pxshuf((0..6),inf)),
            \degree, Pxshuf((0..11),inf).trace,
            \scale, Pstutter(Pwhite(5,10),Pxshuf([Scale.harmonicMinor,Scale.aeolian,Scale.harmonicMajor,Scale.chromatic],inf),inf),
            \mtranspose, Pstutter(Pwhite(5,10),Pxshuf([0,2,-1,-2,3,4,1,-3,-4],inf)),
            \octave, Pstutter(Pwhite(1,4),Pwrand((3..6),[1,2,3,2,1].normalizeSum,inf)),
            \amp, Pseg(Pexprand(0.01,1.0),Pwhite(5.0,11.0),\welch,inf),
            \dur, Pwhite(0.25,4.0),
            \legato, Pexprand(1.0,10.0),
        ).play(quant: 1);
        CmdPeriod.doOnce {~m.allNotesOff(0);};
    ))
)

(
Pdef(\7,
    Pseed(62, 
        Pbind(
            \type, \midi,
            \midiout, ~m,
            \chan, Pstutter(Pexprand((1..2),inf),Pxshuf((0..6),inf)),
            \degree, Pxshuf((0..11),inf),
            \scale, Pstutter(Pwhite(5,10),Pxshuf([Scale.harmonicMinor,Scale.aeolian,Scale.harmonicMajor,Scale.chromatic],inf),inf),
            \mtranspose, Pstutter(Pwhite(5,10),Pxshuf([0,2,-1,-2,3,4,1,-3,-4],inf)),
            \octave, Pstutter(Pwhite(1,4),Pwrand((3..6),[1,2,3,2,1].normalizeSum,inf)),
            \amp, Pseg(Pexprand(0.01,1.0),Pwhite(5.0,11.0),\welch,inf),
            \dur, Pexprand(0.25,4.0),
            \legato, Pexprand(1.0,4.0),
        ).play(quant: 1);
        CmdPeriod.doOnce {~m.allNotesOff(0);};
    ))
)

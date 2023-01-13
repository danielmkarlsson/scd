(
Pdef(0, // SuperClean events
    Pseed(222,
        Pbind(*[
            type: \cln,
            snd: \mmd,
            rel: 0.5,
            num: Pxrand([1, 2, 3, 4, 5], inf), // try switching the top down order of these two lines
            dur: Pwrand([1/8, 1/4, 1/2], [7, 1, 1].normalizeSum, inf).trace, // symmetry falls apart
            pan: Pwhite(0.0, 1.0),
            legato: 1,
            amp: 1,
        ])
    )
).play(quant:1);

Pdef(1, // MIDI note events
    Pseed(222,
        Pbind(*[
            type: \midi,
            midiout: m,
            chan: 0,
			scale: Scale.harmonicMinor,
            degree: Pxrand([1, 2, 3, 4, 5], inf),
            dur: Pwrand2([1/8, 1/4, 1/2], [7, 1, 1], inf),
            pan: Pwhite(0.0, 1.0), //dummy operation needed for symmetry, try commenting out
            legato: 1,
        ])
    )
).play(quant: 1);

CmdPeriod.doOnce { // this is _really_ handy when working with MIDI
    // release any hanging notes when pressing Cmd + .
    m.allNotesOff(0); // it works by running this line everytime you hit Cmd .
}; // Yay, no more stuck notes!
)

(
Pdef(0,
	Pseed(0,
		Pbind(*[
			type: \cln,
			snd: \mmd,
			dur: 1 / Pdup(Pwhite(5, 11), Pwhite(5, 11)),
			num: Pwhite(0, 12),
			pan: Pwhite(0.0, 1.0),
			amp: 1,
			legato: 1,
		])
	)
).play(quant:1);

Pdef(1,
	Pseed(0,
		Pbind(*[
			type: \midi,
			midicmd: \control,
			chan: 0,
			midiout: m,
			ctlNum: 10,
			dur: 1 /Pdup(Pwhite(5, 11), Pwhite(5, 11)),
			control: Pwhite(0, 127),
			pan: Pwhite(0.0, 1.0), // Needed for symmetry with Pdef(0)
		])
	)
).play(quant: 1);
)
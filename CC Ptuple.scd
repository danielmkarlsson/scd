( // use this for mapping
Pdef(0,
	Pbind(*[
		type: \midi,
		dur: 1/4,
		midiout: m,
		midicmd: \control,
		chan: 0,
		ctlNum: 11, // increment when mapping
		control: Pwhite(0, 127),
	])
).play;
)

( // Ptuple to the rescue
Pdef(0,
	Pbind(*[
		type: \midi,
		dur: 1 / Pwhite(0.125, 4.0),
		dur: 1/8 * Pexprand(1, 13).asInteger,
		midiout: m,
		midicmd: \control,
		chan: 0,
		ctlNum: (0 .. 10),
		control: Ptuple([
			Pwhite(0, 127), // 0 octave
			Plprand(2, 127), // 1 grain size
			Plprand(0, 127), // 2 time
			Prand([0, 127], inf), // 3 filter freq
			Pwhite(0, 0), // 4 g reversal
			Pwhite(127, 127), // 5 resonance
			Phprand(63, 127), // 6 feedback
			Phprand(63, 127), // 7 density
			Plprand(0, 0), // 8 time variation
			Plprand(0, 0), // 9 octave variation
			Plprand(0, 0), // 10 g start variation
		], inf).trace,
	])
).play;
)

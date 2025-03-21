( // use this for mapping
Pdef(0,
	Pbind(*[
		type: \midi,
		dur: 1/8,
		midiout: m,
		midicmd: \control,
		chan: 0,
		ctlNum: 10, // increment when mapping
		control: Pwhite(0, 127),
	])
).play;
)

( // CC ALL
~cc = Pwhite(0, 127).asStream;
Pdef(0,
	Pbind(*[
		type: \midi,
		dur: 1 / Pwhite(0.125, 4.0),
		midiout: m,
		midicmd: \control,
		chan: 0,
		ctlNum: (0 .. 10),
		control: Pfunc{~cc.next},
	])
).play;
)
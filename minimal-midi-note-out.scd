(
Pdef(0,
	Pbind(*[
		type: \midi,
		midiout: m,
		chan: 0,
	])
).play;
CmdPeriod.doOnce {
	m.allNotesOff(0);
};
)
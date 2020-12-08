(
SynthDef("sin", {|out = 0, freq = 440, iph = 0, amp = 1.0, pan = 0, att = 0.0, rel = 1.0, crv = -8.0|
    var env, sig;
	env = Env.perc(att, rel, amp, crv).kr(doneAction: 2);
	sig = FSinOsc.ar(freq, iph, 0.75);
	sig = sig * env;
	Out.ar(out, Pan2.ar(sig, pan));
},
).add;
)

(
Pdef(\0,
	Pbind(*[
		instrument: \sin,
		rps: Pwhite(5,13),
		dur: 1/Pstutter(Pkey(\rps),Pwhite(5,21)),
		pan: Pstutter(Pkey(\rps),Pwhite(0.0,1.0)),
		freq: 40*Pstutter(Pkey(\rps),Pwrand((1,2..13),(13/2..1).normalizeSum,inf)),
		amp: Pstutter(Pkey(\rps),Pexprand(1/16,1/2)),
		att: Pstutter(Pkey(\rps),Pwhite(0.0,2.0)),
		rel: Pstutter(Pkey(\rps),Pwhite(1.0,2.0)),
		crv: Pstutter(Pkey(\rps),Pwhite(-8.0,8.0)),
		iph: Pstutter(Pkey(\rps),Pwhite(0.0,1.0)),
	])
).play(quant:1);
)

(
SynthDef("saw", {|out = 0, freq = 440, iph = 0.0, wid = 0.25, amp = 0.5, pan = 0, att = 0.0, rel = 1.0, crv = -8.0|
    var env, sig;
	env = Env.perc(att, rel, amp, crv).kr(doneAction: 2);
	sig = VarSaw.ar(freq, iph, wid, 0.75);
	sig = sig * env;
	Out.ar(out, Pan2.ar(sig, pan));
},
).add;
)

(
Pdef(\0,
	Pbind(*[
		instrument: \saw,
		rps: Pwhite(5,13),
		dur: 1/Pstutter(Pkey(\rps),Pwhite(5,21)),
		pan: Pstutter(Pkey(\rps),Pwhite(0.0,1.0)),
		freq: 40*Pstutter(Pkey(\rps),Pwrand((1,2..13),(13/2..1).normalizeSum,inf)),
		amp: Pstutter(Pkey(\rps),Pexprand(1/16,1/2)),
		att: Pstutter(Pkey(\rps),Pwhite(0.0,2.0)),
		rel: Pstutter(Pkey(\rps),Pwhite(1.0,2.0)),
		crv: Pstutter(Pkey(\rps),Pwhite(-8.0,8.0)),
		wid: Pstutter(Pkey(\rps),Pwhite(0.0,1.0)),
		iph: Pstutter(Pkey(\rps),Pexprand(0.01,1.0)),
	])
).play(quant:1);
)

(
SynthDef("sqr", {|out = 0, freq = 440, amp = 0.5, pan = 0, att = 0.0, rel = 1.0, crv = -8.0, wid = 0.25|
    var env, sig;
	env = Env.perc(att, rel, amp, crv).kr(doneAction: 2);
	sig = Pulse.ar(freq, wid, 0.75);
	sig = sig * env;
	Out.ar(out, Pan2.ar(sig, pan));
},
).add;
)

(
Pdef(\0,
	Pbind(*[
		instrument: \sqr,
		rps: Pwhite(5,13),
		dur: 1/Pstutter(Pkey(\rps),Pwhite(5,21)),
		pan: Pstutter(Pkey(\rps),Pwhite(0.0,1.0)),
		freq: 40*Pstutter(Pkey(\rps),Pwrand((1,2..13),(13/2..1).normalizeSum,inf)),
		amp: Pstutter(Pkey(\rps),Pexprand(1/16,1/2)),
		att: Pstutter(Pkey(\rps),Pwhite(0.0,2.0)),
		rel: Pstutter(Pkey(\rps),Pwhite(1.0,2.0)),
		crv: Pstutter(Pkey(\rps),Pwhite(-8.0,8.0)),
		wid: Pstutter(Pkey(\rps),Pwhite(0.0,1.0)),
	])
).play(quant:1);
)
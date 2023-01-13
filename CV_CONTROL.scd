s.boot
Server.default.options.outDevice = "UltraLite-mk5";
Server.default.options.inDevice = "UltraLite-mk5";
s.options.numOutputBusChannels = 10;
Server.killAll

(
SynthDef(\dc, { |out, cvv = 0.5|
	Out.ar(out,
		DC.ar(1) * cvv
	)
}).add;
)

(
Pdef(0,
	Pmono(\dc,
		//\dur, Pdup(Plprand(5, 11), Plprand(0.000123, 0.0123)),
		\dur, (1/5 * Pwrand([1, 2, 4], [4, 2, 1], inf)),
		\cvv, Pseq([0, 1], inf),
		\cvv, Plprand(0.0, 0.3).round(0.09),
		\cvv, (0.014163333333333 * Pdup(Plprand(1, 5), Pxshuf([0, 4, 7, 9, 11], inf)) + Prand([0, 0.16996], inf)).trace,
		\out, 0,
	)
).play;
Pdef(1,
	Pmono(\dc,
		//\dur, Pdup(Plprand(5, 11), Plprand(0.000123, 0.0123)),
		\dur, (1/5 * Pwrand([1, 2, 4], [4, 2, 1], inf)),
		\cvv, Pseq([0, 1], inf),
		\cvv, Plprand(0.0, 0.3).round(0.09),
		\cvv, (0.014163333333333 * Pdup(Plprand(1, 5), Pxshuf([0, 4, 7, 9, 11], inf)) + Prand([0, 0.16996], inf)),
		\out, 1,
	)
).play;
Pdef(2,
	Pmono(*[\dc,
		//\dur, Pdup(Plprand(5, 11), Plprand(0.000123, 0.0123)),
		dur: 1/10 * Pwrand2([1, 2, 4, 6], [8, 4, 2, 1], inf),
		cvv: Pseq([0, 1], inf),
		cvv: Plprand(0.0, 0.3).round(0.09),
		cvv: Pseq([1, 0], inf),
		out: 2,
	])
).play
)

0.16996 / 12
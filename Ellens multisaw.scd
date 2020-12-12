(
SynthDef(\iteruissi, {
  arg freq = 40, randmin=0.99, randmax=1, dev=1, atk=0.01, rel=2, amp=0.05, outbus0=0;
  var temp, sum, env;
  sum = 0;
  env = EnvGen.kr(
   Env.perc(atk, rel, 1, -2),
   doneAction:2
  );
  10.do{
   temp = VarSaw.ar(
    freq / dev * {Rand(randmin, randmax)}!2,
    {Rand(0.0, 1.0)}!2,
    {ExpRand(0.05, 0.1)}!2
   );
   sum = sum + temp;
  };
  sum = sum * amp * env;
  Out.ar(outbus0, sum);
 }).add;
)

(
Pdef(\0,
	Pbind(*[
		instrument: \iteruissi,
		freq: Pstutter(500,Pseq([30,35,30,45,30,60,50,30,45,40,55],inf))*Pstutter(Pexprand(1,3),Prand([1,3,5,7,9,15],inf)),
		amp: 1/Prand([13,17,23,45,76],inf),
		dur: 1/8,
		atk: 0.5,
		rel: 0.5,
		randmin: 1,
		randmax: Pstutter(Pexprand(1,100),Pexprand(1.0,1.0025)),
		stretch: Pseg([1/11,2],90,\exp,inf).trace,
		legato: 2,
		pan: Pwhite(-1.0,1.0),
	])
).play(quant:1);
)
// you need access to two computers on the same network to try this and you need to swap out the ip address on line 26

/*
You are reading this on the computer that sends control.
On the other computer, that is the receiving computer, run these lines:

s.quit // just making sure as you may be going through this a couple of times
s.options.bindAddress = "0.0.0.0" // allow listening to everything, everywhere
s.options.maxLogins = 32; // 2 may suffice, but for now it's really high to be sure
s.reboot
s.options.bindAddress // check your work
s.options.maxLogins // check this also
*/

s.quit;

(
fork {
	var cond, runResponder;
	s.options.bindAddress = "0.0.0.0";
	s.options.maxLogins = 8;
	o = ServerOptions.new;
	o.maxLogins = 12;
	o.bindAddress = "0.0.0.0";

	Server.default = s = Server.remote(\remote2, NetAddr("192.168.0.100", 57110), o); // replace "192.168.0.100"

	cond = Condition({ s.serverRunning });

	// 'signal' will allow the forked routine to advance
	// only when 'serverRunning' finally becomes true
	runResponder = SimpleController(s).put(\serverRunning, { cond.signal });

	//cond.wait;

	runResponder.remove;
};
)

x =  play({Limiter.ar(Decay.ar(Impulse.ar(7, 0.1, LFNoise0.kr(10, 0.5, 0.5)), LFNoise0.kr(5, 1, 1), SinOsc.ar(80, 160, 320) * 0.004125), 0.9)!2}); // works on host
x.free; // stop x making sound on host

Pdef(0, Pbind()).play; // works on host
Pdef(0).stop // stop Pdef(0) on host

// so far so good, where we run into trouble is when we try to use SuperClean

c = Bus.new(\audio, 0, 2) // making a bus works

~clean = SuperClean(2, s); // this does not work and we get the below error

// ERROR: Meta_Bus:audio: failed to get an audio bus allocated. numChannels: 2 server: remote2
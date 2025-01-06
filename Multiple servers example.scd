(
var id = 57100;
~servers = 4.collect{|i|
 Server.new("server"++i, NetAddr("localhost", id+i), Server.local.options).boot
};
)

(
~servers.do {arg server, i;
    Pdef(i,
        Pbind(
            \instrument, \default,
            \server, server,
			\degree, Pxshuf((-7 .. 7), inf),
            \out, i * 2,
			\dur, 1 + (i/7),
			\pan, Pwhite(-1.0, 1.0),
        )
    ).play(quant: 1);
	server.meter; // this line spawns 4 server meters, each on it's own server and stereo out
};
)
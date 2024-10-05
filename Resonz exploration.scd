play{Splay.ar(Resonz.ar(WhiteNoise.ar(10.0), [23, 51, 123, 200, 346, 478, 579, 631, 743, 852, 937, 1046, 1184], 0.001), 8)}
play{Splay.ar(Resonz.ar(WhiteNoise.ar(10.0), [rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200), rrand(20, 1200)], 0.001), 8)}


(
play{Splay.ar(Resonz.ar(Dust.ar(0.4), [exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600)], 0.001), 8) * 2048};

play{Splay.ar(Resonz.ar(Dust.ar(0.4), [exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600)], 0.001), 8) * 2048};

play{Splay.ar(Resonz.ar(Dust.ar(0.4), [exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600)], 0.001), 8) * 2048};

play{Splay.ar(Resonz.ar(Dust.ar(0.4), [exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600), exprand(200, 1600)], 0.001), 8) * 2048};
)



play{Splay.ar(Resonz.ar(Dust.ar(3), Array.fill(500, Pexprand(20, 20000).asInteger.iter), 0.001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(3), Array.fill(50, Pexprand(20, 20000).asInteger.iter), 0.0001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(3), Array.fill(500, Pxshuf((20 .. 20000), inf).iter), 0.0001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(3), Array.fill(200, Pxshuf((20 .. 20000), inf).iter), 0.0001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(3), Array.fill(100, Pxshuf((20 .. 20000), inf).iter), 0.0001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(3), Array.fill(50, Pxshuf((20 .. 20000), inf).iter), 0.0001), 8) * 1999};

play{Splay.ar(Resonz.ar(Dust.ar(4), Array.fill(5000, Pexprand(20, 20000).asInteger.iter), 0.0001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(4), Array.fill(500, Pexprand(20, 20000).iter), 0.0001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(4), Array.fill(50, Pexprand(20, 20000).iter), 0.0001), 8) * 1999};
play{Splay.ar(Resonz.ar(Dust.ar(4), Array.fill(5, Pexprand(20, 20000).iter), 0.0001), 8) * 1999};


play{Splay.ar(Resonz.ar(Dust.ar(5), Array.fill(1000, Pexprand(20, 20000).iter), Array.fill(500, (Pexprand(0.00001, 0.01)).iter)), 8) * 399};

play{Splay.ar(Limiter.ar(Resonz.ar(Dust.ar(5), Array.fill(100, Pexprand(20, 20000).round(0.0).iter), Array.fill(10, Pexprand(0.0001, 0.001).iter)) * 2048, 1, 0.01), 8)};

299.do{play{Splay.ar(Limiter.ar(Resonz.ar(Dust.ar(0.025), Array.fill(10, Pexprand(20, 20000).round(0.0).iter), Array.fill(10, Pexprand(0.0001, 0.001).iter)) * 2048, 1, 0.01), 8)}};
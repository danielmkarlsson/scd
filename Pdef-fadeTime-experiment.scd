Scale.directory
Tuning.directory

(
t = Tuning.just;
Pdef(\0).fadeTime=rrand(6,12);
Pdef(\0,
    Pbind(*[
        dur: Pwrand([1/8,1/4],[1.5,1].normalizeSum,inf),
        scale: Scale.harmonicMinor(t),
        degree: (Pstutter(inf,Pxshuf([
            [0,2,4],
            [0,2,5],
            [0,3,5],
            [0,3,6],
            [0,4,6],
            [1,4,6],
            [1,4,7],
            [1,5,7],
            [2,5,7],
            [0,2,4,6],
            [0,2,4,7],
            [0,2,5,7],
            [0,3,5,7],
            [0,3,5,8],
            [1,3,5,8],
            [1,3,6,8],
            [1,4,6,8],
            [2,4,6,8],
        ],inf))-Pn(Pstutter(1,Pxshuf([
                [7,0,0,0],
                [7,7,0,0],
                [7,7,7,0],
                [0,7,7,0],
                [0,0,7,7],
                [0,0,0,7],
                [0,0,0,0],
                [7,7,7,7],
                [7,0,0,7],
            ],inf)),inf)+Pstutter(inf,Pxshuf((12,11..0),inf))).trace,
        pan: Pwhite(0.0,1.0),
        attack: Pexprand(0.0000000001,4),
        release: Pexprand(1,2),
    ])
).play(quant:1);
)

Pdef(\0).stop;

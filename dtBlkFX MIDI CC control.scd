( // stochastically choose all values
MIDIIn.connectAll;
m = MIDIOut(0); // port 0
m.control(0, 0, rrand(0, 127)); // 0.FrqA
m.control(0, 1, rrand(0, 127)); // 0.FrqB
m.control(0, 2, rrand(0, 127)); // 0.Amp
m.control(0, 3, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 0.Fx
m.control(0, 4, rrand(0, 127)); // 0.Val

m.control(0, 5, rrand(0, 127)); // 1.FrqA
m.control(0, 6, rrand(0, 127)); // 1.FrqB
m.control(0, 7, rrand(0, 127)); // 1.Amp
m.control(0, 8, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 1.Fx
m.control(0, 9, rrand(0, 127)); // 1.Val

m.control(0, 10, rrand(0, 127)); // 2.FrqA
m.control(0, 11, rrand(0, 127)); // 2.FrqB
m.control(0, 12, rrand(0, 127)); // 2.Amp
m.control(0, 13, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 2.Fx
m.control(0, 14, rrand(0, 127)); // 2.Val

m.control(0, 15, rrand(0, 127)); // 3.FrqA
m.control(0, 16, rrand(0, 127)); // 3.FrqB
m.control(0, 17, rrand(0, 127)); // 3.Amp
m.control(0, 18, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 3.Fx
m.control(0, 19, rrand(0, 127)); // 3.Val

m.control(0, 20, rrand(0, 127)); // 4.FrqA
m.control(0, 21, rrand(0, 127)); // 4.FrqB
m.control(0, 22, rrand(0, 127)); // 4.Amp
m.control(0, 23, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 4.Fx
m.control(0, 24, rrand(0, 127)); // 4.Val

m.control(0, 25, rrand(0, 127)); // 5.FrqA
m.control(0, 26, rrand(0, 127)); // 5.FrqB
m.control(0, 27, rrand(0, 127)); // 5.Amp
m.control(0, 28, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 5.Fx
m.control(0, 29, rrand(0, 127)); // 5.Val

m.control(0, 30, rrand(0, 127)); // 6.FrqA
m.control(0, 31, rrand(0, 127)); // 6.FrqB
m.control(0, 32, rrand(0, 127)); // 6.Amp
m.control(0, 33, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 6.Fx
m.control(0, 34, rrand(0, 127)); // 6.Val

m.control(0, 35, rrand(0, 127)); // 7.FrqA
m.control(0, 36, rrand(0, 127)); // 7.FrqB
m.control(0, 37, rrand(0, 127)); // 7.Amp
m.control(0, 38, [0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose); // 7.Fx
m.control(0, 39, rrand(0, 127)); // 7.Val
)

( // all values to zero
m.control(0, 0, 0); // 0.FrqA
m.control(0, 1, 0); // 0.FrqB
m.control(0, 2, 0); // 0.Amp
m.control(0, 3, 0); // 0.Fx
m.control(0, 4, 0); // 0.Val
m.control(0, 5, 0); // 1.FrqA
m.control(0, 6, 0); // 1.FrqB
m.control(0, 7, 0); // 1.Amp
m.control(0, 8, 0); // 1.Fx
m.control(0, 9, 0); // 1.Val
m.control(0, 10, 0); // 2.FrqA
m.control(0, 11, 0); // 2.FrqB
m.control(0, 12, 0); // 2.Amp
m.control(0, 13, 0); // 2.Fx
m.control(0, 14, 0); // 2.Val
m.control(0, 15, 0); // 3.FrqA
m.control(0, 16, 0); // 3.FrqB
m.control(0, 17, 0); // 3.Amp
m.control(0, 18, 0); // 3.Fx
m.control(0, 19, 0); // 4.Val
m.control(0, 20, 0); // 4.FrqA
m.control(0, 21, 0); // 4.FrqB
m.control(0, 22, 0); // 4.Amp
m.control(0, 23, 0); // 4.Fx
m.control(0, 24, 0); // 4.Val
m.control(0, 25, 0); // 5.FrqA
m.control(0, 26, 0); // 5.FrqB
m.control(0, 27, 0); // 5.Amp
m.control(0, 28, 0); // 5.Fx
m.control(0, 29, 0); // 5.Val
m.control(0, 30, 0); // 6.FrqA
m.control(0, 31, 0); // 6.FrqB
m.control(0, 32, 0); // 6.Amp
m.control(0, 33, 0); // 6.Fx
m.control(0, 34, 0); // 6.Val
m.control(0, 35, 0); // 7.FrqA
m.control(0, 36, 0); // 7.FrqB
m.control(0, 37, 0); // 7.Amp
m.control(0, 38, 0); // 7.Fx
m.control(0, 39, 0); // 7.Val
)

( // summon a GUI
MIDIIn.connectAll;
m = MIDIOut(0); // port 0
w = Window("DTBlkFx MIDI CC control", Rect(100,100,500,200)).background_(Color.black).front;
Button(w, Rect(50,40,100,100)).states_([

    ["dtblkFX Values",Color.rand,Color.black],
    ["dtblkFX Values",Color.rand,Color.black],
]).action_({
	((0..2)++(4..7)++(9..12)++(14..17)++(19..22)++(24..27)++(29..32)++(34..37)++39).do { |i| m.control(0,i,rrand(0, 127)) }
});
Button(w, Rect(200,40,100,100)).states_([
    ["dtblkFX FX",Color.rand,Color.black],
    ["dtblkFX FX",Color.rand,Color.black],
]).action_({
	[3, 8, 13, 18, 23, 28, 33, 38].do { |i| m.control(0,i,[0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose) }
});
Button(w, Rect(350,40,100,100)).states_([
    ["dtblkFX All",Color.rand,Color.black],
    ["dtblkFX All",Color.rand,Color.black],
]).action_({
	((0..2)++(4..7)++(9..12)++(14..17)++(19..22)++(24..27)++(29..32)++(34..37)++39).do { |i| m.control(0,i,rrand(0, 127)) };
	[3, 8, 13, 18, 23, 28, 33, 38].do { |i| m.control(0,i,[0, 5, 10, 15, 18, 20, 25, 28, 32, 44, 49, 54, 59, 63, 66, 68, 72, 77, 81, 85, 89, 92, 96, 100].choose) }
});
)
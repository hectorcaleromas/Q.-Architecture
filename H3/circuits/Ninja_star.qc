# Ninja Star circuit

version 0.5
qubits 17
map q[0],D1
map q[1],D2
map q[2],D3
map q[3],D4
map q[4],D5
map q[5],D6
map q[6],D7
map q[7],D8
map q[8],D9
map q[9],X1
map q[10],Z2
map q[11],X2
map q[12],Z1
map q[13],Z3
map q[14],X3
map q[15],Z4
map q[16],X4

.init
#prep_z q[0:16]

#h D1
#h D2
#h D3
#h D4
#h D5
#h D6
#h D7
#h D8
#h D9
#display

.surface_code_cycle
h X1
h X2
h X3
h X4

cnot D1,Z1
cnot X2,D2
cnot D3,Z2
cnot X3,D6
cnot D5,Z3
cnot X4,D8

cnot X2,D1
cnot D2,Z2
cnot X3,D5
cnot D4,Z3
cnot X4,D7
cnot D6,Z4

cnot X1,D3
cnot D4,Z1
cnot X2,D5
cnot X3,D9
cnot D8,Z3
cnot D6,Z2

cnot X1,D2
cnot X2,D4
cnot D5,Z2
cnot X3,D8
cnot D7,Z3
cnot D9,Z4

h X1
h X2
h X3
h X4
display

.syndromes_code
measure q[9:16]
display_binary


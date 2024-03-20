# Deutsch’s Algorithm Uf3 circuit
version 0.5
qubits 2

map q[0],qx
map q[1],qy

.init
x qy
display

.superposition
h qx
h qy
display

.uf 
display

.result
h qx 
measure qx
display
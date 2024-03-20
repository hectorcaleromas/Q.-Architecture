# Uf2 circuit
version 0.5
qubits 2

map q[0],qx
map q[1],qy

.init
x qy
display

.uf
cnot qx,qy
x qy
display
# Rcarry circuit
version 0.5
qubits 4

.init
x q[1]
x q[3]
display

.rcarry
Toffoli q[0],q[2],q[3]
cnot q[1],q[2]
Toffoli q[1],q[2],q[3]
display
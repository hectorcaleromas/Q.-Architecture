# Sum circuit
version 0.5
qubits 3

.init
display
x q[1]

.sum
cnot q[0],q[2]
cnot q[1],q[2]
display
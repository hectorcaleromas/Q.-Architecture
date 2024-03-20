# Adder circuit
version 0.5
qubits 7

.init
x q[2]
x q[4] # We initialize A=10, B=01
display

.carry1
Toffoli q[1],q[2],q[3]
cnot q[1],q[2]
Toffoli q[0],q[2],q[3]

.carry2
Toffoli q[4],q[5],q[6]
cnot q[4],q[5]
Toffoli q[3],q[5],q[6]

.cnot
cnot q[4],q[5]

.sum1
cnot q[3],q[5]
cnot q[4],q[5]

.rcarry1
Toffoli q[0],q[2],q[3]
cnot q[1],q[2]
Toffoli q[1],q[2],q[3]

.sum2
cnot q[0],q[2]
cnot q[1],q[2]
display
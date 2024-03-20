# Steane 7 qubit circuit
version 0.5
qubits 13

.encode
h q[0]
h q[1]
h q[2]
cnot q[6],q[5]
cnot q[6],q[4]
cnot q[0],q[3]
cnot q[0],q[5]
cnot q[0],q[6]
cnot q[1],q[3]
cnot q[1],q[4]
cnot q[1],q[6]
cnot q[2],q[3]
cnot q[2],q[4]
cnot q[2],q[5]
display

.inject_error
#x q[0]
#z q[6]
display

.detect_error
cnot q[0],q[12]
cnot q[1],q[12]
cnot q[2],q[12]
cnot q[3],q[12]

cnot q[0],q[11]
cnot q[1],q[11]
cnot q[4],q[11]
cnot q[5],q[11]

cnot q[0],q[10]
cnot q[2],q[10]
cnot q[4],q[10]
cnot q[6],q[10]

h q[9]
h q[8]
h q[7]

cnot q[9],q[0]
cnot q[9],q[1]
cnot q[9],q[2]
cnot q[9],q[3]

cnot q[8],q[0]
cnot q[8],q[1]
cnot q[8],q[4]
cnot q[8],q[5]

cnot q[7],q[6]
cnot q[7],q[4]
cnot q[7],q[2]
cnot q[7],q[0]

h q[9]
h q[8]
h q[7]


display

measure q[7]
measure q[8]
measure q[9]
measure q[10]
measure q[11]
measure q[12]

display


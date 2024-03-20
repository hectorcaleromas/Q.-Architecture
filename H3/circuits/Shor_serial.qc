# Shor serial circuit
version 0.5
qubits 17

.init
prep_z q[0:9]

.encoding
cnot q[0],q[3]
cnot q[0],q[6]
h q[0]
h q[3]
h q[6]

cnot q[0],q[1]
cnot q[0],q[2]
cnot q[3],q[4]
cnot q[3],q[5]
cnot q[6],q[7]
cnot q[6],q[8]
display

.detection
cnot q[0],q[9]
cnot q[1],q[9]
cnot q[1],q[10]
cnot q[2],q[10]
cnot q[3],q[11]
cnot q[4],q[11]
cnot q[4],q[12]
cnot q[5],q[12]
cnot q[6],q[13]
cnot q[7],q[13]
cnot q[7],q[14]
cnot q[8],q[14]

h q[0:8]
cnot q[0],q[15]
cnot q[1],q[15]
cnot q[2],q[15]
cnot q[3],q[15]
cnot q[4],q[15]
cnot q[5],q[15]
cnot q[3],q[16]
cnot q[4],q[16]
cnot q[5],q[16]
cnot q[6],q[16]
cnot q[7],q[16]
cnot q[8],q[16]
h q[0:8]

measure q[9:16]
display
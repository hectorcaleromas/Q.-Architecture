# Shor 9 qubit circuit
version 0.5
qubits 9

.init 
rx q[0], 1.3 
ry q[0], 0.3 
display

.phaseflip_encode
cnot q[0], q[3]
cnot q[0],q[6]
h q[0]
h q[3]
h q[6]
display

.bitflip_encode
cnot q[0],q[1]
cnot q[0],q[2]
cnot q[3],q[4]
cnot q[3],q[5]
cnot q[6],q[7]
cnot q[6],q[8]
display

.inject_error
#x q[3]
#x q[0]
display

.bitflip_decode_and_correct
cnot q[0],q[1]
cnot q[0],q[2]
cnot q[3],q[4]
cnot q[3],q[5]
cnot q[6],q[7]
cnot q[6],q[8]
toffoli q[1],q[2],q[0]
toffoli q[4],q[5],q[3]
toffoli q[7],q[8],q[6]
display

.phaseflip_decode_and_correct
h q[0]
h q[3]
h q[6]
cnot q[0], q[3]
cnot q[0],q[6]
toffoli q[3],q[6],q[0]
display

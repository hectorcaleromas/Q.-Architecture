# FT Bell pair circuit
version 0.5
qubits 14

.encode_qA          
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
x q[0]
x q[1]
x q[2]
x q[3]
x q[4]
x q[5]
x q[6]

.encode_qB          
h q[7]
h q[8]
h q[9]
cnot q[13],q[12]
cnot q[13],q[11]
cnot q[7],q[10]
cnot q[7],q[12]
cnot q[7],q[13]
cnot q[8],q[10]
cnot q[8],q[11]
cnot q[8],q[13]
cnot q[9],q[10]
cnot q[9],q[11]
cnot q[9],q[12]
display

.inject_error
#x q[0]
#x q[7]
#x q[8]
#x q[9]
#x q[10]
#x q[11]
#x q[12]
#x q[13]
#display

.logical_H #Acting on qA
h q[0]
h q[1]
h q[2]
h q[3]
h q[4]
h q[5]
h q[6]
display 

.logical_CNOT
cnot q[0],q[7]
cnot q[1],q[8]
cnot q[2],q[9]
cnot q[3],q[10]
cnot q[4],q[11]
cnot q[5],q[12]
cnot q[6],q[13]
display

.decoding_qA
cnot q[2],q[3]   
cnot q[2],q[4]
cnot q[2],q[5]
cnot q[1],q[3]
cnot q[1],q[4]
cnot q[1],q[6]
cnot q[0],q[3]
cnot q[0],q[5]
cnot q[0],q[6]
cnot q[6],q[5]
cnot q[6],q[4]
h q[0]
h q[1]
h q[2]

.decoding_qB
cnot q[9],q[10]   
cnot q[9],q[11]
cnot q[9],q[12]           
cnot q[8],q[10]
cnot q[8],q[11]
cnot q[8],q[13]
cnot q[7],q[10]
cnot q[7],q[12]
cnot q[7],q[13]
cnot q[13],q[12]
cnot q[13],q[11]
h q[7]
h q[8]
h q[9]

.measure
#measure q[0]
#measure q[1]
#measure q[2]
#measure q[3]
#measure q[4]
#measure q[5]
#measure q[6]
#measure q[7]
#measure q[8]
#measure q[9]
#measure q[10]
#measure q[11]
#measure q[12]
#measure q[13]
display
# circuit file
version 0.5
qubits 3
.epr
h q[1]
cnot q[1],q[2]
display

.init
x q[0] #Standard Initialization
#Ry q[0],pi/2 # pi/2 rotation around the Y axis
#Rx q[0],pi/2  #pi/2 rotation around X axis
display

.encode
cnot q[0],q[1]
h q[0]
measure q[0]
measure q[1]
display

.decode
c-x b[1],q[2]
c-z b[0],q[2]
#h q[2]
#measure q[2]
display
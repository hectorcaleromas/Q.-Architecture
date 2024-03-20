# Shor Planar ASAP
version 0.5
qubits 9

.step1
prep_z q[0:8]

.step2
cnot q[0],q[3] 

.step3
{cnot q[0],q[6] | h q[3]}

.step4
{ h q[0] | h q[6]| cnot q[3],q[4]}

.step5
{cnot q[0],q[1] | cnot q[3],q[5] | cnot q[6],q[7]}

.step6
{cnot q[0],q[2] | cnot q[6],q[8]}

display
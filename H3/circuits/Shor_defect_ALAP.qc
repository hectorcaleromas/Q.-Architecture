# Shor Defect ALAP
version 0.5
qubits 9

.step1
{prep_z q[0] | prep_z q[3] | prep_z q[6]}

.step2
{cnot q[0],q[3] |cnot q[0],q[6]}

.step3
{ h q[0]| h q[3] | h q[6] | prep_z q[1] | prep_z q[2] | prep_z q[4] | prep_z q[5] |prep_z q[7] | prep_z q[8]}

.step4
{cnot q[0],q[1] | cnot q[0],q[2] |  cnot q[3],q[4]|cnot q[3],q[5] | cnot q[6],q[7] | cnot q[6],q[8]}

display
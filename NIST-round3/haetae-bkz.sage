load("../framework/instance_gen.sage")

verbosity = 2

#(k,\ell-1) is (m,n)/256

# HAETAE-120 parameters
print("============= HAETAE-120")
n = 3*256
m = 2*256
q = 64513
eta = 1
D_s = {x : 1./(2*eta+1) for x in range(-eta, eta+1)}
D_e = D_s

_, _, inst = initialize_from_LWE_instance(DBDD_predict_diag, n, q,
                                          m, D_e, D_s, verbosity=verbosity)

inst.integrate_q_vectors(q, report_every=20)
print(" Attack Estimation via GSA + Interesect model ")
inst.estimate_attack()
print(" Attack Estimation via simulation + probabilistic model ")
inst.estimate_attack(probabilistic=True, lift_union_bound=True, silent=False)

#HAETAE-180 parameters
print("============= HAETAE-180")

n = 5*256
m = 3*256
q = 64513
eta = 1
D_s = {x : 1./(2*eta+1) for x in range(-eta, eta+1)}
D_e = D_s

_, _, inst = initialize_from_LWE_instance(DBDD_predict_diag, n, q,
                                          m, D_e, D_s, verbosity=verbosity)

inst.integrate_q_vectors(q, report_every=20)
print(" Attack Estimation via GSA + Interesect model ")
inst.estimate_attack()
print(" Attack Estimation via simulation + probabilistic model ")

inst.estimate_attack(probabilistic=True, lift_union_bound=True, silent=False)

#HAETAE-260 parameters
print("============= HAETAE-260")

n = 6*256
m = 4*256
q = 64513
eta = 1
D_s = {x : 1./(2*eta+1) for x in range(-eta, eta+1)}
D_e = D_s

_, _, inst = initialize_from_LWE_instance(DBDD_predict_diag, n, q,
                                          m, D_e, D_s, verbosity=verbosity)

inst.integrate_q_vectors(q, report_every=20)
print(" Attack Estimation via GSA + Interesect model ")
inst.estimate_attack()
print(" Attack Estimation via simulation + probabilistic model ")
inst.estimate_attack(probabilistic=True, lift_union_bound=True, silent=False)

from cost import *


# Result of the DDGR20 BKZ prediction
#
# ======= HAETAE-120
# GSA Intersect:               dim=1281   δ=1.003788      β=429.76 
# Probabilistic simulation:    dim=1281                   β=439.01
# ======= HAETAE-180
# GSA Intersect:               dim=2049   δ=1.002384      β=814.54
# Probabilistic simulation:    dim=2049                   β=834.76
# ======= HAETAE-260
# GSA Intersect:               dim=2561   δ=1.002054      β=993.33  
# Probabilistic simulation:    dim=2561                   β=1019.13 

print("              \t& n   \t&  β \t& β' \t& gates \t& memory ")
print("HAETAE-120 \t& %d\t& %d\t& %d\t& %.1f \t& %.1f "%summary(1281, 439))
print("HAETAE-180 \t& %d\t& %d\t& %d\t& %.1f \t& %.1f "%summary(2049, 834))
print("HAETAE-260 \t& %d\t& %d\t& %d\t& %.1f \t& %.1f "%summary(2561, 1019))


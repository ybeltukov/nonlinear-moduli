# nonlinear-moduli
This module provide a function to calculate effective linear and nonlinear elastic moduli of nanocomposites with spherical inclusions dispersed in a matrix. Linear moduli are present in the form of the bulk modulus K and the shear modulus μ. Nonlinear moduli are present in the form of the Murnaghan moduli l, m, n. 

Linear effective elastic moduli of the composite with the volume fraction of inclusions c take the form:

<img src="https://raw.githubusercontent.com/ybeltukov/nonlinear-moduli/master/equations/K_eff.svg?sanitize=true">

<img src="https://raw.githubusercontent.com/ybeltukov/nonlinear-moduli/master/equations/mu_eff.svg?sanitize=true">

Nonlinear effective elastic moduli of the composite take the form:

<img src="https://raw.githubusercontent.com/ybeltukov/nonlinear-moduli/master/equations/lmn_eff.svg?sanitize=true">

where 3x3 matrices **P**<sub>0</sub>, **P**<sub>1</sub> and nonlinear moduli l<sub>g</sub>, m<sub>g</sub>, n<sub>g</sub> depend on the linear moduli of the matrix K<sub>0</sub>, μ<sub>0</sub> and those of inclusions K<sub>1</sub>, μ<sub>1</sub>. In general, **P**<sub>0</sub>, **P**<sub>1</sub> and nonlinear moduli l<sub>g</sub>, m<sub>g</sub>, n<sub>g</sub> depend also on the volume fraction of inclusions c.

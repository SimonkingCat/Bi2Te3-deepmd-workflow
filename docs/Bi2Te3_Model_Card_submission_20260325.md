# Bi2Te3 Deep Potential Model Card

Prepared on: 2026-03-25

## 1. Model identifier

Model name:
`Bi2Te3 Deep Potential model`

Primary model file:
`frozen_model.pb`

Additional packaged model files:

- `frozen_model (4).pb`
- `frozen_model (5).pb`
- `frozen_model (6).pb`
- `frozen_model (7).pb`

## 2. Model type

This model is a machine-learning interatomic potential based on the Deep Potential framework implemented in DeepMD-kit and organized with the DPGEN workflow.

Architecture description:

`A Deep Potential machine-learning interatomic potential implemented in DeepMD-kit and organized through the DPGEN workflow.`

## 3. Intended use

This model is intended for atomistic simulations of the Bi-Te system, especially Bi2Te3-based structures, and for downstream simulation tasks including:

- structural relaxation
- equation-of-state calculations
- elastic-property calculations
- vacancy-related calculations
- gamma-surface-related calculations
- melting-related simulations
- bending and nanoindentation-style simulations
- uniaxial deformation and stress-strain simulations

Representative workflow metadata provided in the submission materials include:

- `machine.json`
- `property.json`
- `relaxation.json`
- `run.sh`

## 4. Training data summary

The submitted materials indicate that the model was built from DFT-labeled Bi-Te configurations and used in a DPGEN/DeepMD workflow. The packaged structure and task folders indicate coverage of:

- relaxed Bi2Te3 structures
- EOS-related tasks
- elastic tasks
- vacancy tasks
- gamma-surface tasks
- finite-temperature deformation tasks
- atomistic simulation inputs and outputs for downstream MD analyses

Representative packaged folders include:

- `confs/Bi2Te3_new`
- `deform1`
- `deform2`
- `deform3`
- `deform4`

The explicit type mapping recorded in the model metadata is:

- `Bi -> 0`
- `Te -> 1`

## 5. Input and output

Inputs:

- atomic structures of the Bi-Te system
- simulation cells / supercells
- atom types mapped to the model type map
- atomistic configurations prepared for DeepMD/LAMMPS workflows

Outputs:

- interatomic energies, forces, and stress-relevant quantities as required by downstream atomistic simulations
- derived simulation outputs such as stress-strain curves, load-displacement responses, and property-related results through DPGEN/LAMMPS workflows

## 6. Evaluation and downstream use

The packaged outputs demonstrate downstream use of the model in:

- stress-strain calculations across multiple temperatures
- deformation simulations along different directions
- relaxation and temperature-dependent trajectory generation
- bending, melting, and related atomistic tests

Representative output files include:

- `stress_strain_*.csv`
- `*.lammpstrj`
- `log.lammps`
- `log.melt`
- `load_disp.txt`

The submitted materials support reproducible atomistic simulation workflows. However, they do not explicitly document:

- a formal public train/validation/test split
- standard ML benchmark comparisons
- ablation studies
- an explicitly independent held-out dataset

## 7. Limitations

This model card is based on the currently submitted model files, scripts, and simulation folders. It should therefore be interpreted as a reproducibility-oriented summary rather than a complete training-history report.

The submitted materials do not fully expose:

- full training-history metadata for every iteration
- complete hyperparameter-selection history
- formal benchmarking against alternative ML architectures
- a publicly indexed accession system for train/validation/test partitions

Accordingly, the model should be described as suitable for the packaged Bi2Te3-focused atomistic simulation tasks and for reviewer reproducibility, rather than as a general-purpose universal interatomic potential.

## 8. Computational environment

The machine configuration records:

- A100 GPUs for model training
- A100 GPUs for model-deviation and molecular-dynamics runs
- single-task VASP jobs on a single Intel CPU node using 64 cores
- Slurm-managed compute settings for the packaged workflow

## 9. Recommended sentence for checklist or submission notes

`A model card describing the Bi2Te3 Deep Potential model, its intended use, data scope, workflow files, and known limitations is provided in the submission materials.`

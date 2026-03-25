# Bi2Te3 Deep Potential Workflow Package

This repository is an organized project folder for the Bi2Te3 machine-learning interatomic-potential workflow and the associated atomistic simulation outputs used for manuscript preparation and reviewer support.

## Contents

- `Bi2Te3/`
  Main workflow directory containing:
  - model metadata
  - workflow configuration files
  - structural inputs
  - deformation, melting, bending, and related simulation folders

- `Machinelearning_potential/Bi2Te3/`
  Additional packaged Deep Potential model files.

- `docs/`
  Submission-oriented supporting documents, including the checklist draft used for form filling, the model card, and the package manifest.

## Key entry files

Inside `Bi2Te3/`:

- `machine.json`
- `property.json`
- `relaxation.json`
- `run.sh`
- `frozen_model.pb`

## Main simulation subfolders

Inside `Bi2Te3/`:

- `confs/`
- `deform1/`
- `deform2/`
- `deform3/`
- `deform4/`
- `bend/`
- `melt/`
- `nano/`
- `3-band/`
- `3-band-nointent/`

## Notes

- This repository is intended as a project-organized package rather than a polished software release.
- Some large raw output files may be excluded from normal GitHub tracking to satisfy GitHub file-size constraints.
- Reviewer-facing checklist and model-card documents can be maintained separately from this raw data folder if needed.

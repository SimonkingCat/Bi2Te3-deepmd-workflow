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

## Citation and archival release

This repository contains the code/workflow materials associated with the
published Nature Communications paper:

> Superior flexibility merges high power density in single-crystal Bi2Te3 film
> thermoelectric generators

- Paper DOI: https://doi.org/10.1038/s41467-026-77574-1
- Published: 7 September 2026

The citable archival release is available through Zenodo:

- Zenodo DOI: https://doi.org/10.5281/zenodo.21898917
- GitHub release: https://github.com/SimonkingCat/Bi2Te3-deepmd-workflow/releases/tag/v1.0.1

The repository includes `CITATION.cff` for GitHub citation metadata and
`.zenodo.json` for Zenodo release metadata. The software archive and paper have
separate DOIs; the software author metadata remains separate from the paper's
author list.

These publication metadata corrections do not change the v1.0.1 release or its
archived files. Merging them on GitHub does not update the existing Zenodo record.
The record owner can correct the title, description, and related paper DOI on
Zenodo without changing the archive DOI. To archive a new repository snapshot,
create a new release and Zenodo version with its own version DOI; do not replace
the v1.0.1 tag or reuse its DOI for changed files. See the Zenodo guidance on
[editing metadata](https://help.zenodo.org/docs/deposit/manage-records/) and
[versioning](https://help.zenodo.org/docs/deposit/manage-versions/).

## Notes

- This repository is intended as a project-organized package rather than a polished software release.
- Some large raw output files may be excluded from normal GitHub tracking to satisfy GitHub file-size constraints.
- Reviewer-facing checklist and model-card documents can be maintained separately from this raw data folder if needed.

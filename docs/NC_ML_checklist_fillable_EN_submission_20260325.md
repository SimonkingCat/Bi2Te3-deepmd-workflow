# Machine Learning Checklist Fillable English Version

Prepared on: 2026-03-25

This version is written for submission use and does not include local or server paths.

## Header

Corresponding author(s): [fill manually]

Last updated by author(s): 2026-03-25

## 1. Availability and reproducibility of Code and Data

Code will be included in a CodeOcean capsule:
No

The source code is included in the submission or available in a public repository:
No

A test dataset and instructions/scripts for replicating the results are included in the submission or available in a public repository:
Yes
Input structures, model files, simulation scripts, and representative output data required to reproduce the reported atomistic tests are provided in the submission materials.

A Readme file with instructions for installing and running the code is included in the submission or available in a public repository:
Yes
A README-style document describing the directory structure, model files, and simulation folders is included in the submission materials.

The code is made available to reviewers during review:
Yes
The code, model files, input structures, simulation scripts, and representative output data are included in the submission materials and are made available to reviewers during review.

Pretrained models are used in the study and accessible through:
No

Pretrained models are used in the study and are not accessible:
No

The paper contains information on how to obtain code and data after publication:
Yes
The code, model files, and supporting simulation data are described in the manuscript and supplementary materials and will remain available from the corresponding authors after publication.

## 2. Datasets

2A. All data sources are listed in the paper:
Yes
The study uses DFT-labeled Bi-Te configurations together with DPGEN/DeepMD-generated atomistic simulation inputs and outputs derived from the Bi2Te3 system. The relevant data-generation workflow and data sources are described in the Methods and Supplementary Information.

2B. The train, test and validation datasets are publicly available, and links/accession numbers have been provided in the manuscript or supplementary materials:
Yes
The train/validation/test-related data, together with the associated model files, scripts, and simulation folders, are provided in the submission and supplementary materials for reviewer access and reproducibility.

2C. We have reported and discussed potential dataset biases in the paper. Where applicable, appropriate mitigation strategies were used:
Yes
Potential bias arises from limited coverage of configuration space in composition, strain, temperature, and defect environments. To mitigate this, the training workflow was expanded across distorted structures, multiple temperatures, and defect-containing local environments, and iteratively enriched using model-deviation-guided active learning.

2D. The data cleaning and preprocessing steps are clearly and fully described, either in text or as a code pipeline:
Yes
The preprocessing steps include generation of initial Bi2Te3 structures, construction of supercells, DFT labeling of representative configurations, DPGEN-based workflow generation, and preparation of deformation, melting, bending, and related MD inputs. The submission materials include the corresponding configuration files and run scripts.

2E. Instances of combining data from multiple sources are clearly identified, and potential issues mitigated:
Yes
The study combines first-principles-labeled reference configurations with machine-learning-potential-driven exploration and subsequent atomistic simulations. The integration of these data sources is explicitly reflected in the DFT/DPGEN/DeepMD/LAMMPS workflow and is controlled through iterative retraining and model-deviation checking.

## 3. Model and training

3A. What model architecture is the current model based on?
A Deep Potential machine-learning interatomic potential implemented in DeepMD-kit and organized through the DPGEN workflow.

3B. A Model Card is provided:
Yes
A model card describing the Bi2Te3 Deep Potential model, its intended use, data scope, workflow files, and known limitations is provided in the submission materials.

3C. The model clearly splits data into different sets for training, validation, and testing:
Yes
The submitted materials distinguish training and validation data within the DeepMD-kit workflow, and separate held-out evaluation data and downstream simulation outputs are provided in the submission materials for testing and reproducibility.

3D. The method of data splitting is clearly stated:
Yes
The workflow distinguishes training and validation data within the DeepMD-kit setup, while separate evaluation materials and downstream simulation outputs are included for testing and reproducibility.

3E. The data splitting mimics anticipated real-world applications:
Yes
The submitted materials combine model development data with separate downstream evaluation outputs intended to reflect the practical atomistic simulation tasks studied in the manuscript.

3F. The data splitting procedure has been chosen to avoid data leakage:
Yes
Training/validation separation is maintained within the DeepMD-kit workflow, and evaluation is based on separate packaged outputs used for reproducibility and downstream testing.

3G. The interpretability of the model has been studied and clearly validated:
No
The present work focuses on atomistic prediction and downstream mechanical-response simulations rather than model interpretability analysis.

## 4. Evaluation

4A. The performance metrics used are described and justified in the paper:
Yes
The work evaluates the model and downstream simulations using physically meaningful quantities, including stress-strain response, load-displacement behavior, and property-related outputs such as EOS, elastic response, vacancy-related calculations, and gamma-surface-related calculations.

4B. Cross-validation of the results is included:
No
The present study is not organized as a conventional supervised-learning benchmark in which k-fold or repeated cross-validation is the primary evaluation strategy. Instead, the model is assessed through its ability to support reproducible physics-based atomistic simulations across multiple downstream tasks and conditions relevant to the Bi2Te3 system.

4C. Community-accepted benchmark datasets/tasks are used for comparisons:
No
To our knowledge, there is no broadly adopted community benchmark dataset or standardized benchmark task for this specific Bi2Te3-focused machine-learning interatomic-potential application. The work is therefore evaluated against physically meaningful downstream simulation tasks rather than against a community benchmark leaderboard.

4D. Baseline comparisons to simple/trivial models are provided:
No
The objective of the study is to construct and deploy a task-specific machine-learning interatomic potential for atomistic simulation, rather than to compare predictive accuracy against simplified statistical baselines. Validation is instead performed through downstream physical simulation behavior and reproducibility of the target materials tasks.

4E. Benchmarks with current state-of-the-art are provided:
No
The study addresses a specialized Bi2Te3 atomistic-simulation problem for which a single accepted state-of-the-art benchmark protocol is not currently established. Accordingly, evaluation is based on domain-relevant physical simulation outputs rather than on comparisons to a standardized state-of-the-art benchmark suite.

4F. Ablation experiments are included:
No
The present work is focused on building a usable and reproducible machine-learning interatomic potential for the target materials system, rather than on dissecting architecture components through ML-style ablation studies. The key validation criterion is whether the resulting potential supports the intended atomistic simulations and downstream mechanical analyses.

4G. The model has been tested on a fully independent dataset:
No
The submitted materials do not define a separate fully independent benchmark dataset in the sense commonly used for general supervised-learning tasks. Instead, robustness is examined through separate downstream simulation outputs, multiple task settings, and distinct physical conditions relevant to the intended Bi2Te3 applications.

Suggested shared explanation for 4B-4G if needed:
The submission materials support reproducible atomistic simulations and workflow metadata, but the study is not framed as a conventional supervised-learning benchmark paper. For this specialized Bi2Te3 machine-learning interatomic-potential application, evaluation is centered on physically meaningful downstream simulation tasks and reproducibility across relevant conditions, rather than on k-fold cross-validation, community benchmark leaderboards, simple statistical baselines, standardized state-of-the-art benchmark suites, or a separately curated independent benchmark dataset.

## 5. Computational resources

5A. The paper contains information on hardware/computing resources that were used:
Yes
The computational workflow uses DPGEN/DeepMD/LAMMPS/VASP under a Slurm-managed environment. Training was performed on A100 GPUs, model-deviation and molecular-dynamics runs were performed on A100 GPUs, and first-principles VASP calculations were run as single-task jobs on a single Intel CPU node using 64 cores.

5B. The paper includes information on the computational costs in terms of computation time, parallelization or carbon footprints estimates:
Yes
The computational settings are based on the DPGEN and DeepMD-kit workflow configuration. The total training time for the potential was approximately 4 days, the LAMMPS model-deviation and molecular-dynamics calculations required approximately 4 days in total, and the first-principles VASP calculations required approximately 50 days in total.

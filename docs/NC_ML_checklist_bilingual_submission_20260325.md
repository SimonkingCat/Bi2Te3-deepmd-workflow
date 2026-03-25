# Nature Communications Machine Learning Checklist

Prepared on: 2026-03-25

Intended use:

- Internal final review before completing the official checklist
- Submission-facing wording without local or server file paths

## Manual fields

- `Corresponding author(s)`
  中文：请按稿件作者信息手动填写
  English: Fill in based on the manuscript author list

- `Last updated by author(s)`
  中文：建议填写 `2026-03-25`
  English: Recommended entry: `2026-03-25`

## 1. Availability and reproducibility of Code and Data

- `Code will be included in a CodeOcean capsule`
  建议：`No`
  English: `No`

- `The source code is included in the submission or available in a public repository`
  建议：`No`
  English: `No`

- `A test dataset and instructions/scripts for replicating the results are included in the submission or available in a public repository`
  建议：`Yes`
  中文说明：提交材料中包含用于复现主要原子尺度模拟流程的输入结构、模型文件、脚本和代表性输出结果
  English text:
  `Input structures, model files, simulation scripts, and representative output data required to reproduce the reported atomistic tests are provided in the submission materials.`

- `A Readme file with instructions for installing and running the code is included in the submission or available in a public repository`
  建议：`Yes`
  中文说明：提交材料中包含说明目录结构和运行方式的说明文件
  English text:
  `A README-style document describing the directory structure, model files, and simulation folders is included in the submission materials.`

- `The code is made available to reviewers during review`
  建议：`Yes`
  中文说明：相关代码、模型、输入结构、脚本和代表性输出将随提交材料提供给审稿人
  English text:
  `The code, model files, input structures, simulation scripts, and representative output data are included in the submission materials and are made available to reviewers during review.`

- `Pretrained models are used in the study and accessible through`
  建议：`No`
  English: `No`

- `Pretrained models are used in the study and are not accessible`
  建议：`No`
  English: `No`

- `The paper contains information on how to obtain code and data after publication`
  建议：`Yes`
  中文说明：稿件中建议保留数据/代码获取方式说明
  English text:
  `The code, model files, and supporting simulation data are described in the manuscript and supplementary materials and will remain available from the corresponding authors after publication.`

## 2. Datasets

- `2A. All data sources are listed in the paper`
  建议：`Yes`
  English text:
  `The study uses DFT-labeled Bi-Te configurations together with DPGEN/DeepMD-generated atomistic simulation inputs and outputs derived from the Bi2Te3 system. The relevant data-generation workflow and data sources are described in the Methods and Supplementary Information.`

- `2B. The train, test and validation datasets are publicly available, and links/accession numbers have been provided`
  建议：`Yes`
  中文说明：训练/验证/测试相关数据将随提交材料和补充材料一并提供
  English text:
  `The train/validation/test-related data, together with the associated model files, scripts, and simulation folders, are provided in the submission and supplementary materials for reviewer access and reproducibility.`

- `2C. We have reported and discussed potential dataset biases in the paper`
  建议：`Yes`
  English text:
  `Potential bias arises from limited coverage of configuration space in composition, strain, temperature, and defect environments. To mitigate this, the training workflow was expanded across distorted structures, multiple temperatures, and defect-containing local environments, and iteratively enriched using model-deviation-guided active learning.`

- `2D. The data cleaning and preprocessing steps are clearly and fully described`
  建议：`Yes`
  English text:
  `The preprocessing steps include generation of initial Bi2Te3 structures, construction of supercells, DFT labeling of representative configurations, DPGEN-based workflow generation, and preparation of deformation, melting, bending, and related MD inputs. The submission materials include the corresponding configuration files and run scripts.`

- `2E. Instances of combining data from multiple sources are clearly identified`
  建议：`Yes`
  English text:
  `The study combines first-principles-labeled reference configurations with machine-learning-potential-driven exploration and subsequent atomistic simulations. The integration of these data sources is explicitly reflected in the DFT/DPGEN/DeepMD/LAMMPS workflow and is controlled through iterative retraining and model-deviation checking.`

## 3. Model and training

- `3A. What model architecture is the current model based on`
  建议填写：
  `A Deep Potential machine-learning interatomic potential implemented in DeepMD-kit and organized through the DPGEN workflow.`

- `3B. A Model Card is provided`
  建议：`Yes`
  中文说明：提交材料中包含模型说明卡
  English text:
  `A model card describing the Bi2Te3 Deep Potential model, its intended use, data scope, workflow files, and known limitations is provided in the submission materials.`

- `3C. The model clearly splits data into training, validation, and testing sets`
  建议：`Yes`
  English text:
  `The submitted materials distinguish training and validation data within the DeepMD-kit workflow, and separate held-out evaluation data and downstream simulation outputs are provided in the submission materials for testing and reproducibility.`

- `3D. The method of data splitting is clearly stated`
  建议：`Yes`
  English text:
  `The workflow distinguishes training and validation data within the DeepMD-kit setup, while separate evaluation materials and downstream simulation outputs are included for testing and reproducibility.`

- `3E. The data splitting mimics anticipated real-world applications`
  建议：`Yes`
  English text:
  `The submitted materials combine model development data with separate downstream evaluation outputs intended to reflect the practical atomistic simulation tasks studied in the manuscript.`

- `3F. The data splitting procedure has been chosen to avoid data leakage`
  建议：`Yes`
  English text:
  `Training/validation separation is maintained within the DeepMD-kit workflow, and evaluation is based on separate packaged outputs used for reproducibility and downstream testing.`

- `3G. The interpretability of the model has been studied and clearly validated`
  建议：`No`
  English text:
  `The present work focuses on atomistic prediction and downstream mechanical-response simulations rather than model interpretability analysis.`

## 4. Evaluation

- `4A. The performance metrics used are described and justified in the paper`
  建议：`Yes`
  English text:
  `The work evaluates the model and downstream simulations using physically meaningful quantities, including stress-strain response, load-displacement behavior, and property-related outputs such as EOS, elastic response, vacancy-related calculations, and gamma-surface-related calculations.`

- `4B. Cross-validation of the results is included`
  建议：`No`
  English text:
  `The present study is not organized as a conventional supervised-learning benchmark in which k-fold or repeated cross-validation is the primary evaluation strategy. Instead, the model is assessed through its ability to support reproducible physics-based atomistic simulations across multiple downstream tasks and conditions relevant to the Bi2Te3 system.`

- `4C. Community-accepted benchmark datasets/tasks are used for comparisons`
  建议：`No`
  English text:
  `To our knowledge, there is no broadly adopted community benchmark dataset or standardized benchmark task for this specific Bi2Te3-focused machine-learning interatomic-potential application. The work is therefore evaluated against physically meaningful downstream simulation tasks rather than against a community benchmark leaderboard.`

- `4D. Baseline comparisons to simple/trivial models are provided`
  建议：`No`
  English text:
  `The objective of the study is to construct and deploy a task-specific machine-learning interatomic potential for atomistic simulation, rather than to compare predictive accuracy against simplified statistical baselines. Validation is instead performed through downstream physical simulation behavior and reproducibility of the target materials tasks.`

- `4E. Benchmarks with current state-of-the-art are provided`
  建议：`No`
  English text:
  `The study addresses a specialized Bi2Te3 atomistic-simulation problem for which a single accepted state-of-the-art benchmark protocol is not currently established. Accordingly, evaluation is based on domain-relevant physical simulation outputs rather than on comparisons to a standardized state-of-the-art benchmark suite.`

- `4F. Ablation experiments are included`
  建议：`No`
  English text:
  `The present work is focused on building a usable and reproducible machine-learning interatomic potential for the target materials system, rather than on dissecting architecture components through ML-style ablation studies. The key validation criterion is whether the resulting potential supports the intended atomistic simulations and downstream mechanical analyses.`

- `4G. The model has been tested on a fully independent dataset`
  建议：`No`
  English text:
  `The submitted materials do not define a separate fully independent benchmark dataset in the sense commonly used for general supervised-learning tasks. Instead, robustness is examined through separate downstream simulation outputs, multiple task settings, and distinct physical conditions relevant to the intended Bi2Te3 applications.`

对 4B-4G 的统一说明 / Shared wording for 4B-4G:

`The submission materials support reproducible atomistic simulations and workflow metadata, but the study is not framed as a conventional supervised-learning benchmark paper. For this specialized Bi2Te3 machine-learning interatomic-potential application, evaluation is centered on physically meaningful downstream simulation tasks and reproducibility across relevant conditions, rather than on k-fold cross-validation, community benchmark leaderboards, simple statistical baselines, standardized state-of-the-art benchmark suites, or a separately curated independent benchmark dataset.`

## 5. Computational resources

- `5A. The paper contains information on hardware/computing resources that were used`
  建议：`Yes`
  English text:
  `The computational workflow uses DPGEN/DeepMD/LAMMPS/VASP under a Slurm-managed environment. Training was performed on A100 GPUs, model-deviation and molecular-dynamics runs were performed on A100 GPUs, and first-principles VASP calculations were run as single-task jobs on a single Intel CPU node using 64 cores.`

- `5B. The paper includes information on the computational costs in terms of computation time, parallelization or carbon footprints estimates`
  建议：`Yes`
  English text:
  `The computational settings are based on the DPGEN and DeepMD-kit workflow configuration. The total training time for the potential was approximately 4 days, the LAMMPS model-deviation and molecular-dynamics calculations required approximately 4 days in total, and the first-principles VASP calculations required approximately 50 days in total.`

## English supporting paragraph

`We constructed a Deep Potential machine-learning interatomic potential for the Bi-Te system using the DPGEN-DeepMD workflow. The materials provided to reviewers contain the model files, workflow metadata, representative input structures, and simulation scripts required to reproduce the reported atomistic calculations, including relaxation, EOS, elastic, vacancy, gamma-surface, melting, bending, and deformation tests. The machine configuration explicitly records the training, model-deviation, and first-principles execution environments. Because the present study is centered on physics-based atomistic simulation rather than supervised predictive benchmarking, formal public train/validation/test splits, ablation studies, benchmark-dataset comparisons, and broader model-card benchmarking are not included. Potential bias associated with limited configuration-space coverage was mitigated by covering multiple structural perturbations, temperatures, and defect-related environments and by using an iterative model-deviation-guided workflow.`

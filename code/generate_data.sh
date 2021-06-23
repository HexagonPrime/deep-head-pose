#!/bin/bash -l
#SBATCH --output=1gpu.out
#SBATCH --mem=40G
#SBATCH --gres=gpu:1
#SBATCH --constrain='titan_xp|geforce_gtx_1080_ti'

source /scratch_net/biwidl306/shecai/conda/etc/profile.d/conda.sh
conda activate pi-gan
python test_hopenet_celeba.py
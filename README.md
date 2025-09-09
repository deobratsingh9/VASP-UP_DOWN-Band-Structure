Spin-Resolved Band Structure & PDOS – VASP Post-Processing

This repository contains input files, calculation outputs, and post-processing scripts to generate spin-up & spin-down band structures and projected density of states (PDOS) for layered materials using VASP and Sumo.

Workflow: Input → Calculations → Output → Plot
1. Input
Structure files (POSCAR)
INCAR, KPOINTS, POTCAR for spin-polarized calculations

2. Calculations
Run standard VASP self-consistent (SCF) and non-self-consistent (NSCF) calculations:
SCF → vasp_std (ground state)
NSCF → vasp_std (band structure path)

3. Output
Key files generated:
EIGENVAL – band eigenvalues
DOSCAR – density of states
PROCAR – orbital projections

4. Post-Processing (with Sumo)
We use Sumo
 to plot spin-resolved band structures.

🔧 Requirements:

Python 3.6+ (Sumo does not support Python 2)
NumPy, SciPy, Matplotlib
ASE, pymatgen
⚙️ Conda Environment Setup

To ensure compatibility, create a fresh environment:
# Create environment
conda create -n vasp-sumo python=3.9 -y
# Activate environment
conda activate vasp-sumo
# Install dependencies
conda install numpy scipy matplotlib ase pymatgen -c conda-forge -y
# Install sumo
pip install sumo

✅ Now you’re ready to use Sumo!

Run band structure plotting:
sumo-bandplot --spin -1 --zero-line --ymin -4 --ymax 4
Example Output (High-Symmetry Path)
0.0000 → Γ
0.7157 → Y
0.9977 → S
1.7134 → X
1.9954 → Γ

Repository Contents
inputs/ → VASP input files (INCAR, KPOINTS, POSCAR, POTCAR)
outputs/ → Example VASP outputs (EIGENVAL, DOSCAR, PROCAR)
plots/ → Spin-resolved band structures & PDOS figures
scripts/ → Post-processing scripts and commands

Usage

Clone the repository and follow along with the tutorial:
git clone https://github.com/deobratsingh9/repo-name.git
cd repo-name


Run band structure plotting:
sumo-bandplot --spin -1 --zero-line --ymin -4 --ymax 4
Spin-Resolved Band Structure Plotting with Sumo

Once VASP calculations are done, you can use Sumo to plot spin-resolved band structures.

Spin-Down Bands (↓):
sumo-bandplot --spin -1 --zero-line --ymin -4 --ymax 4

Spin-Up Bands (↑):
sumo-bandplot --spin 1 --zero-line --ymin -4 --ymax 4

Combined Spin-Up & Spin-Down in One Plot:
sumo-bandplot --spin both --zero-line --ymin -4 --ymax 4

Save Output as PDF (instead of PNG):
sumo-bandplot --spin both --zero-line --ymin -4 --ymax 4 --format pdf

Custom Colors for Spin Channels:
sumo-bandplot --spin both --zero-line --ymin -4 --ymax 4 --colors red blue

Adjust Line Thickness:
sumo-bandplot --spin both --zero-line --ymin -4 --ymax 4 --linewidth 2

Tutorial
Full video walkthrough available here:
👉 YouTube Tutorial: https://youtu.be/K1QZc-lYbRQ?si=cWy0kEfSuEJdtEb5

Keywords
VASP · DFT · Spintronics · Band Structure · PDOS · Layered Materials · Sumo · Post-processing

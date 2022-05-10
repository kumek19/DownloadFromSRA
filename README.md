# DownloadFromSRA

Bash script for downloading sequences from NCBI's Sequence Read Archive (SRA)

## Reuirement

SRA Toolkit 
(https://github.com/ncbi/sra-tools) 

pigz
```bash
sudo apt install pigz
```

## Usage

Prepare SRA_list.txt (SRA ID in each line).
```bash
./DownloadFromSRA.sh
```
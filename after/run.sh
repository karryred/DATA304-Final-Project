#!/bin/bash

# 1. 의존성 설치
echo "--- Step 1: Installing Dependencies ---"
pip install -r requirements.txt

# 2. 누락될 수 있는 출력 디렉토리 강제 생성
echo "--- Step 2: Ensuring Directory Structure ---"
mkdir -p ../after

# 3. 노트북 실행 (타임아웃 해제)
echo "--- Step 3: Running train_8th.ipynb ---"
echo "Note: Training may take over 1 hour. Starting now..."

# 현재 after 폴더에 있는 train_7th.ipynb를 실행합니다.
jupyter nbconvert --to notebook --execute train_7th.ipynb --ExecutePreprocessor.timeout=-1 --output executed_result.ipynb

echo "--------------------------------------------------"
echo "✅ Success! Final results are generated."
echo "Check '1220.csv' in this folder."
echo "--------------------------------------------------"
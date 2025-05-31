:: Use python 3.12.9
:: Create virtual environment
pip install virtualenv
virtualenv -p python3.12.9 python_embeded

::::::::::::::::::::::::::::::::
:: Install external dependencies
::::::::::::::::::::::::::::::::
git clone https://github.com/comfyanonymous/ComfyUI.git

:: comfy
python_embeded\Scripts\pip install --upgrade pip setuptools wheel
python_embeded\Scripts\pip install -r requirements.txt

:: pyarrow
python_embeded\Scripts\pip install https://files.pythonhosted.org/packages/a0/8e/9adee63dfa3911be2382fb4d92e4b2e7d82610f9d9f668493bebaa2af50f/pyarrow-20.0.0-cp312-cp312-win_amd64.whl

:: sentencepiece
python_embeded\Scripts\pip install https://files.pythonhosted.org/packages/c6/97/d159c32642306ee2b70732077632895438867b3b6df282354bd550cf2a67/sentencepiece-0.2.0-cp312-cp312-win_amd64.whl

:: reinstall torch 2.8
python_embeded\Scripts\pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128

:: flash attn (check if already installed just in case of reisntall)
python_embeded\Scripts\pip show flash-attn >nul 2>&1 || (
    echo flash-attn not found, installing...
    python_embeded\Scripts\pip install https://huggingface.co/datasets/siraxe/PrecompiledWheels_Torch-2.8-cu128-cp312/resolve/main/flash_attn-2.7.4.post1-cp312-cp312-win_amd64.whl
)

:: triton
python_embeded\Scripts\pip install triton-windows

:: bagel DF11
git clone https://github.com/SUP3RMASS1VE/Bagel-DFloat11-fork.git
:: Replace file
copy /Y app.py Bagel-DFloat11-fork

:: manager
cd ComfyUI
cd custom_nodes
git clone https://github.com/Comfy-Org/ComfyUI-Manager.git
git clone https://github.com/neverbiasu/ComfyUI-BAGEL.git

:: Download DF11 model
cd..
cd models
mkdir bagel
cd bagel
git clone --depth 1 https://huggingface.co/DFloat11/BAGEL-7B-MoT-DF11

pause

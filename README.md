# ComfyUI-Bagel

## Description
This is a ComfyUI distribution with a Bagel 1-click install, based on:
- [neverbiasu/ComfyUI-BAGEL](https://github.com/neverbiasu/ComfyUI-BAGEL)
- [SUP3RMASS1VE/Bagel-DFloat11-fork](https://github.com/SUP3RMASS1VE/Bagel-DFloat11-fork)

**Environment Details:**
- Python: 3.12.9
- Torch: 2.8.0
- CUDA: 12.8 (cu128)

## Instructions
1. Run `python_embeded_setup.bat` to set up the environment.(and download BAGEL-7B-MoT-DF11 model)
2. Then use `run_comfy.bat` or `run_gradio.bat` to start the application.

## Disclaimer
Only DF11 works for some reason

Kornia currently errors out with Flash_attn cu128 on comfyui startup. The exact cause is unknown but it still works

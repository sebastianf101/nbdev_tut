#! /bin/bash
### SF, 202210
### Ref: https://stackoverflow.com/questions/55507519/python-activate-conda-env-through-shell-script/58081608#58081608
### <<< Jupyter Lab Startup
### Jupyter Lab in dev-tut environ
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
# Activo el entorno fastai
conda activate fastai
### Needed for jupyter-git extension
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
### Jupyter Startup >>>
jupyter notebook --ip=0.0.0.0 --port=2025

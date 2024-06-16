#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
[[ -d "${SCRIPT_DIR}/.venv" ]] || python -m venv "${SCRIPT_DIR}/.venv" # Make sure venv exists
. "${SCRIPT_DIR}/.venv/bin/activate"

pip install -r requirements.txt

jupyter notebook HomeMatch.ipynb

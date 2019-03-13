kill -TERM $(pgrep gunicorn)

if [[ -d "$PWD/venv" ]]; then
    rm -rf "$PWD/venv"
fi

python3 -m venv venv
venv/bin/pip install -r requirements.txt

venv/bin/gunicorn \
    --daemon \
    --workers 4 \
    --error-logfile ./error-log.log \
    --reload \
    hello-world:app

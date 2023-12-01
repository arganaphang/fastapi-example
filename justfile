env-create:
  python3 -m venv venv
env-activate:
  source ./venv/bin/activate.fish
env-deactivate:
  deactivate
run-dev:
  uvicorn main:app --reload
deps-out:
  pip freeze > requirements.txt
deps-in:
  pip install -r requirements.txt
test-load:
  hey -n 100 -c 20 "http://localhost:8000"
test-api:
  curl -s "http://localhost:8000/" | jq
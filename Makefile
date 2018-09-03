install:
	pip install -r requirements.txt

migrate:
	bash scripts/migrate.sh
	python manage.py syncdb

install:
	pip install -r requirements.txt

migrate:
	bash migrate.sh
	python manage.py syncdb

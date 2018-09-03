bash scripts/comment_zinnia.sh
python manage.py  makemigrations
python manage.py migrate
bash scripts/uncomment_zinnia.sh

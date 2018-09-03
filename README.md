Guild website for <earthquake> US-Sargeras

Getting Set Up
--------------

- Clone this project, and place it in a friendly place.
- ``cd earthquake.pw``
- Make sure you have pip installed, then run 'pip install -r requirements.txt'

NOTE: Due to some bugs with zinnia, we have to comment out zinnia's modules before migrating using the following script:

- run ``bash migrate.sh``

Now, we can move on to setting up the django superuser and running the server

- Create a superuser via ``python manage.py createsuperuser``
- run the server with ``python manage.py runserver``
- access the site at ``localhost:8000`` in your web browser

gl;hf

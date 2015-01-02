Guild website for <Clockwork> US-Sargeras

Getting Set Up
--------------

- Clone this project, and place it in a friendly place.
- ``cd clockwork.pw``
- Make sure you have pip installed, then run 'pip install -r requirements.txt'

NOTE: zinnia's migrations are buggy at the moment, so we have to follow the following steps to bypass the errors:

- Open up the following files in your favorite editor from the project root, and comment out anything related to 'zinnia' or 'blog'::
  - clockwork/settings.py
  - clockwork/urls.py
- Once the commenting out is complete, run ``python manage.py migrate`` to initialize the database
- Uncomment everything you commented in ``clockwork/urls.py`` and ``clockwork/settings.py`` to load the zinnia app
- Create a superuser via ``python manage.py createsuperuser``
- run the server with ``python manage.py runserver``
- access the site at ``localhost:8000`` in your web browser

gl;hf

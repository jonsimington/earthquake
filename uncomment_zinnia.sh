cd clockwork

# comment urls
mv urls.py urls.py.old
curl -O https://raw.githubusercontent.com/jonsimington/earthquake/master/clockwork/urls.py

# comment settings
mv settings.py settings.py.old
curl -O https://raw.githubusercontent.com/jonsimington/earthquake/master/clockwork/settings.py

rm urls.py.old
rm settings.py.old

cd ../earthquake

# comment urls
mv urls.py urls.py.old
curl -O https://raw.githubusercontent.com/jonsimington/earthquake/master/earthquake/urls.py

# comment settings
mv settings.py settings.py.old
curl -O https://raw.githubusercontent.com/jonsimington/earthquake/master/earthquake/settings.py

rm urls.py.old
rm settings.py.old

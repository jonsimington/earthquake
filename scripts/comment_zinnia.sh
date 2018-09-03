cd ../earthquake

# comment urls
mv urls.py urls.py.old
curl -O https://gist.githubusercontent.com/jonsimington/56c848b94761e6340516960d9b841a14/raw/32d5ee21a358fa288c30169c7588568995780832/urls.py

# comment settings
mv settings.py settings.py.old
curl -O https://gist.githubusercontent.com/jonsimington/70bad68de0889de7cf59820c50e5c0c5/raw/9bdd59736e64322d69d6aabe123be772220f2e2d/settings.py

rm urls.py.old
rm settings.py.old

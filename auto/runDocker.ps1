docker build -t pyadmin .
docker tag pyadmin jvcss/pyadmin
docker login
docker push jvcss/pyadmin
docker pull jvcss/pyadmin
docker volume create --name pyadmin-volume
docker run --name pyadmin-test -v pyadmin-volume:/code -p 8000:8000 -d jvcss/pyadmin
docker cp pyadmin-test:/code ~/code
docker rm -f jvcss-test
docker run --name jvcss-test -v ~/code:/code -p 8000:8000 -d jvcss/pyadmin
docker exec jvcss-test python manage.py
rm -r .git
git init
git add .
git config user.name 'fwfwf'
git config user.email 'wfwfw@gmail.com'
git commit -m 'fwfwfw'
heroku destroy limitg
heroku create limitg
heroku git:remote limitg
heroku config:set DISABLE_COLLECTSTATIC=1
git push heroku master


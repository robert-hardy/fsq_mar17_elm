APPNAME=${1:-AppMain}
elm-make app/frontend/"$APPNAME"/App.elm --output app/static/app.js && python run.py $APPNAME

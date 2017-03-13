from flask import (
    jsonify,
    render_template
)
import sys


from app.flasky import app


appname = sys.argv[1]


@app.route('/')
def homepage():
    return render_template(
        'index.html',
        appname=appname
    )


@app.route('/list-of-strings')
def get_list_of_strings():
    lst = [
        'Hello',
        'Buongiorno',
        'Bonjour'
    ]
    return jsonify(
        {
            'result': lst
        }
    )


@app.route('/echo/<word>')
def reply(word):
    word_pairs = {
        'hello': 'goodbye',
        'buongiorno': 'arrivederci',
        'buonjour': 'aurevoir'
    }
    reply = word_pairs.get(word.lower(), None)
    if not reply:
        return jsonify ({
            'result': 'The server does not know how to reply to this word.'
        })

    response = "You said '{0}', the server says '{1}'.".format(
            word,
            reply.title()
    )
    return jsonify ({
        'result': response
    })



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)

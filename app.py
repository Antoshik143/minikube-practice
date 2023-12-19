from flask import (
    Flask,
    Response,
)

app = Flask(__name__)

@app.route('/')
def index() -> Response:
    return Response(f"Hello, it's my practice!")


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/hello', methods=['POST'])
def hello_world():
    return jsonify(message="Hillo............ HYLLO helle, he hee, World!")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

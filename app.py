
from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

@app.route('/chat', methods=['POST'])
def chat():
    user_input = request.json.get('message')
    response = f"Bot reply to: {user_input}"
    return jsonify({'response': response})

if __name__ == '__main__':
    app.run(debug=True)

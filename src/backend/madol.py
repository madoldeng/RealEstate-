from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

@app.route('/alabama-data', methods=['GET'])
def alabama_data():
  # Connect to the database
  cnx = mysql.connector.connect(user='username',
                                password='password',
                                host='host',
                                database='database')

  # Create a cursor object
  cursor = cnx.cursor()

  # Select the state data from the table
  query = 'SELECT * FROM states WHERE name = %s'
  cursor.execute(query, ('Alabama',))

  # Fetch the data from the cursor
  state_data = cursor.fetchone()

  # Close the cursor and connection
  cursor.close()
  cnx.close()

  # Send the state data as a JSON object in the response
  return jsonify(state_data)
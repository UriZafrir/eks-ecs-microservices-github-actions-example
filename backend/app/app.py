from flask import Flask, jsonify
import pymysql
import os

app = Flask(__name__)

# Get RDS configuration
rds_host = "example-rds"  
rds_port = 3306
#rds_user = "os.environ['rds_user']"
rds_user = "example-user"  
#rds_password = "os.environ['rds_password']"  
rds_password = "example-password"
rds_db = "example-db"

# Define a route for your endpoint
@app.route('/query', methods=['GET'])
def get_employees():
    # Connect to RDS
    connection = pymysql.connect(
        host=rds_host,
        port=rds_port,
        user=rds_user,
        password=rds_password,
        database=rds_db
    )

    # Execute a sample query
    with connection.cursor() as cursor:
        sql = "SELECT * FROM employees"
        cursor.execute(sql)
        result = cursor.fetchall()

    # Close the connection
    connection.close()

    # Return the result as JSON
    return jsonify(result)

# Run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)

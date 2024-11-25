#!/bin/bash

# Run the SQL query to check if 'user_0d_1' exists
USER_EXISTS=$(mysql -hlocalhost -uroot -p -N -e "SELECT COUNT(*) FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost';")

# If the user doesn't exist, create the user and grant privileges
if [ "$USER_EXISTS" -eq 0 ]; then
  echo "user_0d_1 doesn't exist. Creating user..."
  mysql -hlocalhost -uroot -p -e "CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';"
  mysql -hlocalhost -uroot -p -e "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;"
  mysql -hlocalhost -uroot -p -e "FLUSH PRIVILEGES;"
else
  echo "user_0d_1 exists."
fi

#!/bin/bash

# Run the MySQL query to check if the user exists
USER_EXISTS=$(mysql -hlocalhost -uroot -p -N -e "SELECT COUNT(*) FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost';")

# If the user doesn't exist, create it and grant privileges
if [ "$USER_EXISTS" -eq 0 ]; then
  echo "user_0d_1 doesn't exist"
  mysql -hlocalhost -uroot -p -e "CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';"
  mysql -hlocalhost -uroot -p -e "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;"
  mysql -hlocalhost -uroot -p -e "FLUSH PRIVILEGES;"
else
  echo "user_0d_1 exists"
fi


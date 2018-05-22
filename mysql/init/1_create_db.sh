cd /docker-entrypoint-initdb.d/

user='root'
pass='root'

charset='utf8mb4'
collate='utf8mb4_general_ci'

echo "create db:sample-app..."
mysql -u $user -p$pass -e "create database sample-app;"
mysql -u $user -p$pass -e "ALTER DATABASE sample-app CHARACTER SET = $charset COLLATE = $collate;"

echo "create db:sample-app_development..."
mysql -u $user -p$pass -e "create database sample-app_dev;"
mysql -u $user -p$pass -e "ALTER DATABASE sample-app_dev CHARACTER SET = $charset COLLATE = $collate;"

echo "create db:sample-app_test..."
mysql -u $user -p$pass -e "create database sample-app_test;"
mysql -u $user -p$pass -e "ALTER DATABASE eigdailyschedules_test CHARACTER SET = $charset COLLATE = $collate;"

echo "done."
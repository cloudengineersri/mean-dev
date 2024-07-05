echo "stating mongodb shell installation"
sh mean-stack-example/01-mongo-db-docker-compose/01-mongodb-shell-install.sh
echo "installting node modules for express"
cd  mean-stack-example/02-node-mongodb-server/
npm install
npm audit fix
echo "installting node modules for angular"
cd ../..
cd mean-stack-example/03-angular-16-client
npm install
npm audit fix
echo "setup completed"



## Dockerized node app development environment
### with full debugging support using vscode.

### To start this container:
```sh
 $ git git@github.com:WSMathias/docker-for-nodejs-development.git
 $ cd docker-for-nodejs-development
```
 Open this folder using vscode
 **Place your code inside app folder.**
 Modify the package.json according your requirements
 ctrl+` to open terminal and run following commands
 ```sh
 $ docker-compose build
 $ docker-compose up
 ```
 
 test
 ```sh
 $ curl localhost:3000
 ```

 Select debug icon from the left side menu
 choose `Node: Nodemon` from the list next to start to debug button.

 On successfully attaching vscode debugger to node inside docker, vscode footer color will change from blue to orange.
 Now all logs will appear in vscode debug terminal.

 Debugger reattaches whenever there is a change in files.

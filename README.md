# Frontend tools docker image

**DEPRECATED, don't use it**

Delivers:
* Node JS
* npm
* Angular CLI
* Webpack
* Gulp
* Bower

## Usage

Create aliases:
```bash
alias front='docker run --rm -p 8000:8000 -v $(pwd):/opt -w /opt -u node mkordulewski/frontend-tools'
alias fronti='docker run -it --rm -p 8000:8000 -v $(pwd):/opt -w /opt -u node mkordulewski/frontend-tools'
```
You can add aliases to the `.bashrc` file.

You can run commands as follow:
```bash
front npm install
front ng serve --host 0.0.0.0 --port 8000
```

You can run container interactively and run multiple commands:
```bash
# on the host in the project directory
fronti
# inside running container (project files are shared and accessible in the /opt directory)
npm install
ng serve --host 0.0.0.0 --port 8000
```

# Versions

tag _2018-06-18_:
```
node:        10.4.1
npm:         6.1.0
ng:          6.0.8
webpack:     4.12.0
webpack-cli: 3.0.8
gulp:        3.9.1
bower:       1.8.4
```

tag _2018-02-20_:
```
node:        9.5.0
npm:         5.6.0
ng:          1.6.8
webpack:     3.11.0
gulp:        3.9.1
bower:       1.8.2
```

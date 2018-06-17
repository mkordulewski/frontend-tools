# Frontend tools docker image

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

tag _2018-02-20_:
```
node:        9.5.0
npm:         5.6.0
ng:          1.6.8
webpack:     3.11.0
gulp:        3.9.1
bower:       1.8.2
```
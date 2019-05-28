const express = require('express')
const app = express()
const port = 8000
const { exec } = require('child_process');

app.set('view engine', 'ejs')

app.use(express.static("."));

app.get('/:file', (req, res) => {
    res.render('template', {file: '../' + req.params.file})
})

app.get('/export/:file', (req, res) => {
    exp = exec('. /vagrant/export.sh ' + req.params.file, {shell: '/bin/bash'});
    
    exp.stdout.on('data', (data) => {
      console.log(`stdout: ${data}`);
    });
    
    exp.stderr.on('data', (data) => {
      console.log(`stderr: ${data}`);
    });
    
    exp.on('close', (code) => {
//      res.render('export', {file: req.params.file, code: code});
        res.download('/vagrant/export/'+req.params.file+'.zip')
    });
})


app.listen(port, () => {
    console.log(`App running on port ${port}.`)
})
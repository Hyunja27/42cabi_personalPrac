import express, {Request, Response} from 'express';
import swaggerUI from 'swagger-ui-express';
import YAML from 'yamljs';
import path from 'path';
import {getUser} from './db';


const app = express();


const swaggerSpec = YAML.load(path.join(__dirname, '../api/swagger.yaml'));
app.use('/doc', swaggerUI.serve, swaggerUI.setup(swaggerSpec));

app.use('/data', function(req, res){
    getUser().then((row) => {
        res.send(row)
    });
});




app.use(express.static(path.join(__dirname + '/../public')))

app.use('/', function(req, res){
    res.sendFile((path.join(__dirname + '/../public/index.html')))
});


app.listen(4242, () => {
	console.log('Backend Server is running on port 4242');
});

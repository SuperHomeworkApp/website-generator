const express = require('express');

const app = express();

app.use(express.static('www'));

app.get('/*', (req, res) => {
	res.redirect('/404.html');	
});

app.listen(9570, () => console.log('Listening on port 9570'));

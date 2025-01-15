'use strict';

const express = require('express');

// Constants
const PORT = process.env.PUBLIC_PORT || 80;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World!!!');
});

// Start App on port
app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
}); 

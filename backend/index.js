const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('Rehearsal Scheduler API'));
app.listen(8080, () => console.log('API running'));

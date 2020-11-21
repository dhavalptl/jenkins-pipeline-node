const express = require('express');

const app = express();
const PORT = process.env.PORT || 4000;

app.get('/hello', (req, res) => {
    res.send({
        message: 'Hello world!!'
    });
});

app.listen(PORT, () => {
    console.log(`🚀 server is running on ${PORT}`);
});
const express = require('express');
const fileUpload = require('express-fileupload');
const app = express();
const PORT = 3000;

app.use(fileUpload());

app.post('/upload_file', (req, res) => {
  if (!req.files || Object.keys(req.files).length === 0) {
    return res.status(400).send('No files were uploaded.');
  }

  let uploadedFile = req.files.uploaded_file;
  uploadedFile.mv('/home/ubuntu/uploads/' + uploadedFile.name, (err) => {
    if (err) {
      return res.status(500).send(err);
    }
    res.send('File uploaded successfully.');
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

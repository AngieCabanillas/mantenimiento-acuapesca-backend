const express = require("express");
const router = express.Router();
const path = require("path");

router.get("/dashboard/", (req, res) => {
  res.sendFile(path.join(__dirname, "../build", "index.html"));
});

router.get("/dashboard/*", (req, res) => {
  res.sendFile(path.join(__dirname, "../build", "index.html"));
});

router.get("/iniciar", (req, res) => {
  res.sendFile(path.join(__dirname, "../build", "index.html"));
});

//Esta ruta siempre va abajo
router.get("/*", (req, res) => {
  res.sendFile(path.join(__dirname, "../build", "index.html"));
});

module.exports = router;

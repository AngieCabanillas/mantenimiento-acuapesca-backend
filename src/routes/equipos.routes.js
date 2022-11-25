const express = require("express");
const router = express.Router();
const ctrlEquipos = require("../controllers/equipos.controllers");

router.get("/", ctrlEquipos.getEquipos);
router.post("/", ctrlUsuario.createEquipo);
router.put("/:id", ctrlUsuario.updateEquipo);
router.delete("/:id", ctrlUsuario.deleteEquipo);

module.exports = router;

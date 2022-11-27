var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});

router.get("/cronometro", function (req, res) {
    avisoController.cronometro(req, res);
});

router.get("/metricas", function (req, res) {
    avisoController.metricas(req, res);
});

router.get("/metricasm", function (req, res) {
    avisoController.metricasm(req, res);
});

module.exports = router;
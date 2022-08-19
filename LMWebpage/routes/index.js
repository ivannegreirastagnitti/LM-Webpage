require('dotenv').config();
var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');

/* GET home page. */
router.get('/', async function(req, res, next) {

    var novedades = await novedadesModel.getNovedades();
    
    res.render('index',{
        novedades
    });
});

router.post('/', async (req, res, next) => {

    var email = req.body.email;
    var nombre = req.body.nombre;
    var tel = req.body.tel;

    var obj ={
        to: 'ivannegreirastagnitti@gmail.com',
        subject: 'Contacto de la Web',
        html: nombre + " quiere mas información y le gustaria hablar con nosotros, este es su correo: " + email + "<br> Su telefono es: " + tel
    }
    var transporter = nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: process.env.SMTP_PORT,
        auth: {
            user: process.env.SMTP_USER,
            pass: process.env.SMTP_PASS,
        }
    });

    var info = await transporter.sendMail(obj);

    res.render('index', {
        message: 'Mensaje enviado correctamente.'
    });
});

module.exports = router;

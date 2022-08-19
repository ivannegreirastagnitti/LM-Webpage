var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel')

router.get('/', async function (req, res, next) {
    
    var novedades = await novedadesModel.getNovedades();

    res.render('admin/loged',{
        layout:'admin/layout',
        user: req.session.user,
        novedades
    });
});

router.get('/eliminar/:id', async (req, res, next) => {
    var id = req.params.id;
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/loged')
});

router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar',{
        layout:'admin/layout',
    });
});

router.post('/agregar', async (req, res, next) => {
    try{
        if(req.body.titulo != "" && req.body .subtitulo != "" && req.body.cuerpo != "") {
            await novedadesModel.insertNovedad(req.body);
            res.redirect('/admin/loged')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son obligatorios.'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se pudo agregar la novedad.'
        })
    }
})

router.get('/editar/:id', async(req, res, next) => {
    var id = req.params.id;
    var novedad = await novedadesModel.getNovedadById(id);
    res.render('admin/editar' , {
        layout: 'admin/layout',
        novedad
    });
});

router.post('/editar', async (req, res, next) => {
    try{
        //console.log(req.body.id);
        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo,
        }

        //console.log(obj)
        await novedadesModel.editarNovedadById(obj, req.body.id);
        res.redirect('/admin/loged');
    } catch (error) {
        console.log(error)
        res.render('admin/editar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se pudo modificar la novedad'
        })
    }
});


module.exports = router;
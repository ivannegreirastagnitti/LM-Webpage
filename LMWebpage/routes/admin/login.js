var express = require('express');
var router = express.Router();
var credentialsModel = require('../../models/credentialsModel')

router.get('/', function(req, res, next){
        res.render('admin/login',{
            layout:'admin/layout', 
    });
});

router.post('/', async (req, res, next) => {
    try {
        var user = req.body.user;
        var password = req.body.password;

        console.log(req.body);

        var data = await credentialsModel.getUserAndPassword (user, password);

        if (data != undefined) {
            req.session.id_user = data.id;
            req.session.user = data.user;
            req.session.password = data.id_password;
            res.redirect('/admin/loged');
        } else {
            res.render('admin/login',{
                layout: 'admin/layout',
                error: true
            })
        }
    } catch (error) {
        console.log(error)
    }
});


module.exports = router;
var avaliacaoModel = require("../models/avaliacaoModel");

function listar(req, res) {
    
    avaliacaoModel.listar()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

function cadastrar(req, res) {
    var idUsuario = req.body.idUsuario;
    var idLugar = req.body.idLugar;
    var like = req.body.like;

    console.log('dados que vem da rota', idUsuario, idLugar, like);

    if (idUsuario == undefined) {
        res.status(400).send("Seu idUsuario está undefined!");
    } else if (idLugar == undefined) {
        res.status(400).send("Seu idLugar está undefined!");
    } else if (like == undefined) {
        res.status(400).send("Seu like está undefined!");
    } else {
        
      avaliacaoModel.cadastrar(idUsuario, idLugar, like)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    cadastrar,
    listar,
}
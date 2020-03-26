import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

/*Estrutura do app, esta classe permite fazer modificações na interface*/
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
/*Aqui configura e retorna o Scaffold*/
class _HomeState extends State<Home> {

  var _frases = [
    "Enfrente os problemas e leve a melhor! Levanta, sacode a poeira, dá a volta por cima. ...",
    "Dê mais atenção ao que você tem de bom na sua vida. ...",
    "Para chegar ao topo, o que importa é começar! ...",
    "De nada adianta ter sonhos, se você não se empenhar em correr atrás. ..."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}

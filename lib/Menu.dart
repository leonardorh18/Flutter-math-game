import 'package:flutter/material.dart';
import 'package:game/operacoes/Divisao.dart';
import 'package:game/operacoes/Multiplicacao.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:game/operacoes/Soma.dart';
import 'package:page_transition/page_transition.dart';
import 'package:game/operacoes/Subtracao.dart';


class Menu extends StatefulWidget {
  

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  List operacoes = ['Multiplicação', 'Divisão', 'Soma', 'Subtração'];
  String tela ;
  void showToast() {
      Fluttertoast.showToast(
          msg: 'Opa! ta quase pronto, viu?',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white
      );
    }
    
   _go(){

   

      if (tela  == 'Multiplicação'){

       Navigator.push(context, MaterialPageRoute(builder: (context) =>  Multiplicacao()));
      }
      if (tela  == 'Divisão'){

       Navigator.push(context, MaterialPageRoute(builder: (context) =>  Divisao()));
      }
      if (tela  == 'Soma'){

       Navigator.push(context, MaterialPageRoute(builder: (context) =>  Soma()));
      }
      if (tela  == 'Subtração'){

       Navigator.push(context, MaterialPageRoute(builder: (context) =>  Subtracao()));
      }
      
    

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raciocínio Lógico"),
      ),
      body: ListView.builder(
        itemCount: operacoes.length,
        itemBuilder: (context, index){

          return Padding(
            padding: EdgeInsets.fromLTRB(20, 15,20, 20),
            child: InkWell(
            onTap: (){
              setState(() {
                tela = operacoes[index];
                _go();
              });
            },
            child: Container(
              width: 300,
              height: 150,
            decoration: const BoxDecoration(
               borderRadius: BorderRadius.all(
                   Radius.circular(40.0),
                  ),
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(72,61,139,1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[

                  SizedBox(
                    height: 130 ,
                    width: 130,
                    child: Image.asset('imagens/calculator.png', fit: BoxFit.fill,), 

                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child:  Text(operacoes[index],
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  )
               
                  


              ],
            ),
          ),
        ),
            
           
         
        );

        }),
       
         


        
      );
    
  
  }
}
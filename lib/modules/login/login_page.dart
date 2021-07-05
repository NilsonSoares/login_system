import 'package:flutter/material.dart';
import 'package:login_system/shared/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset("images/login.png"),
              Text(
              "Entre ou Registre-se",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.deepPurple
              ),),
              SizedBox(height: 16,),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.deepPurple),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.deepPurple
                          )
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red
                          ),                          
                        ), 
                        labelText: "Email",
                        hintText: "exemplo@exemplo.com.br",
                        prefixIcon: Icon(Icons.mail,
                        color: Colors.deepPurple,)                        
                      ),
                      validator: (String? value) => Validators.validateEmail(value),
                    ),
                    SizedBox(height: 16,),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.deepPurple),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.deepPurple
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red
                          ),                          
                        ),                       
                        prefixIcon: Icon(Icons.lock,
                        color: Colors.deepPurple,)                        
                      ),
                      validator: (String? value) => Validators.validatePassword(value),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Esqueci a senha",
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //Flex(direction: Axis.horizontal)
                        Expanded(
                          child: OutlinedButton(
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, "/register");
                            },
                            child: Text(
                              "Registre-se"
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.deepPurple)
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: (){
                              if(_formKey.currentState!.validate()){
                                Navigator.pushReplacementNamed(context, "/home");
                              };
                            },
                            child: Text(
                              "Entrar"
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.deepPurple)
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
        
            ],      
          ),
        ),
      ),
    );
  }
}
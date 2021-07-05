import 'package:flutter/material.dart';
import 'package:login_system/shared/validators.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _passwordController = TextEditingController();

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
              "Registre-se",
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
                      keyboardType: TextInputType.name,
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
                        labelText: "Nome",
                        hintText: "Digite o seu nome",
                        prefixIcon: Icon(Icons.account_circle,
                        color: Colors.deepPurple,)                        
                      ),
                      validator: (String? value) => Validators.validateName(value),
                    ),
                    SizedBox(height: 16,),
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
                      controller: _passwordController,
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
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Confirmar senha",
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
                      validator: (String? value) => Validators.validateConfirmPassword(value, _passwordController.text),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //Flex(direction: Axis.horizontal)
                        Expanded(
                          child: OutlinedButton(
                            onPressed: (){
                              Navigator.canPop(context);
                            },
                            child: Text(
                              "Cancelar"
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
                                Navigator.pushReplacementNamed(context, "/login");
                              };
                            },
                            child: Text(
                              "Salvar"
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
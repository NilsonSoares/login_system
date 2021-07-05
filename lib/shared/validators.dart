class Validators {

  static String? validateEmail(String? email) {
    var emailPatter = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if(email!.isEmpty){
      return "O campo de email deve ser preenchido!";
    }
    else if(!emailPatter.hasMatch(email)){
      return "e-mail inválido";
    }
    else {
      return null;
    }
  }

  static String? validateName(String? name) {
    var namePattern = RegExp('^[a-zA-Z]');
    if(name!.isEmpty){
      return "O campo nome deve ser preenchido";
    }
    else if(!namePattern.hasMatch(name)){
      return "Nome inválido!";
    }
    else{
      return null;
    }
  }

  static String? validatePassword(String? password) {
    if(password!.isEmpty){
      return "O campo senha deve ser preenchido";
    }
    else if(password.length < 8){
      return "A senha deve conter no mínimo 8 caracteres";
    }
    else{
      return null;
    }
  }

  static String? validateConfirmPassword(String? confirmPassword, String? password) {
    if(confirmPassword!.isEmpty){
      return "O campo confirmar senha deve ser preenchido";
    }
    else if(password != confirmPassword){
      return "As senhas devem ser iguais";
    }
    else{
      return null;
    }
  }

}
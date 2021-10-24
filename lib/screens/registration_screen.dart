import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final firstNameEditingController = TextEditingController();
  final secondNameEditingController = TextEditingController();
  final emailNameEditingController = TextEditingController();
  final passwordNameEditingController = TextEditingController();
  final confirmPasswordNameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery
              .of(context)
              .size
              .width,
          onPressed: () {
            //Navigator.of(context)
            //singUp(emailNameEditingController.text, passwordNameEditingController.text);

          },
          child: Text(
            "SignUp",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),);


    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        RegExp regex = RegExp(r'^.{2,}$');
        if (value!.isEmpty) {
          return ("First name cannot be Empty");
        }
        {
          if (!regex.hasMatch(value)) {
            return ("Enter Valid name(Min. 2 Character");
          }
        }
        return null;
      },
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("First name cannot be Empty");
        }
      },
      onSaved: (value) {
        secondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Second Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailNameEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp(
            r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""")
            .hasMatch(value)) {
          return ("Please enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordNameEditingController,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        RegExp regex = RegExp(r'^.{8,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        {
          if (!regex.hasMatch(value)) {
            return ("Please Enter Valid Password(Min. 6 Character");
          }
        }
      },
      onSaved: (value) {
        passwordNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.https),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordNameEditingController,
      obscureText: true,


      validator: (value) {
        if (confirmPasswordNameEditingController.text!= passwordNameEditingController.text){
          return "Password don`t match";
        }
        return null;
      },

      onSaved: (value) {
        confirmPasswordNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.https),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back, color: Colors.red,),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SizedBox(
                                  height: 150,
                                  child: Image.asset("assets/nwet_logo.jpg",
                                      fit: BoxFit.contain)),
                            ),
                            SizedBox(height: 25),
                            firstNameField,
                            SizedBox(height: 15),
                            secondNameField,
                            SizedBox(height: 15),
                            emailField,
                            SizedBox(height: 15),
                            passwordField,
                            SizedBox(height: 15),
                            confirmPasswordField,
                            SizedBox(height: 15),
                            signUpButton,
                            SizedBox(height: 15),
                          ],
                        )),
                  ))),
        ));
  }

}
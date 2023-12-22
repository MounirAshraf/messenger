import 'package:flutter/material.dart';

import '../../shared/componants/componants.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailControlar = TextEditingController();

  var passwordControlar = TextEditingController();

  bool isPassword = true ;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defultFormFeild(
                      controler: emailControlar,
                      textInputType: TextInputType.emailAddress,
                      validate: (value){
                        if(value == null || value.isEmpty)
                        {
                          return 'email must be not empity';
                        };
                        return null ;
                      },
                      labelText: 'Email Address',
                      prefixIcon: Icons.mail
                  ),
                  // TextFormField(
                  //   controller: emailControlar,
                  //   keyboardType: TextInputType.emailAddress,
                  //   // onFieldSubmitted: (value)
                  //   // {
                  //   //   print(value);
                  //   // },
                  //   // onChanged: (value)
                  //   // {
                  //   //   print(value);
                  //   // },
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'email must be not empty';
                  //     }
                  //     return null;
                  //   },
                  //   decoration: InputDecoration(
                  //     labelText: 'Email Address',
                  //     prefixIcon: Icon(
                  //       Icons.email,
                  //     ),
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defultFormFeild(
                      controler: passwordControlar,
                      textInputType: TextInputType.visiblePassword,
                      isPassword: isPassword,
                      validate:  (value) {
                        if (value == null || value.isEmpty) {
                          return 'password must be not empty';
                        }
                        return null;
                      },
                      labelText: 'Password',
                      prefixIcon:  Icons.lock ,
                      suffixIcon:  isPassword ? Icons.visibility_off  : Icons.visibility ,
                      sufixPressed: (){
                        setState(() {
                          isPassword = !isPassword ;
                        });
                      }
                  ),
                  // TextFormField(
                  //   controller: passwordControlar,
                  //   keyboardType: TextInputType.visiblePassword,
                  //   obscureText: true,
                  //   // onFieldSubmitted: (value)
                  //   // {
                  //   //   print(value);
                  //   // },
                  //   // onChanged: (value)
                  //   // {
                  //   //   print(value);
                  //   // },
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'password must be not empty';
                  //     }
                  //     return null;
                  //   },
                  //   decoration: InputDecoration(
                  //     labelText: 'Password',
                  //     prefixIcon: Icon(
                  //       Icons.lock,
                  //     ),
                  //     suffixIcon: Icon(
                  //       Icons.remove_red_eye,
                  //     ),
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defultButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Processing Data'),
                          ));
                        }
                        ;
                      },
                      text: 'LOgin'),
                  SizedBox(
                    height: 10.0,
                  ),
                  defultButton(
                    text: 'REgester',
                    textIsUpperCase: false,
                    function: () {
                      print('Regester button');
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account? '),
                      TextButton(
                        onPressed: () {},
                        child: Text('Register Now'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

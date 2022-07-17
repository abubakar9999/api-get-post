import 'package:api_request/post%20api/fatchapi.dart';
import 'package:api_request/post%20api/token.dart';
import 'package:flutter/material.dart';



class Registation extends StatefulWidget {
  const Registation({Key? key}) : super(key: key);

  @override
  State<Registation> createState() => _RegistationState();
}


TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confromPassword = TextEditingController();

class _RegistationState extends State<Registation> {

  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   nameController.dispose();
  //   emailController.dispose();
  //   passwordController.dispose();
  //   emailController.dispose();
  // }


final formkey = GlobalKey<FormState>();
  bool _isObscure = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registation form"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
        child: SingleChildScrollView
      
       (
          child: SafeArea(child: //Text Form Field *********************
                  Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                  borderSide: BorderSide(
                                      color: Color(0xff0d964c), width: 1.7)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                  borderSide: BorderSide(
                                      color: Color(0xff0d964c), width: 1.7)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                  borderSide: BorderSide(
                                      color: Color(0xff0d964c), width: 1.7)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                  borderSide: BorderSide(
                                      color: Color(0xff0d964c), width: 1.7)),
                              contentPadding: EdgeInsets.zero,
                              prefixIcon:
                                  Icon(Icons.person, color: Color(0xff0d964c)),
                              hintText: 'Enter your full name',
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Color(0xff0d964c)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter Your Name';
                              }
                              return null;
                            },
                          ),
        
                          SizedBox(height: 15),
        
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                contentPadding: EdgeInsets.zero,
                                prefixIcon:
                                    Icon(Icons.call, color: Color(0xff0d964c)),
                                hintText: 'Enter your Email',
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Color(0xff0d964c)),
                                fillColor: Colors.grey,
                                focusColor: Colors.grey),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter Your phone number';
                              }
                              return null;
                            },
                          ),
        
                          SizedBox(height: 15),
        
                          TextFormField(
                            controller: passwordController,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                contentPadding: EdgeInsets.zero,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ),
                                prefixIcon:
                                    Icon(Icons.lock, color: Color(0xff0d964c)),
                                hintText: 'Enter your password',
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Color(0xff0d964c)),
                                fillColor: Colors.grey,
                                focusColor: Colors.grey),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter Your Password';
                              }
                              return null;
                            },
                          ),
        
                          SizedBox(height: 15),
        
                          TextFormField(
                            controller: confromPassword,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                        color: Color(0xff0d964c), width: 1.7)),
                                contentPadding: EdgeInsets.zero,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    // setState(() {
                                    //   _isObscure = !_isObscure;
                                    // });
                                  },
                                ),
                                prefixIcon:
                                    Icon(Icons.lock, color: Color(0xff0d964c)),
                                hintText: 'Enter your Confraom',
                                labelText: 'Confrom pass',
                                labelStyle: TextStyle(color: Color(0xff0d964c)),
                                fillColor: Colors.grey,
                                focusColor: Colors.grey),
                            validator: (value) {
                              if (value==null) {
                                return "try agin";
                              }
                              return null;
                            },
                          ),
        
                          //Sign Up **********  Button  *********
                          SizedBox(height: 45),
                          SizedBox(
                              width: (MediaQuery.of(context).size.width) - 50,
                              height: 40,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff0d964c),
                                      onPrimary: Colors.white,
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(32))),
                                  onPressed: () {
        
                                   formkey.currentState!.validate();
                                   getRegistaion();
                              
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.bold),
                                  ))),
                        ],
                      )),
        
          
          ),
        ),
      ),
    

    );
    
    
  }
}

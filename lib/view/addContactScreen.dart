import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxcontactlist/model/contact_model.dart';

import '../controller/app_data.dart';

class AddContactScreen extends StatelessWidget {
 
TextEditingController nameController=TextEditingController();
TextEditingController phoneController=TextEditingController();
TextEditingController emailController=TextEditingController();
 
 AppData appData=Get.find<AppData>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Add Contact List") ,),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your name"
              ),
            ),
           const  SizedBox(height: 10,),
            TextField(
               keyboardType: TextInputType.phone,
              controller: phoneController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your phone number"
              ),
            ),
             const  SizedBox(height: 10,),
            TextField(
               keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your e-mail"
              ),
            ),
            const  SizedBox(height: 10,),
            GestureDetector(
          onTap: (){
            ContactModel model=ContactModel(name: nameController.text, phone: phoneController.text, email: emailController.text);
            appData.addContact(model);
          },
          child: Container(
             alignment: Alignment.center,
            color:Colors.blue,
            width: 100,
            height: 50,
            child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 10),),
          ))
      ],),),
    );
  }
}
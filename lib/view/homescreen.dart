import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxcontactlist/controller/app_data.dart';
import 'package:getxcontactlist/model/contact_model.dart';
import 'package:getxcontactlist/view/addContactScreen.dart';

class HomeScreen extends StatelessWidget {
  
  AppData appData=Get.put(AppData(),permanent:true );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: Obx(() => ListView.builder(
          itemCount: appData.contacts.value.length,
          itemBuilder: (context, index) {
            ContactModel model=appData.contacts.value[index];
           return Container(
            margin: EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(model.name),
              subtitle: Text(model.phone),
              trailing: IconButton(onPressed: (){
                appData.deleteContact(model);
              }, icon: Icon(Icons.delete),color: Colors.red,),
            ));
        }),)),
       
      ]),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(()=>AddContactScreen());
      },
      child: Icon(Icons.add),),
    );
  }
}
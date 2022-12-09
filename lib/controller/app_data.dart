import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcontactlist/theme/dark_theme.dart';
import 'package:getxcontactlist/theme/light_theme.dart';

import '../model/contact_model.dart';

class AppData extends GetxController{
  RxList contacts=[].obs;
  RxBool isDarkMode =false.obs;


  changeTheme(){
    isDarkMode.value=!isDarkMode.value;

    isDarkMode.value?Get.changeTheme(darkTheme):Get.changeTheme(lightTheme);
  }

  addContact(ContactModel  contact){
    contacts.add(contact);
    Get.back();
  }
    deleteContact(ContactModel  contact){
    contacts.remove(contact);
  }
 
}
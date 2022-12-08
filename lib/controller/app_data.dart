import 'package:get/get.dart';

import '../model/contact_model.dart';

class AppData extends GetxController{
  RxList contacts=[].obs;

  addContact(ContactModel  contact){
    contacts.add(contact);
    Get.back();
  }
    deleteContact(ContactModel  contact){
    contacts.remove(contact);
  }
}
import 'package:flutter/material.dart';

class Modal{
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        ),
        context: context,
    builder: (BuildContext context) {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:30,left:20,right:20),
              child: Row(
                children: [
                  Text('مرتب سازی بر اساس',style: TextStyle(fontSize: 18),textDirection: TextDirection.rtl,),

                ],
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.black12,
              ),
            ),
            _CreatList(context, 'پربازدید ترین', Icons.check_box_outline_blank, _action1()),
            _CreatList(context, 'پرفروش ترین', Icons.check_box_outline_blank, _action2()),
            _CreatList(context, 'جدید ترین', Icons.check_box_outline_blank, _action3()),
            _CreatList(context, 'ارزانترین', Icons.check_box_outline_blank, _action4()),
            _CreatList(context, 'گرانترین', Icons.check_box_outline_blank, _action5()),
          ],
        ),
      );
    });
  }
}
 ListTile _CreatList(BuildContext context,String name,IconData icon, Function action) {
  return ListTile(
    leading: Icon(icon),
    title: Text(name),
    onTap: (){
      checkboxpressed();
   Navigator.pop(context);
   action;
   },
  );
}
_action1(){
  print("پر بازدید ترین کلیک شد");
}
_action2(){
  print("پر فروش ترین کلیک شد");
}
_action3(){
  print("جدید ترین کلیک شد");
}
_action4(){
  print("گران ترین کلیک شد");
}
_action5(){
  print("ارزان ترین کلیک شد");
}

import 'package:flutter/material.dart';

class HiheTest extends StatelessWidget {
   HiheTest({super.key});
  ValueNotifier<bool> toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(valueListenable:
         toggle, builder: (context,value ,child){
          return TextFormField(
            enabled: true,   
            obscureText: !toggle.value,  
            decoration: InputDecoration(
              hintText: 'password',
              suffixIcon: GestureDetector(
                onTap: () {
                  toggle.value = !toggle.value;
                },
                child: Icon(
                  toggle.value?
                  Icons.visibility_off_outlined
                  :Icons.visibility)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          );
         }),
      ),
    );
  }
}

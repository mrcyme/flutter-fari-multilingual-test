import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'Français', 'locale': Locale('fr', 'BE')},
    {'name': 'Nederlands', 'locale': Locale('nl', 'BE')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          print(locale[index]['name']);
                          updateLanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('title'.tr),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'message'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'subscribe'.tr,
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('en', 'US');
                      print(locale);
                      Get.updateLocale(locale);
                    },
                    child: Text('English')),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('fr', 'BE');
                      print(locale);
                      Get.updateLocale(locale);
                    },
                    child: Text('Français')),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('nl', 'BE');
                      print(locale);
                      Get.updateLocale(locale);
                    },
                    child: Text('Nederlands')),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  buildLanguageDialog(context);
                },
                child: Text('changelang'.tr)),
          ],
        ));
  }
}

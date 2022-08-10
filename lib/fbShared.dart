import 'package:flutter/material.dart';
import 'package:flutter_social_content_share/flutter_social_content_share.dart';


class FacebookShared extends StatefulWidget {
  const FacebookShared({Key? key}) : super(key: key);

  @override
  State<FacebookShared> createState() => _FacebookSharedState();

}

class _FacebookSharedState extends State<FacebookShared> {
  shareOnFacebook() async {
    String? result = await FlutterSocialContentShare.share(
        type: ShareType.facebookWithoutImage,
        url: "https://www.apple.com",
        quote: "captions");
    print(result);
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
       body: Center(
         child:
           RaisedButton(
             child: Text("Share to facebook button"),
             color: Colors.red,
             onPressed: () {
               shareOnFacebook();
             },
           ),
       ),
      ),
    );
  }


}
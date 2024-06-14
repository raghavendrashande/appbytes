import 'dart:convert';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:http/http.dart' as http;

  List<String> titlesdata = [];
  List<String?> bodydata = [];
  List<String> imgurldata = [];
  List<String> redirurl = [];

  const APIKey = "AIzaSyCRUa_wVIk38lv2o00o3T0L_HnX3wC0JoQ";

Future getdata() async {
  var response = await http.get(Uri.http('newsapi.org', '/v2/top-headlines',{'category':'technology','apiKey':'1d48ab099e00404fa9ef3642130da256','country':'us'}));
  var jsondata = jsonDecode(response.body);

  final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: APIKey,
  );


  for(int i=0;i<jsondata['totalResults']-1;i++){
    if(jsondata['articles'][i]['source']['id'] == null){
      continue;
    }
    else{
      titlesdata.add(jsondata['articles'][i]['title']);
      var prompt = 'Summarize this in 64 words'+jsondata['articles'][i]['content'];
      var content = [Content.text(prompt)]; 
      var responsebody = await model.generateContent(content);
      bodydata.add(responsebody.text);
      imgurldata.add(jsondata['articles'][i]['urlToImage']);
      redirurl.add(jsondata['articles'][i]['url']);
    }
  }
}
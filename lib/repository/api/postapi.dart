import 'dart:convert';


import 'package:http/http.dart';
import 'package:instagram/repository/ModelClass/PostModelClass.dart';


import 'api_client.dart';

class Postapi {
  ApiClient apiClient = ApiClient();

  Future<PostModelClass> getPost(String search) async {
    String trendingpath =
        'https://instagram-scraper-api2.p.rapidapi.com/v1.2/posts?username_or_id_or_url=$search';
    var body = {

    };
    Response response =
    await apiClient.invokeAPI(trendingpath, 'GET', jsonEncode(body));

    return PostModelClass.fromJson(jsonDecode(response.body));
  }
}

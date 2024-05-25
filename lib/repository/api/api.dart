import 'dart:convert';


import 'package:http/http.dart';
import 'package:instagram/repository/ModelClass/InstaModelClass.dart';


import 'api_client.dart';

class Instaapi {
  ApiClient apiClient = ApiClient();

  Future<InstaModelClass> getInsta(String search) async {
    String trendingpath =
        'https://instagram-scraper-api2.p.rapidapi.com/v1/info?username_or_id_or_url=$search';
    var body = {

    };
    Response response =
    await apiClient.invokeAPI(trendingpath, 'GET', jsonEncode(body));

    return InstaModelClass.fromJson(jsonDecode(response.body));
  }
}

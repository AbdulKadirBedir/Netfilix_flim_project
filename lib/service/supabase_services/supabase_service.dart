
import 'package:flutter_film_project/models/home_json/animeList.dart';
import 'package:flutter_film_project/models/home_json/myList.dart';
import 'package:flutter_film_project/models/home_json/originalList.dart';
import 'package:flutter_film_project/models/home_json/popularList.dart';
import 'package:flutter_film_project/service/credentials/supabase_credantials.dart';
import 'package:supabase/supabase.dart';

class SupabaseServices {
  final supabase = SupabaseClient(SupabaseCredentials.APIURL, SupabaseCredentials.APIKEY);
 

   Future<List<AnimeList>> getAnimeList() async {
    final response = await supabase.from("animelist").select().execute();

    if (response.status == 200) {
      var animelList = <AnimeList>[];
      for (var element in (response.data as List)) {
        AnimeList anime = AnimeList.fromJson(element);
        animelList.add(anime);
      }
      return animelList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

     Future<List<Mylist>> getMyList() async {
    final response = await supabase.from("mylist").select().execute();

    if (response.status == 200) {
      var myList = <Mylist>[];
      for (var element in (response.data as List)) {
        Mylist mylist = Mylist.fromJson(element);
        myList.add(mylist);
      }
      return myList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

    Future<List<OriginalList>> getOriginalList() async {
    final response = await supabase.from("originallist").select().execute();

    if (response.status == 200) {
      var originalList = <OriginalList>[];
      for (var element in (response.data as List)) {
        OriginalList original = OriginalList.fromJson(element);
        originalList.add(original);
      }
      return originalList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

    Future<List<PopularList>> getPopularList() async {
    final response = await supabase.from("popularlist").select().execute();

    if (response.status == 200) {
      var popularList = <PopularList>[];
      for (var element in (response.data as List)) {
        PopularList popular = PopularList.fromJson(element);
        popularList.add(popular);
      }
      return popularList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }
}
import 'package:flutter/material.dart';
import 'package:to_do_list/pages/add.task.dart';
import 'package:to_do_list/pages/home.pages.dart';
import 'package:to_do_list/pages/task.pages.dart';

import '../models/task.models.dart';


class Services{

  static List getMenu(){
    return[
      {"title":"Home","icon": Icons.home,"page":HomePage()},
      {"title":"Liste des tâches","icon": Icons.task_alt_outlined,"page":TaskPage()},
      {"title":"Nouvelle tâche","icon": Icons.add_task_sharp,"page":addTaskPage()},

    ];
  }

  static List<TaskModel> getTasks(){
    return [
      TaskModel(titre: "Saint-Pierre KASSI", description: "Il existe de nombreuses variantes de passages de Lorem Ipsum disponibles, mais la majorité ont subi une altération sous une forme ou une autre, par l’humour injecté, ou des mots aléatoires qui ne semblent même pas légèrement crédibles. Si vous allez utiliser un passage de Lorem Ipsum, vous devez vous assurer qu’il n’y a rien d’embarrassant caché au milieu du texte. Tous les générateurs Lorem Ipsum sur Internet ont tendance à répéter des morceaux prédéfinis si nécessaire, ce qui en fait le premier véritable générateur sur Internet"),
      TaskModel(titre: "Sainte-Benedicte KASSI", description: "C’est un fait établi de longue date qu’un lecteur sera distrait par le contenu lisible d’une page lorsqu’il regardera sa mise en page. L’intérêt d’utiliser Lorem Ipsum est qu’il a une distribution plus ou moins normale des lettres, par opposition à l’utilisation de « Contenu ici, contenu ici », ce qui le fait ressembler à un anglais lisible. De nombreux packages de publication assistée par ordinateur et éditeurs de pages Web utilisent maintenant Lorem Ipsum comme texte de modèle par défaut, et une recherche pour « lorem ipsum » révélera de nombreux sites Web encore à leurs débuts. Diverses versions ont évolué au fil des ans, parfois par accident, parfois exprès (humour injecté et autres)."),
      TaskModel(titre: "Sainte-Marie KASSI", description: "C’est un fait établi de longue date qu’un lecteur sera distrait par le contenu lisible d’une page lorsqu’il regardera sa mise en page. L’intérêt d’utiliser Lorem Ipsum est qu’il a une distribution plus ou moins normale des lettres, par opposition à l’utilisation de « Contenu ici, contenu ici », ce qui le fait ressembler à un anglais lisible. De nombreux packages de publication assistée par ordinateur et éditeurs de pages Web utilisent maintenant Lorem Ipsum comme texte de modèle par défaut, et une recherche pour « lorem ipsum » révélera de nombreux sites Web encore à leurs débuts. Diverses versions ont évolué au fil des ans, parfois par accident, parfois exprès (humour injecté et autres)."),
    ];
  }
}
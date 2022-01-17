// To parse this JSON data, do
//
//     final skill = skillFromJson(jsonString);

import 'dart:convert';

List<Skill> skillFromJson(String str) => List<Skill>.from(json.decode(utf8.decode(str.runes.toList())).map((x) => Skill.fromJson(x)));

String skillToJson(List<Skill> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Skill {
  Skill({
    this.id,
    this.icon,
    this.title,
    this.colorHex,
  });

  int? id;
  String? icon;
  String? title;
  String? colorHex;

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
    id: json["id"],
    icon: json["icon"],
    title: json["title"],
    colorHex: json["colorHEX"]!.replaceAll("#", "0xFF"),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "icon": icon,
    "title": title,
    "colorHEX": colorHex,
  };
}

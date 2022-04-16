class ColorModel {
  String name;
  String hex;
  String? rgb;

  ColorModel({
    required this.name,
    required this.hex,
    this.rgb,
  });

  factory ColorModel.fromJson(Map<String, dynamic> json) => ColorModel(
        name: json["name"],
        hex: json["hex"],
        rgb: json["rgb"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hex": hex,
        "rgb": rgb,
      };
}

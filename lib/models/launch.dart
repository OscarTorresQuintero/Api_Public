class Launch {
  final String name;
  final String? description;
  final DateTime? launchDate;
  final String? rocketName;
  final String? missionName;

  Launch({  
    required this.name,
    this.description,
    this.launchDate,
    this.rocketName,
    this.missionName,
  });

  factory Launch.fromJson(Map<String, dynamic> json) {
    return Launch(
      name: json['name'] ?? 'Unknown',
      description: json['description'],
      launchDate: json['launchDate'] != null 
        ? DateTime.parse(json['launchDate']) 
        : null,
      rocketName: json['rocketName'],
      missionName: json['missionName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'launchDate': launchDate?.toIso8601String(),
      'rocketName': rocketName,
      'missionName': missionName,
    };
  }
}

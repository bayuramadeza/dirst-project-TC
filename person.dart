class Persons {
    Persons({
        required this.persons,
    });

    final List<Person> persons;

    factory Persons.fromJson(Map<String, dynamic> json) => Persons(
        persons: List<Person>.from(json["persons"].map((x) => Person.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "persons": List<dynamic>.from(persons.map((x) => x.toJson())),
    };
}

class Person {
    Person({
        required this.name,
        required this.age,
    });

    final String name;
    final int age;

    factory Person.fromJson(Map<String, dynamic> json) => Person(
        name: json["name"],
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
    };
}

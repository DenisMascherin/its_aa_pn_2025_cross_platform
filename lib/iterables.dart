import 'package:its_aa_pn_2025_cross_platform/animal.dart';

Iterable<Animal> getAnimalsStartingWithL(Iterable<Animal> animals) {
  return animals.where(
    (element) {
      return element.name.startsWith("L");
    }
  );
}

List<Animal> addAnimal(List<Animal> list, Animal animal) {
  list.add(animal);
  return list;
}

List<Animal> removeAnimal(List<Animal> list, Animal animal) {
  list.remove(animal);
  return list;
}

List<Animal> updateAnimalName(List<Animal> list, Animal oldAnimal, Animal newAnimal) {
  list.remove(oldAnimal);
  list.add(newAnimal);
  return list;
}

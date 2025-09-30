  import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:its_aa_pn_2025_cross_platform/animal.dart';

Iterable<Animal> getAnimalsStartingWithL(IList<Animal> animals) {
  return animals.where(
    (element) {
      return element.name.startsWith("L");
    }
  );
}

IList<Animal> addAnimal(IList<Animal> list, Animal animal) {
  return list.add(animal);
}

IList<Animal> removeAnimal(IList<Animal> list, Animal animal) {
  return list.remove(animal);
}

// **Funzione Corretta con Operatore Bang (!)**
IList<Animal> updateAnimalName(IList<Animal> list, Animal oldAnimal, String newName) {
  return list.replaceAllWhere(
    (element) => element == oldAnimal,
    (old) => Animal (
      name: newName,
      // Usiamo l'operatore '!' per dire a Dart che siamo sicuri che il valore non sia null
      bornAt: old.bornAt!,
      ownerName: old.ownerName!,
      lastVisitAt: old.lastVisitAt!,
    ),
  );
}


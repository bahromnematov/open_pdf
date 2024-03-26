import 'dart:collection';

void main() {
  // List logTypes = [];
  // logTypes.add("Warning");
  // logTypes.add("Error");
  // logTypes.add("Info");
  // logTypes.add("a");
  // logTypes.add("b");
  // logTypes.add("b");
  // logTypes.shuffle();
  // print(logTypes.first);
  // print(logTypes.last);
  // logTypes.remove("a");
  // logTypes.removeAt(2);
  // logTypes[0]="AA";
  // logTypes.replaceRange(0, 1, ["bb","cc"]);
  // print(logTypes);

  // Set set= Set();
  // set.add(12);
  // set.add(12);
  // set.add(13);
  // set.add(17);
  // set.add(20);
  // set.add("Salom");
  // set.add(12.5);
  // print(set.runtimeType);
  // print(set);

  // Set set=Set.from([11,12,13]);
  // set.add(15);
  // set.add(20);
  // set.add(30);
  // print(set);
  // for( int a in set){
  //   print(a);
  // }

  // HashSet hashSet = new HashSet();
  // hashSet.add(12);
  // hashSet.add(12);
  // hashSet.add(20);
  // hashSet.add(9);
  // hashSet.add(1);
  // hashSet.add(100);
  // hashSet.add("b");
  // hashSet.add("a");
  // hashSet.add("c");
  // hashSet.addAll([1, 2, 3, 4]);
  // hashSet.remove("b");
  // hashSet.remove(1);
  // hashSet.clear();
  //
  // print(hashSet);

  HashMap hashmap = new HashMap();
  hashmap[1] = "One";
  hashmap[2] = "Two";
  hashmap[3] = "Three";
  hashmap[4] = "Four";
  hashmap[4] = "AAAA";

  hashmap.addAll({'dept': 'HR', 'email': 'asbd@gmail.com'});
  hashmap.remove(3);
  hashmap.remove(4);
  hashmap.remove("dept");
  hashmap.clear();
  print(hashmap);
}

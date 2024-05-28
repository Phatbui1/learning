import 'package:dart_application_4/dart_application_4.dart'
    as dart_application_4;

void main(List<String> arguments) {
  List<int> list1 = [10, 19, 5, 14, 3, 21, 2, 8, 2, 6, 7, 22, 5, 1, 15, 5];
  List<int> list2 = [1, 10, 12, 19, 13, 17, 5, 22, 14, 20];
  List<int> newList = createNewList(list1, list2);
  print('giá trị :${newList}');
}

List<int> createNewList(List<int> list1, List<int> list2) {
  List<int> newList = [];

  for (int i in list1 + list2) {
    if (i % 2 == 0) {
      if (existed(newList, i) == false) {
        newList.add(i);
      }
    }
  }

  return newList;
}

bool existed(List<int> list1, int input) {
  for (int i in list1) {
    if (i == input) {
      return true;
    }
  }
  return false;
}

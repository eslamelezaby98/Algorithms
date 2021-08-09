// Numbers Example

main(List<String> args) {
  List my_list = [1, 2, 3, 4, 6, 7, 9];

  pinary_search(List list, int item) {
    int low_index = 0;
    int high_index = list.length - 1;

    while (low_index <= high_index) {
      int middle_index = low_index + high_index;
      if (middle_index > list.length - 1) {
        return null;
      } else {
        int guess_item = list[middle_index];

        if (guess_item == item) {
          return middle_index;
        } else if (guess_item > item) {
          high_index = middle_index - 1;
        } else if (guess_item < item) {
          high_index = middle_index + 1;
        }
      }
    }
  }

  // print('Your guess item index is : ${pinary_search(my_list, 10)}');

  pinary_search(my_list, 7) == null
      ? print('Your guess item index is not in list')
      : print('Your guess item index is : ${pinary_search(my_list, 7)}');
}

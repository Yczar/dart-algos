//Adebayo Adewale

/* in a simple term , a Binary search is an algorithm for finding an item from list of sorted array


-----------------How does it work ? ------------------

it works by continuously dividing in half of the portion of the list of items that could contain the item.

it compares  the target valaue to the middle element of the Array.


Below is an example that takes in a key as inputs and finds it in the list of generated numbers using the binary search algorithm.



*/

//note : to run this as standalone , add a main() function.
void run() {
  // Generates lists of 20 numbers
  final item = List<int>.generate(
    20,
    (i) => i * i,
    growable: false,
  );
  print(item);

  //key inputs
  //replace key with any number of your choice.
  var key = 25;

  if (bsearch(key, item, 0, item.length - 1)) {
    print('keyfound : $key');
  } else {
    print('key not among list');
  }

  //another  key input example
  key = 404;
  if (bsearch(key, item, 0, item.length - 1)) {
    print('keyfound : $key');
  } else {
    print('key not among list');
  }
}

//binary search implementation function
bool bsearch(int key, List<int> item, int start, int end) {
  if (start > end) return false;
  
  item = item.sort();
  
  final mid = (start + end) ~/ 2;

  if (item[mid] == key) {
    return true;
  } else if (item[mid] > key) {
    return bsearch(key, item, start, mid - 1);
  } else {
    return bsearch(key, item, mid + 1, end);
  }
}

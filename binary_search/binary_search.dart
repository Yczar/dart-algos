//Adebayo Adewale


/* in a simple term , a Binary search is an algorithm for finding an item from list of sorted array


-----------------How does it work ? ------------------

it works by continuously dividing in half of the portion of the list of items that could contain the item.


Below is an example that takes in a key as inputs and finds it in the list of generated numbers using thr binary search algorithm.

*/




void main() {

  // Generates lists of 20 numbers
  var item = List<int>.generate(20, (i) => i * i, growable: false);
  print(item);

  // inputs key
  var key = 196;

  if (bsearch(key, item, 0, item.length - 1)) {

    print('keyfound : $key');
  }

  key = 100;
  if (!bsearch(key, item, 0, item.length - 1)) {
    print('can not find: $key');
  }
}

bool bsearch(int key, List<int> item, int start, int end) {

  if (start > end) return false;

  var mid = (start + end) ~/ 2;

  if (item[mid] == key) {

    return true;

  } else if (item[mid] > key) {
    return bsearch(key, item, start, mid - 1);
  } else {
    return bsearch(key, item, mid + 1, end);
  }

}
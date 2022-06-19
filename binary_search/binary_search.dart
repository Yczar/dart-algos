//Adebayo Adewale


/* in a simple term , a Binary search is an algorithm for finding an item from list of sorted array


-----------------How does it work ? ------------------

it works



*/




void main() {

  // Generates lists of number
  var item = List<int>.generate(20, (i) => i * i, growable: false);
  print(item);
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
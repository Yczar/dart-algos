int find(int a, List<int> parent) {
  if (parent[a] == a) {
    return a;
  } else {
    return find(parent[a], parent);
  }
}

void union(int a, int b, List<int> parent, List<int> rank) {
  int a1 = find(a, parent); // to find parent of a
  int b1 = find(b, parent); // to find parent of b
  if (a1 == b1) // if both have same parent that is both are in same set
  {
    print('both the elements are in same set\n');
    return;
  }

  /// if height of parent of a is greater than height of parent of b
  if (rank[a1] > rank[b1]) {
    parent[b1] = a1;

    /// if height of parent of b is greater than height of parent of a
  } else if (rank[a1] < rank[b1]) {
    parent[a1] = b1;

    /// if height of both parent is same
  } else {
    parent[a1] = b1;
    rank[b1]++;
  }
}

int main() {
  int n = 10;
  List<int> parent = List.filled(n, n);
  List<int> rank = List.filled(n, n);
  for (int i = 0; i < 10; i++)

    /// in starting the node is itself the parent
    parent[i] = i;
  for (int i = 0; i < 10; i++)

    /// by default the rank of all nodes is 1
    rank[i] = 1;

  /// 3 is friend of 8
  union(3, 8, parent, rank);

  /// 3 is friend of 6
  union(3, 6, parent, rank);
  print(
    'the parent of 8 is\n${find(8, parent)}',
  );

  /// 1 is friend of 9
  union(1, 9, parent, rank);

  /// 2 is friend of 8
  union(2, 8, parent, rank);

  /// 5 is friend of 8
  union(5, 8, parent, rank);

  /// 2 is friend of 9
  union(2, 9, parent, rank);
  print(
    'the parent of 2 is\n${find(2, parent)}',
  );
  print(
    "the parent of 8 is\n${find(8, parent)}",
  );

  /// to check whether 5 is friend of 7 or not
  if (find(5, parent) == find(7, parent))
    print('5 is a friend of 7\n');
  else
    print('5 is not a friend of 7\n');

  /// to check whether 3 is friend of 1 or not
  if (find(3, parent) == find(1, parent))
    print("3 is a friend of 1\n");
  else
    print('3 is not a friend of 1\n');

  return 0;
}

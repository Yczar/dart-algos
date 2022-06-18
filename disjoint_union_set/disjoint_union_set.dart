int find(int a, List<int> parent) {
  if (parent[a] == a) {
    return a;
  } else {
    return find(parent[a], parent);
  }
}

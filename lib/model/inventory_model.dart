class InventoryModel {
  String name;
  String address;
  int capacity;

  InventoryModel({this.name, this.address, this.capacity});
}

final List<InventoryModel> listInventory = [
  InventoryModel(name: 'Hoang', address: '123abc', capacity: 200),
  InventoryModel(name: 'Nhat', address: '456def', capacity: 300),
  InventoryModel(name: 'Linh', address: '789ghj', capacity: 400),
];

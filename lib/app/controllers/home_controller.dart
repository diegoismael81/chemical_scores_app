import 'package:chemical_scores_app/app/data/models/chemical_element_model.dart';
import 'package:chemical_scores_app/app/data/providers/element_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ElementProvider provider = ElementProvider();

  var isLoading = true.obs;
  var isTable = true.obs;
  var elementsList = <ChemicalElement>[].obs;
  var index = 0.obs;

  void onElementPage(ChemicalElement element) {
    Get.toNamed("/element", arguments: element);
  }

  void onBottomNavigationTap(int value) {
    index.value = value;
    isTable.value = value == 0
        ? true
        : value == 1
            ? false
            : isTable.value;

    if (value == 2) {
      Get.toNamed("/config");
    }
  }

  @override
  void onInit() {
    _fetchElements();
    super.onInit();
  }

  _fetchElements() async {
    try {
      isLoading(true);
      List<dynamic> result = await provider.getElements();
      List<ChemicalElement> elements =
          result.map((e) => ChemicalElement.fromJson(e)).toList();
      elementsList(elements);
    } finally {
      isLoading(false);
    }
  }

  @override
  void onClose() {}
}

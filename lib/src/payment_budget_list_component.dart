import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:alert/alert_service.dart';
import 'package:js/js.dart';
import 'dart:html';

@Component(selector: 'payment-budget-list')
@View(
    templateUrl: 'payment_budget_list_component.html',
    directives: const [RouterLink])
class PaymentBudgetListComponent implements OnInit, OnDestroy {
  static const String route_name = "PaymentBudgetList";
  static const String route_path = "paymentBudgetList";
  static const Route route = const Route(
      path: PaymentBudgetListComponent.route_path,
      component: PaymentBudgetListComponent,
      name: PaymentBudgetListComponent.route_name);

  final Router _router;
  final AlertService _alertService;

  PaymentBudgetListComponent(this._router, this._alertService) {}

  // import 'dart:html';
  void breadcrumbInit(){
    var  breadcrumbContent = querySelector('#breadcrumbContent') as HtmlElement;

    if (breadcrumbContent == null)
      return;

    breadcrumbContent.innerHtml = '''
            <li class="breadcrumb-item"><a href="#/master/dashboard">Главная</a></li>
            <li class="breadcrumb-item active">Список платежных бюджетов</li>
    ''';
  }

  @override
  void ngOnInit() {
    breadcrumbInit();
  }

  @override
  void ngOnDestroy() {}
}

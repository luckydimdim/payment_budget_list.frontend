import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:alert/alert_service.dart';
import 'package:js/js.dart';

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

  @override
  void ngOnInit() {}

  @override
  void ngOnDestroy() {}
}

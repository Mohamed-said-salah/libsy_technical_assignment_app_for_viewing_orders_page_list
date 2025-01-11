import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:libsy_technical_assignment/api/orders_api.dart';
import 'package:libsy_technical_assignment/models/respones/orders_response.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersInitial());

  void getOrders() async {
    emit(OrdersState.loading());

    final result = await OrdersApi.getOrders();

    if (result != null) {
      emit(OrdersState.success(result));
    } else {
      emit(OrdersState.error());
    }
  }
}

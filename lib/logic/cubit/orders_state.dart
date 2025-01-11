part of 'orders_cubit.dart';

sealed class OrdersState extends Equatable {
  const OrdersState();

  factory OrdersState.loading() => OrdersLoading();
  factory OrdersState.success(OrdersResponse data) => OrdersSuccess(data);
  factory OrdersState.error() => OrdersError();

  @override
  List<Object> get props => [];
}

final class OrdersInitial extends OrdersState {}

final class OrdersLoading extends OrdersState {}

final class OrdersSuccess extends OrdersState {
  final OrdersResponse data;
  const OrdersSuccess(this.data);

  @override
  List<Object> get props => [data];
}

final class OrdersError extends OrdersState {}

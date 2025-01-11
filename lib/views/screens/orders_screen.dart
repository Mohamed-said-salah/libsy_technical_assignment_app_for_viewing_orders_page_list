import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/orders_cubit.dart';
import '../widgets/shimmers/orders_shimmer_list.dart';
import '../widgets/tiles/order_tile.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // leading: const SizedBox(),
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          title: const Text(
            "Orders",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),

          // <--- Tab bar ---->
          bottom: TabBar(
            tabs: const [
              Tab(text: "Purchases"),
              Tab(text: "Sales"),
            ],
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
            padding: EdgeInsets.only(bottom: 10.h),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10.w),
            indicatorWeight: 5.h,
            dividerColor: Colors.transparent,
          ),
        ),
        backgroundColor: Colors.white,

        // <--- Tab Bar View --->
        body: TabBarView(
          children: [
            // <--- Purchases List --->
            BlocBuilder<OrdersCubit, OrdersState>(
              builder: (context, state) {
                if (state is OrdersSuccess) {
                  // -- Scrollable List of order widget
                  return ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    itemCount: state.data.purchases.length,
                    itemBuilder: (context, index) {
                      final purchase = state.data.purchases[index];
                      return OrderTile(order: purchase, showSeller: true);
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 25.h),
                  );
                } else {
                  return const ShimmerListOfOrders(); // -- shimmer list
                }
              },
            ),

            // <--- Sales List --->
            BlocBuilder<OrdersCubit, OrdersState>(
              builder: (context, state) {
                if (state is OrdersSuccess) {
                  // -- Scrollable List of order widget
                  return ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    itemCount: state.data.sales.length,
                    itemBuilder: (context, index) {
                      final purchase = state.data.sales[index];
                      return OrderTile(order: purchase);
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 25.h),
                  );
                } else {
                  return const ShimmerListOfOrders(); // -- shimmer list
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

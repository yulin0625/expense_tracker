import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expense});

  final List<Expense> expense;

  @override
  Widget build(BuildContext context) {
    // 使用ListView動態產生需要的Widget
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (ctx, index) => ExpensesItem(expense[index]),
    );
  }
}

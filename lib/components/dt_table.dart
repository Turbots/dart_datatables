library datatables.table;

import 'package:polymer/polymer.dart';
import 'package:dart_datatables/src/datatable.dart';

@CustomTag("dt-table")
class TableElement extends PolymerElement with Observable {

	@published DataTable dataTable;

	TableElement.created() : super.created() {
		on["previous"].listen((_) => _onPrevious);
		on["next"].listen((_) => _onNext);
	}

	/**
	 * Navigates to the previous page.
	 */
	_onPrevious() {

	}

	/**
	 * Navigates to the next page.
	 */
	_onNext() {

	}
}

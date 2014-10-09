library datatables.datatable;

import 'package:polymer/polymer.dart';

class DataTable {

	ObservableList<Object> columns;
	ObservableList<ObservableList<Object>> data;

	/**
	 * Creates and returns a new [DataTable] instance from the given JSON object.
	 */
	factory DataTable.fromJSON(Map jsonObject) {
		DataTable table = new DataTable._internal();
		table.columns = new ObservableList.from(jsonObject["columnNames"]);
		table.data = new ObservableList.from(jsonObject["data"]);
		table._validate();

		return table;
	}

	/**
	 * Internal constructor.
	 */
	DataTable._internal();

	/**
	 * Validates the [DataTable].
	 */
	_validate() {
		if (columns == null || data == null) {
			columns = new ObservableList();
			data = new ObservableList();
		}
	}
}

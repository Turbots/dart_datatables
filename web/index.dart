import 'dart:html' as html;
import 'package:polymer/polymer.dart' as polymer;
import 'package:dart_datatables/components/dt_table.dart';
import 'package:dart_datatables/src/datatable.dart';

/**
 * Starts the Datatables sample.
 */
main() {
	polymer.initPolymer().run(() {
		polymer.Polymer.onReady.then((_) {
			DataTable table = new DataTable.fromJSON({
				"columnNames": ["ID", "First Name", "Last Name"],
				"data": [
						[1, "Dieter", "Hubau"],
						[2, "Gina", "De Beukelaer"],
						[3, "Luc", "De Cleene"],
						[4, "Reinout", "Van Bets"],
						[5, "Guy", "Van Wert"],
						[6, "Reinout", "Van Bets"],
						[7, "Virginie", "Goral"]]
			});
			TableElement elem = html.querySelector("#dataTable") as TableElement;
			elem.dataTable = table;
		});
	});
}
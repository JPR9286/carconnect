import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {
  // retrieve the targets from the DOM
  static targets = [ 'dateDebutInput', 'dateFinInput' ]

  // On controller's connection, call the flatpickr
  // function in order to build the calendars
  connect() {
    console.log("hello")

    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d"
    });

  }

}

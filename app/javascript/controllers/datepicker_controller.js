import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element)
    console.log("Hello from datepicker_controller.js")
  }

}
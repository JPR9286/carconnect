import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "tooglablebookingElement"]
  connect() {

  }
  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
  }

  booking() {
    console.log("booking");
    this.tooglablebookingElementTarget.classList.toggle("d-none");
  }

}

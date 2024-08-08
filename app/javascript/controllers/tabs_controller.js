import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="tabs"
export default class extends Controller {
  submit() {
    console.log("submitting form");
    // Submits the plans form to filter_plans
    this.element.requestSubmit();
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="con"
export default class extends Controller {
  static targets = ["content","button"]
  connect() {
    console.log("test con");
    this.contentTarget.hidden = true;
    //this.contentTarget.innerHTML = "Refresh!"
  }

  refresh(){
    console.log("refresh!");
    //this.contentTarget.hidden = true;
    this.buttonTarget.innerHTML = "Refresh!"
  }

}

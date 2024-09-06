import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="counter"
export default class extends Controller {
  static targets = ["input", "minus", "gemCounter"]

  connect() {
    this.inputTarget.value = 0;
  }


  plus(){
    console.log("clicked plus");
    this.inputTarget.value ++;
    this.gemCounterTarget.innerHTML = this.inputTarget.value;
    this.toggleMinusDisable()
  }

  minus(){
    if (this.minusTarget.classList.contains('disabled')) return;
    
    console.log('clicked minus');
    this.inputTarget.value --;
    this.gemCounterTarget.innerHTML = this.inputTarget.value;
    this.toggleMinusDisable()
    
  }

  toggleMinusDisable() {
    if (this.inputTarget.value <= 0) {
      this.minusTarget.classList.add('disabled')
    } else {
      this.minusTarget.classList.remove('disabled')
    }
  }


}

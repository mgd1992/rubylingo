import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-chat"
export default class extends Controller {
  connect() {
    document.getElementById('messages').scrollTop = document.getElementById('messages').scrollHeight
  }
}

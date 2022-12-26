import consumer from "channels/consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log('connected to the room channel')
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log('disconnected to the room channel')
  },

  received(data) {
    alert(data.body);
    // Called when there's incoming data on the websocket for this channel
  }
});

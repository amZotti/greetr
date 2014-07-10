$(function(){

  Pusher.log = function(message) {
    if (window.console && window.console.log) {
      window.console.log(message);
    }
  };

  var pusher = new Pusher('4824e30a70e22f04260e');
  var channel = pusher.subscribe(window.CHANNEL);
  channel.bind('new_greeting', function(data) {
    alert(data.message);
  });


});

//tune into server
//var pusher = new Pusher('pusher id');

//tune into channel on server
//var channel = pusher.subscribe('test_channel');

//listen to a specific event on the channel on the server and execute callback when received
//channel.bind('my_event', function(data) {
//  alert(data.message)
//});
//
//:wq

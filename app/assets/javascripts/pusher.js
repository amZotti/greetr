$(function(){
  //Create event handler

  // Enable pusher logging - don't include this in production
  Pusher.log = function(message) {
    if (window.console && window.console.log) {
      window.console.log(message);
    }
  };

  var pusher = new Pusher('4824e30a70e22f04260e');
  var channel = pusher.subscribe('test_channel');
  channel.bind('my_event', function(data) {
    alert(data.message);
  });


});

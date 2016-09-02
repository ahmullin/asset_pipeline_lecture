// $(document).on('ready', addFormEventHandler);
// $(document).ready(addFormEventHandler);
$(function(){
  addFormEventHandler();
});

function addFormEventHandler(){
  $('form.tweet_index').on('ajax:complete', function(e, request, status){
    var response = request.responseJSON;
    $('ul#all_tweets').prepend("<li><a href='/tweets/" + response.id + "'>" + response.content + "</a></li>");
    $('#tweet_content').val("");

  });
  // $('form.tweet_index').on('submit', function(e){
  //   e.preventDefault();
  //   var authenticityToken = $('input[name="authenticity_token"]').val();
  //   var content =  $('#tweet_content').val();
  //   $.ajax({
  //     url: '/tweets',
  //     method: 'POST',
  //     data: {
  //       name: '404s',
  //       authenticity_token: authenticityToken,
  //       tweet: {
  //         content: content
  //       }
  //     },
  //     dataType: 'json',
  //     success: function(response){
  //       console.log('Success!');
  //       $('ul#all_tweets').prepend("<li><a href='/tweets/" + response.id + "'>" + response.content + "</a></li>");
  //     }
  //   });
  // });
}

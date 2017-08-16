<posts>
  <post each="{ posts }" data="{ this }"></post>

  <script>
   var self = this
   $('document').ready(function(){
     var request = window.superagent
     request.get("http://192.168.99.4/post/list")
                         .end(function(err, res) {
                           self.posts = Array.reverse(res.body.posts)
                           self.update()
                         })
   })
  </script>
</posts>

<post>
  <div class="row">
    <div class="col s12 m10 offset-m1">
      <div class="card indigo lighten-4">
        <div class="card-content indigo-text darken-4">
          <p>{ opts.data.body }</p>
        </div>
        <div class="card-action right-align indigo-text">
          { username } / <a href="#" onclick="{ deletefunc }">DEL</a>
        </div>
    </div>
  </div>


  <script>
   deletefunc(e) {
     request = window.superagent
     request.post("http://192.168.99.4/post/" + this.opts.data.id + "/delete")
                     .end(function(err, res) {
                       location.reload()
                     })
   }
  </script>
</post>

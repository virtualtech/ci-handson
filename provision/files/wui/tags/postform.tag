<postform>
  <div class="row">
    <form onsubmit="{ submitAction }" method="POST">
      <div class="col s12">
        <div class="row">
          <div class="input-field col s12 m10 offset-m1">
            <i class="material-icons prefix">account_circle</i>
            <input id="username" name="username" type="text" value=""/>
            <label for="username">username</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12 m10 offset-m1">
            <i class="material-icons prefix">mode_edit</i>
            <textarea id="textarea" class="materialize-textarea"></textarea>
            <label for="textarea">Message</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12 m10 offset-m1 right-align">
            <button class="btn indigo">submit</button>
          </div>
        </div>
      </div>
    </form>
  </div>

  <script>
   submitAction(e) {
     var username = e.target[0].value
     var body = e.target[1].value
     var request = window.superagent

     request.post('http://192.168.99.4/post')
                         .set('Content-Type', 'application/json')
                         .send({username: username, body: body})
                         .end(function(err, res) {
                           location.reload()
                         })
     return false
   }
  </script>
</postform>

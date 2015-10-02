
var MessagesList = React.createClass({
  getInitialState(){
    let message = JSON.parse(this.props.message);
    return {message: message};
  },

  render() {
    let messages = this.state.message.messages.map((message) => {
      return this.renderComment(message);
    });

    return (
      <div id='messages'>
        {messages}
      </div>
    );
  },

  renderComment(message) {
    return (
      <p class='message'>
        <b>{ message.username }</b>: &nbsp;
        { message.body }
      </p>
    );
  }
});

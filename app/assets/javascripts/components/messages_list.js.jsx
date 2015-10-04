
class Message extends React.Component {
  render() {
    return(
      <p className='message'>
        <b>{ this.props.username }</b>: &nbsp;
        { this.props.body }
      </p>
    );
  }
}

class MessageList extends React.Component {
  constructor() {
    super();
    this.state = { messages: [] };
  }

  componentDidMount() {
    component = this;

    App.messages = App.cable.subscriptions.create("MessagesChannel", {
      received: function(data) {
        message = JSON.parse(data.message);
        messages = component.state.messages;
        messages.push(message);
        component.setState({messages: messages});

        $messages = $('#messages');
        $messages.scrollTop($messages.height() + 1000)
      }
    })
  }

  render() {
    return (
      <div id='messages'>
      {
        this.state.messages.map( (message, i) => {
          return (<Message
                    key={i}
                    username={message.username}
                    body={message.body} />);
        })
      }
      </div>
    )
  }
}

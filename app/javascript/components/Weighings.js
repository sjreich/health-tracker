import React from 'react'

class Weighings extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      'weighings': []
    };
  }

  componentDidMount() {
    this.get_weighings();
  }

  get_weighings() {
    fetch('http://localhost:3000/api/weighings')
      .then((resp) => resp.json())
      .then((data) =>
        this.setState({'weighings': data.weighings})
      )
  }

  render() {
    return(
      <dl>
        {
          this.state.weighings.map(weighing =>
            <React.Fragment key={weighing.id}>
              <dt>Weight</dt>
              <dd>{weighing.weight}</dd>

              <dt>Date</dt>
              <dd>{weighing.weighed_at}</dd>
            </React.Fragment>
          )
        }
      </dl>
    )
  }
}

export default Weighings;

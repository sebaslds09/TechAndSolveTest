class ContentBox extends React.Component {
    render() {
        return (
            <div className="contentBox">
                <h1>Prueba técnica Tech And Solve</h1>
                <ContentForm />
            </div>
        );
    }
}

class ContentForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {identification: '', file: '' };
        this.handleIdentificationChange = this.handleIdentificationChange.bind(this);
        this.handleFileChange = this.handleFileChange.bind(this);
    }
    handleIdentificationChange(e) {
        this.setState({ identification: e.target.value });
    }
    handleFileChange(e) {
        this.setState({ file: e.target.value });
    }
    render() {
        return (
            <form className="contentForm">
                <input
                    type="text"
                    placeholder="Identification"
                    value={this.state.identification}
                    onChange={this.handleIdentificationChange}
                />
                <input
                    type="file"
                    placeholder="input file"
                    value={this.state.file}
                    onChange={this.handleFileChange}
                />
                <input type="submit" value="Post" />
            </form>
        );
    }
}

ReactDOM.render(<ContentBox />, document.getElementById('content'));
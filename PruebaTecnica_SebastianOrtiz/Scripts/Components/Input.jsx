//Render the form components into a single component
class ContentBox extends React.Component {
    constructor(props) {
        super(props); 
        this.state = { data: [] };
        this.handleContentSubmit = this.handleContentSubmit.bind(this);
    }
    handleContentSubmit(e) {
        const data = new FormData();
        data.append("Identification", e.Identification);
        data.append("File", e.File);

        const xhr = new XMLHttpRequest();
        xhr.open('post', this.props.submitUrl, true);
        xhr.send(data);
        var response = xhr.response;
    }
    render() {
        return (
            <div className="contentBox">
                <h1>Prueba técnica Tech And Solve</h1>
                <ContentForm onContentSubmit={this.handleContentSubmit}/>
            </div>
        );
    }
}

//Input form component
class ContentForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {identification: '', file: '' };
        this.handleIdentificationChange = this.handleIdentificationChange.bind(this);
        this.handleFileChange = this.handleFileChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }
    handleIdentificationChange(e) {
        this.setState({ identification: e.target.value });
    }
    handleFileChange(e) {
        this.setState({ file: e.target.files[0] });
    }
    handleSubmit(e) {
        e.preventDefault();
        const identification = this.state.identification.trim();
        const file = this.state.file;
        if (!identification || !file) {
            return;
        }
        this.props.onContentSubmit({ Identification: identification, File: file});
        this.setState({ identification: '', file: '' });
    }
    render() {
        return (
            <form className="contentForm" onSubmit={this.handleSubmit}>
                <input
                    type="text"
                    placeholder="Identification"
                    value={this.state.identification}
                    onChange={this.handleIdentificationChange}
                />
                <input
                    type="file"
                    placeholder="input file"
                    onChange={this.handleFileChange}
                />
                <input type="submit" value="Post" />
            </form>
        );
    }
}

ReactDOM.render(<ContentBox submitUrl="/process" />, document.getElementById('content'));
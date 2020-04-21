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
        data.append("FileBase", e.File);
        data.append("Case", this.props.case);

        const xhr = new XMLHttpRequest();
        xhr.open('post', this.props.submitUrl, true);
        xhr.onloadstart = () => this.loadStartEvent();
        xhr.onloadend = () => this.downloadFile(xhr.response);
        xhr.send(data);
    }
    downloadFile(response) {
        if (response != "") {
            const element = document.createElement("a");
            const file = new Blob([response],
                { type: 'text/plain;charset=utf-8' });
            element.href = URL.createObjectURL(file);
            element.download = "result.txt";
            document.body.appendChild(element);
            element.click();
            ReactDOM.render(<SucessMessage Message="Archivo de resultado descargado con exito" />, document.getElementById('result'));
        }
        else {
            ReactDOM.render(<FailMessage Message="Tipo de archivo incorrecto, o datos incorrectos o fuera de los limites." />, document.getElementById('result'));
        }
        ReactDOM.render(<div />, document.getElementById('loading'));
    }
    loadStartEvent() {
        ReactDOM.render(<div />, document.getElementById('result'));
        ReactDOM.render(<LoadingPane />, document.getElementById('loading'));
    }
    render() {
        return (
            <div className="container">
                <div className="contentBox row justify-content-md-center">
                    <ContentForm onContentSubmit={this.handleContentSubmit}/>
                </div>
            </div>
        );
    }
}

//Input form component
class ContentForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = { identification: '', file: '', inputKey: Date.now() };
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
        this.setState({ identification: '', file: null, inputKey: Date.now() });
    }
    render() {
        return (
            <form className="contentForm col-sm-12" onSubmit={this.handleSubmit}>
                <div className="form-group">
                    <label htmlFor="lblIdentification">Identificación:</label>
                    <input
                        type="text"
                        placeholder="Identification"
                        value={this.state.identification}
                        onChange={this.handleIdentificationChange}
                        className="form-control"
                        id="lblIdentification"
                        required
                    />
                </div>

                <div className="form-group">
                    <label htmlFor="flInput">Archivo entrada:</label>
                    <input
                        type="file"
                        placeholder="input file"
                        onChange={this.handleFileChange}
                        className="form-control-file"
                        id="flInput"
                        key={this.state.inputKey}
                        required
                    />
                </div>

                <div className="form-group row justify-content-center">
                    <input
                        type="submit"
                        value="Procesar"
                        className="btn btn-primary" />
                </div>
            </form>
        );
    }
}

class TextBox extends React.Component {
    render() {
        const TitleTag = `h${this.props.SizeT}`;
        const MessageTag = `h${this.props.SizeM}`;
        return (
            <div className="textBox container">
                <div className="row">
                    <strong><TitleTag>{this.props.Title}</TitleTag></strong>
                    <br />
                    <MessageTag><p className="text-justify">{this.props.Message}</p></MessageTag>
                </div>
            </div>

        );
    }
}

class QuoteText extends React.Component {
    render() {
        return (
            <div className="quoteText container-flex">
                <blockquote className="blockquote bg-dark text-white">
                    <p className="mb-0">{this.props.Title}</p>
                    <footer className="blockquote-footer text-monospace"><a href={this.props.Url} target="_blank" className="text-secondary">{this.props.Author}</a></footer>
                </blockquote>
            </div>

        );
    }
}

class FailMessage extends React.Component {
    constructor(props) {
        super(props);
        this.handleClose = this.handleClose.bind(this);
        this.state = { active: true };
    }
    handleClose() {
        this.setState({ active: false });
    }
    render() {
        return (
            <div className={this.state.active ? 'failMessage alert alert-danger alert-dismissible fade show' : 'failMessage alert alert-danger alert-dismissible fade hide'}>
                <strong>¡Error!</strong>{this.props.Message}
                <button type="button" className="close" data-dismiss="alert" aria-label="Close" onClick={this.handleClose}>
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        );
    }
}

class SucessMessage extends React.Component {
    constructor(props) {
        super(props);
        this.handleClose = this.handleClose.bind(this);
        this.state = { active: true };
    }
    handleClose() {
        this.setState({ active: false });
    }
    render() {
        return (
            <div className={this.state.active ? 'failMessage alert alert-success alert-dismissible fade show' : 'failMessage alert alert-success alert-dismissible fade hide'}>
                <strong>¡Exito!</strong>{this.props.Message}
                <button type="button" className="close" data-dismiss="alert" aria-label="Close" onClick={this.handleClose}>
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        );
    }
}

class LoadingPane extends React.Component {
    render() {
        return (
            <div className="loadingPane">
                <div className="spinner-border text-primary" role="status">
                    <span className="sr-only">Loading...</span>
                </div>
            </div>
        );
    }
}


ReactDOM.render(<QuoteText
    Title="Prueba Técnica Tech And Solve"
    Author="Sebastian Ortiz"
    Url="https://sebastianortiz.info"/>, document.getElementById('header'));

ReactDOM.render(<TextBox Title="Análisis"
    SizeT="2"
    SizeM="5"
    Message="Para esta prueba se realizó una interpretación de los requerimientos con dos posibles resultados dependiendo de 
la regla que se implemente para el último viaje de Wilson, esto es, si para Julie es valido o no que en su último viaje el peso total
de la carga de Wilson sea menor de 50 libras."/>, document.getElementById('intro'));

//Case 1
ReactDOM.render(<TextBox Title="Caso 1:"
    SizeT="4"
    SizeM="6"
    Message="En este caso, se entiende que el único caso en el que el peso puede ser inferior a 50 libras es solo en el primer y único 
viaje cuando sea el caso. Es decir, cuando para ese día solo deba realizarse un solo viaje y el peso de los elementos de dicho
viaje es inferior a 50 libras. Si deben realizarse más de un viaje, entonces el último viaje entonces podría estar sobrecargado"/>, document.getElementById('case1'));
ReactDOM.render(<ContentBox submitUrl="/process" case="1" />, document.getElementById('content1'));

//Case 2
ReactDOM.render(<TextBox Title="Caso 2:"
    SizeT="4"
    SizeM="6"
    Message="En este caso, Julie puede permitir que el último viaje de Wilson sea de menos de 50 libras. Es decir, ella verificará
todos los viajes de Wilson menos el último, ya que por ser el último solo tendrá los elementos faltantes y estos pueden pesar menos
de 50 libras"/>, document.getElementById('case2'));
ReactDOM.render(<ContentBox submitUrl="/process" case="2" />, document.getElementById('content2'));
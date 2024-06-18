%%raw("import './index.css';")

ReactDOM.querySelector("#root")
->Belt.Option.getExn
->ReactDOM.Client.createRoot
->ReactDOM.Client.Root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)

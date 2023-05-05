%%raw(`import './App.css'`)

@module("/vite.svg") external viteLogo: string = "default"
@module("./assets/react.svg") external reactLogo: string = "default"

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)
  <>
    <div>
      <a href="https://vitejs.dev" target="_blank">
        <img src={viteLogo} className="logo" alt="Vite logo" />
      </a>
      <a href="https://react.dev" target="_blank">
        <img src={reactLogo} className="logo react" alt="React logo" />
      </a>
    </div>
    <h1> {React.string("Vite + React")} </h1>
    <div className="card">
      <button onClick={_ => setCount(count => count + 1)}>
        {React.string(`count is ${count->Js.Int.toString}`)}
      </button>
      <p>
        {React.string("Edit ")}
        <code> {React.string("src/App.res")} </code>
        {React.string(" and save to test HMR")}
      </p>
    </div>
    <p className="read-the-docs">
      {React.string("Click on the Vite and React logos to learn more")}
    </p>
  </>
}

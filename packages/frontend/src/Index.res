@react.component
let make = () => {
  <RelayRouter.Provider value={Router.routerContext}>
    <React.Suspense fallback={React.string("Loading...")}>
      <RescriptReactErrorBoundary fallback={_ => React.string("Error!")}>
        <App />
      </RescriptReactErrorBoundary>
    </React.Suspense>
  </RelayRouter.Provider>
}

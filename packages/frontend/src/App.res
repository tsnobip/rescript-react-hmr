@react.component
let make = () => {
  <RelayRouter.RouteRenderer
    // This renders all the time, and when there's a pending navigation (pending via React concurrent mode), pending will be `true`
    renderPending={pending => <div> {pending ? React.string("Loading...") : React.null} </div>}
  />
}

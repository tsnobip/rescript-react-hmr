let renderer = Routes.Root.Route.makeRenderer(
  ~prepare=_props => {
    ()
  },
  ~render=_props => {
    <Root />
  },
)

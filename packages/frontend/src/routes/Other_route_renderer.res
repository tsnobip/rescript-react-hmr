let renderer = Routes.Other.Route.makeRenderer(
  ~prepare=_props => {
    ()
  },
  ~render=_props => {
    <Other />
  },
)

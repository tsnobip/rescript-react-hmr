let renderer = Routes.FourOhFour.Route.makeRenderer(
  ~prepare=_props => {
    ()
  },
  ~render=_props => {
    <PageNotFound />
  },
)

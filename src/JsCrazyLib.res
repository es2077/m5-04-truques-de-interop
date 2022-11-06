module Cube = {
  type cubeness
  type cubenessProp = [#bool(bool) | #float(float)]

  let cubeness = cubenessProp => {
    switch cubenessProp {
    | #bool(value) => Obj.magic(value)
    | #float(value) => Obj.magic(value)
    }
  }

  // unwrap
  @module("./JsCrazyLib") @react.component
  external make: (~cubeness: [#bool(bool) | #float(float)]) => React.element = "Cube"
}

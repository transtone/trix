Trix.extend
  deepCopy: (value) ->
    if Array.isArray(value)
      Trix.deepCopyArray(value)
    else if value.constructor is Object
      Trix.deepCopyObject(value)
    else if value instanceof HTMLElement
      value.cloneNode(true)
    else if value instanceof DocumentFragment
      Trix.cloneFragment(value)
    else
      value

  deepCopyArray: (array) ->
    for value in array
      Trix.deepCopy(value)

  deepCopyObject: (object) ->
    result = {}
    result[key] = Trix.deepCopy(value) for key, value of object
    result

Trix.extend
  withConfig: (fn) -> ->
    try
      originalConfig = Trix.config
      Trix.config = this.config if this.config
      result = fn.apply(this, arguments)
    finally
      Trix.config = originalConfig
      result

class InputValidation

  constructor: (el, options) ->
    @el = $(el)
    if @el.size() == 0
      throw (new TypeError("Element with selector '" + el + "' doesnt exist"))

    @el.change((e)=>
      @.validate(e)
    )
    @el.blur((e)=>
      @.validate(e)
    )
    if options && options.onError
      @onErrorCall = options.onError
    else
      @onErrorCall = ->
    if options && options.onSuccess
      @onSuccessCall = options.onSuccess
    else
      @onSuccessCall = ->

  val: ->
    $.trim(@el.val())

  showError: ->
    try
      $(@el).parents('.form-item').find('.good-smile').addClass('hide')
      $(@el).parents('.form-item').find('.error-smile').removeClass('hide')
      $(@el).parents('.form-item').find('.error-desc').show()
      $(@el).addClass('error')
      @onErrorCall.call(@el,@el)
    catch e
      # TODO


  hideError: ->
    try
      $(@el).parents('.form-item').find('.error-smile').addClass('hide')
      $(@el).parents('.form-item').find('.good-smile').removeClass('hide')
      $(@el).parents('.form-item').find('.error-desc').hide()
      $(@el).removeClass('error')
      @onSuccessCall.call(@el,@el)
    catch e
      # TODO

  validate: (e) ->
    email_error = false
    if @el.attr('id')=='email'
      email_error = !is_email(@.val())
    if @.val()=="" || email_error
      @.showError()
    else
      @.hideError()

window.InputValidation = InputValidation


class @Popup

  @initialize = (elem) ->
    $(elem).modal complete: ->
      $('.qtip').remove()
      $(elem).remove()

    $('.modal-close').on 'click', ->
      $(this).parents('.modal').modal 'close'

  @open = (elem) ->
    $(elem).modal('open')
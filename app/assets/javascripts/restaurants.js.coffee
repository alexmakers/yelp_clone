# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  id = $('#map').data('id')

  $.get "/api/restaurants/#{id}", (restaurant) ->
    coords = { lat: restaurant.latitude, lng: restaurant.longitude }

    map = new GMaps $.extend(div: '#map', coords)
    map.addMarker coords
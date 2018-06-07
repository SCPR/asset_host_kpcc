AssetHost.Models.AssetBrowserAssetView.prototype.highlightIfKpccOwned = ->
  owner = (@model.get('owner') or '').toLowerCase()
  # has acceptable owner
  isKpccOwned = if owner.match(/SCPR|KPCC|LAist|Getty|^AP\s*|((Flickr).*(Creative Commons))|((Creative Commons).*(Flickr))/i) &&
  # not owned by these guys
  not owner.match(/NPR|Reuters|Landov/) &&
  # title doesn't contain "Mercer"
  not (@model.get('title') or '').match(/Mercer/i) &&
  # not marked for single use
  not ("#{@model.get('title')} #{@model.get('caption')} #{@model.get('owner')} #{@model.get('notes')}").match(/single use only|one time use/i) &&
  # not under 650px
  not ((@model.get('long_edge') or 0) < 650) &&
  # not square
  not ((@model.get('long_edge') or 0) is (@model.get('short_edge') || 0)) &&
  # not vertical
  not ((size)-> parseInt(size[0]) < parseInt(size[1]))((@model.get('size') or "0x1").split("x"))
  then true else false
  
  if isKpccOwned
    $(@el).addClass 'kpcc-owned'


AssetHost.Models.AssetBrowserAssetView.prototype.render = ->
  @highlightIfKpccOwned()
  $(@el).html @template(@model.toJSON())
  $(@el).attr "draggable", true
  @


transform = require('coffee-react-transform')
module.exports = (content) ->
  @cacheable() if @cacheable
  content = content.replace(/(<[^>]+)(class=)([^>]+>)/g, "$1className=$3")
  return transform "# @cjsx React.DOM\nmodule.exports = ->\n#{content.split('\n').map((l)->'  '+l).join('\n')}"

toString = Buffer::toString
Buffer::toString = ->
  if arguments[0] == 'base64url'
    return toString.call(@,'base64').replace(/=+/g, "").replace(/\+/g, "-").replace(/\//g, "_")
  toString.apply @, arguments

_from = Buffer.from
Buffer.from = ->
  if arguments[1] == 'base64url'
    arguments[1] = 'base64'
  _from.apply @, arguments



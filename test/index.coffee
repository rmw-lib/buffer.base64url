import '../src/index'

import test from 'tape'

test 'property', (t)=>
  base64url = 'base64url'
  buf = Buffer.from([1])
  t.equal buf.toString(base64url), 'AQ'
  t.ok buf.compare(Buffer.from('AQ', base64url))==0
  t.end()

const fastify = require('fastify')({
  logger: true
})

fastify.get('/', function (request, reply) {
  // add break point to the below line
    reply.send({ hello: 'world' })
  })

// start servet at localhost:3000 use same to access from browser
fastify.listen({ port: 3000, host: '0.0.0.0'}, function (err) {
if (err) throw err
console.log(`server listening on ${fastify.server.address().port}`)
console.log('to test run `curl http://localhost:3000` in terminal')
})
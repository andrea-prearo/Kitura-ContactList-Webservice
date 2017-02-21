import Kitura
import HeliumLogger
import LoggerAPI

let logger = HeliumLogger()
Log.logger = logger

let router = Router()

router.get("/") {
    request, response, next in
    response.send("Hello!")
    next()
}

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()

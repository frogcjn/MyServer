import Vapor
@main
public struct MyServer {
    
    public static func main() async throws {
        
        var env = try Environment.detect()
        try LoggingSystem.bootstrap(from: &env)
        let app = Application(env)
        defer { app.shutdown() }
        try configure(app)
        try app.run()
    }
}

/*
@main
struct MyServer: ParsableCommand {
    @ArgumentParser.Argument
    var hostname: String
    
    @ArgumentParser.Argument
    var port: Int
        
    mutating func run() throws {
        webapp.http.server.configuration.hostname = hostname
        //webapp.http.server.configuration.port = port
        webapp.get("greet", use: Self.greet)
        webapp.post("echo", use: Self.echo)
        try webapp.run()
    }
    
    static func greet(request: Request) async throws -> String {
        return "Hello from Swift Server"
    }
    
    static func echo(request: Request) async throws -> String {
        if let body = request.body.string {
            return body
        }
        return ""
    }
}
*/

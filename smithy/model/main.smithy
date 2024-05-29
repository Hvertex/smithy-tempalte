$version: "2.0"

namespace com.adepps

use aws.protocols#restJson1
use smithy.framework#ValidationException
use aws.api#service


/// Echoes input
@service(sdkId: "echo")
@restJson1
@httpBearerAuth
service DemandService {
    version: "2023-12-03"
    operations: [EchoMessage]
}

@http(uri: "/echo", method: "POST")
@auth([])
operation EchoMessage {
    input := {
        @required
        @httpHeader("x-echo-message")
        message: String
    }
    output := {
        @required
        message: String
    }
}

structure EchoMessageInput {
    message: String
}
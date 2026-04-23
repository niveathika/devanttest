import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service / on httpDefaultListener {
    resource function get hello(@http:Query string name) returns string|error {
        do {
            return name;
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

}

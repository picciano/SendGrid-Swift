# SendGrid-Swift

Swift framework for using SendGrid v3.

# Usage

## Add the pod to your podfile

    pod 'SendGrid-Swift'

## Import the framework

    import SendGrid_Swift

## Example

    func sendMail() {
        let sendGrid = SendGrid(withAPIKey: "USE YOUR SENDGRID API KEY HERE")
        
        let content = SGContent(type: .plain, value: "Now is the time for all good men to come to the aid of their country.")
        let from = SGAddress(email: "sender@example.com")
        let personalization = SGPersonalization(to: [ SGAddress(email: "recipient@example.com") ])
        let subject = "Hello, world!"
        
        let email = SendGridEmail(personalizations: [personalization], from: from, subject: subject, content: [content])
        
        sendGrid.send(email: email) { (response, error) in
            if let error = error {
                log.error("Error sending email: \(error.localizedDescription)")
            }
        }
    }

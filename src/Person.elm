module Person exposing (Person, matt, people)


type alias Person =
    { name : String
    , image : String
    , role : String
    , bio : List String
    }


people : List Person
people =
    [ matt
    , Person "Mike Mangino"
        "https://786654.smushcdn.com/1601387/wp-content/uploads/2020/02/HubTran_MikeMangino-01.jpg?lossy=1&strip=1&webp=1"
        "CTO"
        [ "Building industry-changing software doesn’t come easily. It requires a rare breed of people who have the right mix of experience and the desire to make it happen. Mike Mangino checks both of those boxes, and then some."
        , "Mike draws experience from his tenure at big and small companies, including software architecture and development at JPMorganChase. He also founded Elevated Code, a startup-based consulting company that helped more than a dozen companies launch their products. That broad base of experience prepared him to forge new frontiers with HubTran."
        , "But the real lightbulb moment for Mike came when he first watched someone manually process invoices. “I knew HubTran could give her back the majority of her day to do more important work. I was hooked,” says Mike."
        ]
    , Person "Josh Asbury"
        "https://786654.smushcdn.com/1601387/wp-content/uploads/2020/03/Josh-Asbury.jpg?lossy=1&strip=1&webp=1"
        "VP, Brokers"
        [ "Josh Asbury describes his role at HubTran as “a dream job.” And it’s little wonder. Josh, like many on the HubTran team, is passionate about solving big problems that have an immediate impact for the customer. In his previous leadership roles in enterprise software, digital transformation projects typically took years. HubTran’s nimbler, accelerated approach to software development appealed to him. “HubTran’s unique and technologically-advanced approach to solving problems faced by the logistics industry is very compelling. Seeing the passion and intelligence of the people who work here made the decision to join a no-brainer,” says Josh."
        , "Prior to joining HubTran, Josh also acted as a start-up mentor helping early-stage companies develop and execute their sales and marketing strategies. Josh’s rare ability to combine his broad corporate sales/marketing/operations experience with the mental agility required of a scrappy start-up is an invaluable resource for HubTran. Josh earned his BS in Systems Analysis from Miami University in Oxford, Ohio."
        ]
    , Person "Michael Niessner"
        "https://786654.smushcdn.com/1601387/wp-content/uploads/2020/03/Michael-Niessner.jpg?lossy=1&strip=1&webp=1"
        "Principal Engineer"
        [ "James Cameron once said, “Curiosity is the most powerful thing you own.” Michael Niessner would agree. It’s that curiosity and desire to “go deep” in one single industry that drew Michael to HubTran. “We take great pride in understanding what our customers actually need to accomplish. As a result, we are able to build powerful time-saving solutions that others have simply never considered,” says Michael."
        , "Before joining HubTran, Michael worked as a software consultant and helped launch several software companies. While Michael is fluent in numerous programming languages, it’s his drive to perfect both the art and science of software development that makes him an invaluable asset at HubTran. Michael’s deep understanding of business enables him to identify innovative solutions. Michael received a B.S. in computer science from the University of Illinois at Urbana Champaign."
        ]
    , Person "Tom Durrenberger"
        "https://786654.smushcdn.com/1601387/wp-content/uploads/2020/03/Tom-Durrenberger.jpg?lossy=1&strip=1&webp=1"
        "VP, Factors"
        [ "“To the man who only has a hammer, everything begins to look like a nail,” said Abraham Maslow. In other words, one solution can’t possibly solve every problem. For Tom Durrenberger, HubTran’s ability to bring just the right tools to the factoring world was an opportunity he couldn’t pass up."
        , "After graduating magna cum laude from the Booth School of Business at the University of Chicago, Tom spent years helping high-profile clients overcome their most challenging problems as a principal at the Boston Consulting Group. Tom’s unique background in innovation strategy, intellectual property, and cutting-edge product development has enabled him to find ways to add value and bring clarity in the most unexpected ways. “I saw what HubTran could do to overcome massive business challenges, and I wanted to be a part of it,” says Tom."
        ]
    ]


matt : Person
matt =
    Person "Matt Bernstein"
        "https://786654.smushcdn.com/1601387/wp-content/uploads/2020/03/matt-bernstein-hubtran.jpg?lossy=1&strip=1&webp=1"
        "CEO"
        [ "Every revolution begins with a vision for something greater. When Matt worked in logistics and technology companies early in his career, he could see that something was missing. He knew there was a better way to make transportation companies more efficient and more profitable."
        , "As it turns out, all paths Matt took in his career led him to where he is today: leadership roles at venture stage businesses and Fortune 500 companies like GE, ArcelorMittal, and RR Donnelley. Advising clients on supply chain strategy at Booz, Allen & Hamilton. An MBA with honors from the Harvard Business School and a BA, magna cum laude, from Duke University. Armed with all of these years of knowledge, it brought Matt to where is today: a leader who wants nothing more than to revolutionize the way transportation companies do business."
        ]

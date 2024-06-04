local json = require("json")
 
_0RBIT = "BaMK1dfayo75s3q1ow6AO64UDpD9SEFbeE8xYrY2fyQ"


BASE_URL = "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/new%20york?unitGroup=us&include=current%2Chours&key=EUEQ4LDRZAS7HY2ZSJTVV76JD&contentType=json"

CurrentData = CurrentData or {}


BASE_URL_OUTCOME = "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/New%20York,%20NY,%20United%20States/last2days?key=EUEQ4LDRZAS7HY2ZSJTVV76JD&include=hours&elements=datetimeEpoch,temp,datetime"

 
OutcomeData = OutcomeData or {}


Handlers.add(
    "Get-Request",
    Handlers.utils.hasMatchingTag("Action", "Sponsored-Get-Request-Outcome"),
    function(msg)
        Send({
            Target = _0RBIT,
            Action = "Get-Real-Data",
            Url = BASE_URL_OUTCOME
        })
        print(Colors.green .. "You have sent a GET Request to the 0rbit process.")
    end
)

Handlers.add(
    "Receive-Data",
    Handlers.utils.hasMatchingTag("Action", "Receive-Response"),
    function(msg)
        local res = json.decode(msg.Data)
        OutcomeData = res
        print(Colors.green .. "You have received the data from the 0rbit process.")
    end
)


Handlers.add(
    "Get-Request",
    Handlers.utils.hasMatchingTag("Action", "Sponsored-Get-Request-Current"),
    function(msg)
        Send({
            Target = _0RBIT,
            Action = "Get-Real-Data",
            Url = BASE_URL
        })
        print(Colors.green .. "You have sent a GET Request to the 0rbit process.")
    end
)

Handlers.add(
    "Receive-Data",
    Handlers.utils.hasMatchingTag("Action", "Receive-Response"),
    function(msg)
        local res = json.decode(msg.Data)
        CurrentData = res
        print(Colors.green .. "You have received the data from the 0rbit process.")
    end
)



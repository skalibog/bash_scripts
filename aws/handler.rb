require 'json'

def handler(event: , context:)
  {
    status_code: 200,
    event: event,
    body: JSON.generate("Hello my dear friend!")
  }
end

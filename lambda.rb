
require 'json'

def handler(event:, context:)
  template_string = "Name: {{name}}"
  # template = Liquid::Template.parse(template_string)
  # output = template.render("name" => "Noah")
  # By default, the response serializer will call #to_json for us
  {
    statusCode: 200,
    body: {
      output: template_string
    }
  }
end


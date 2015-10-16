class OperatorController < ApplicationController
  skip_before_action :verify_authenticity_token

  def answer_call
    people = {
      ENV['TWILIO_NUMBER'] => 'Test'
    }
    name = people[params['From']] || 'Diego'

    response = Twilio::TwiML::Response.new do |r|
      r.Say "Hello #{name}"
    end.text

    render text: response
  end
end

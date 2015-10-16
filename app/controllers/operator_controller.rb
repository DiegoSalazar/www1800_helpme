class OperatorController < ApplicationController
  skip_before_action :verify_authenticity_token

  def answer_call
    twilio_response do |r|
      r.Say "Hello. What is your full name?"
      r.Record maxLength: '4', action: '/accept/name'
    end
  end

  def accept_name
    decoder = new_decoder
    decoder.decode params['RecordingUrl']

    twilio_response do |r|
      r.Say "You said, #{decoder.hypothesis}"
    end
  end

  private

  def twilio_response(&responder)
    render text: Twilio::TwiML::Response.new(&responder).text
  end

  def new_decoder
    Pocketsphinx::Decoder.new Pocketsphinx::Configuration.default
  end
end

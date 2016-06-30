class OperatorController < ApplicationController
  skip_before_action :verify_authenticity_token

  def answer_call
    CallCreator.run params

    twilio_response do |r|
      r.Say "Hello. What is your full name?"
      r.Record maxLength: '4', action: '/accept/name'
    end
  end

  def accept_name
    call = CallCreator.run params

    speech_decoder.decode call.recording_url
    call.update_column :recognized_speech, speech_decoder.hypothesis

    twilio_response do |r|
      r.Say "You said, #{call.recognized_speech}"
    end
  end

  private

  def twilio_response(&responder)
    render text: Twilio::TwiML::Response.new(&responder).text
  end

  def speech_decoder
    @speech_decoder ||= Pocketsphinx::Decoder.new Pocketsphinx::Configuration.default
  end
end

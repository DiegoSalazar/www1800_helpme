class CallsController < InheritedResources::Base

  private

    def call_params
      params.require(:call).permit(:called, :from, :direction, :status, :recording_url, :recording_duration, :call_sid, :account_sid, :from_zip, :from_city, :from_state, :from_country, :meta)
    end
end


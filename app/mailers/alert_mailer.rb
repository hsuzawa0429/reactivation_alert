class AlertMailer < ApplicationMailer
  def today_email
    mail(
      from: 'hiroyuki.suzawa0429@gmail.com',
      to:   'hiroyuki.suzawa0429@gmail.com',
      subject: '検査日当日のご案内'
    )
  end
end

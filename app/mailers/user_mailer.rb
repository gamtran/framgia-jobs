class UserMailer < ActionMailer::Base
  def send_email(entry)
    @entry = entry
    if @entry.cv.present?
      attachments[@entry.cv.file.filename] = File.read(@entry.cv.path)
    end
    mail(from: @entry.email, to: "hr_team@framgia.com", subject: 'CV ung tuyen')
  end

  def thank_mail(entry)
    @entry = entry
    mail(from: "hr_team@framgia.com", to: @entry.email, subject: '[FramgiaVN-HR] Thank you for applying letter')
  end
end

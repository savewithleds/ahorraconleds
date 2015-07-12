class UserMailer < ApplicationMailer

  def comparison_confirmation(comparison)
  	@comparison = comparison

    mail to: comparison.email, subject: "Resumen Comparativa Integra Energía"
  end
end

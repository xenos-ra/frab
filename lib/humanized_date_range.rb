module HumanizedDateRange

  def humanized_date_range
    return '' unless start_date.present?
    I18n.localize(start_date, format: :short_datetime) + 
      I18n.t('time.time_range_seperator') + 
      I18n.localize(end_date, format: :time)
  end

end

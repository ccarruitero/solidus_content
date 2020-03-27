# Let the content come from the entry itself.
module SolidusContent::ContentProviders::RAW
  def self.call(input)
    input.merge(data: input[:options])
  end

  SolidusContent.config.content_providers[:raw] = self
end

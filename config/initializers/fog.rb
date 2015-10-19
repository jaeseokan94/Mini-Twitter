CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIFQV7P5HHCK63LVQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-southeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'baguni94'                          # required
end
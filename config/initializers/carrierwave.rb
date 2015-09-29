CarrierWave.configure do |config|
  config.storage = :upyun
  config.upyun_username = "soizt"
  config.upyun_password = 'zengtao1314'
  config.upyun_bucket = "topten"
  # upyun_bucket_domain 以后将会弃用，请改用 upyun_bucket_host
  # config.upyun_bucket_domain = "my_bucket.files.example.com"
  config.upyun_bucket_host = "http://topten.b0.upaiyun.com"
end
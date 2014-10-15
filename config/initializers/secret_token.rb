# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

MattJones::Application.config.secret_key_base = if Rails.env.development? or Rails.env.test?
                                              ('x' * 30)
                                            else
                                              ENV['SECRET_KEY_BASE']
                                            end

MattJones::Application.config.secret_key = if Rails.env.development? or Rails.env.test?
                        'a4a278b69954820c7a69ef0f34a53aadb1bde312e441f5ec72855e52734a140aba2d58aaf8f99590d9076fcb1d5011bcc660c10f0f635cfeb103c68f2ea0d955'
                      else
                        ENV['DEVISE_SECRET_KEY']
                      end

# Copyright (c) 2008-2013 Michael Dvorkin and contributors.
#
# Fat Free CRM is freely distributable under the terms of MIT license.
# See MIT-LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------

# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

if defined?(FatFreeCRM::Application)
  if Rails.env == 'test'
    FatFreeCRM::Application.config.secret_token = '51aa366864a80316a85cff0d3762347f4ae3d029d548bef034d56e82b1a2ffac5353ee6719d9b64e4354e2a0b1a901679f46a851c360a2ea377188e4b196b6b6'
  else
    raise "Please run 'rake ffcrm:secret' to generate a secret token."
  end
end

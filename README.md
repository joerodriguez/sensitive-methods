Sensitive Methods
=================

Ruby gem for warning developers when they may be accessing sensitive data.

    class Person < ActiveRecord::Base
      sensitive :ssn
      sensitive :zip_code
    end

    p = Person.first
    p.ssn => SensitiveDataError
    p.sensitive_ssn => '213-23-7929'

This allows you to easily search your code base for 'sensitive_' and know where your sensitive data is being used. It also warns developers who may not be familar with the organizations privacy policy (if one exists).

Tests
-----
    rake test
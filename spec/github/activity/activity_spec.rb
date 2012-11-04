# encoding: utf-8

require 'spec_helper'

describe Github::Activity, 'integration' do

  after { reset_authentication_for subject }

  its(:notifications) { should be_a Github::Activity::Notifications }

  its(:starring)      { should be_a Github::Activity::Starring }

  its(:watching)      { should be_a Github::Activity::Watching }
end

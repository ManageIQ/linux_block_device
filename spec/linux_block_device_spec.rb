require 'spec_helper'

describe LinuxBlockDevice do
  it 'has a version number' do
    expect(LinuxBlockDevice::VERSION).not_to be nil
  end

  it '.size' do
    expect(LinuxBlockDevice).to respond_to(:size)
  end
end

require 'rspec'
require "singleton_module"

include SingletonModule

describe 'Extend with Singleton Modules' do

  before(:all) do
    @anyObject = Object.new
    @anyObject.extend Singleton_Module
  end

  it 'Should let Singleton Modules add behaviour' do

    @anyObject.define_singleton_module_method(:a, lambda{50})

    expect(@anyObject.a).to eq(50)

  end

end
require 'spec_helper'

describe Modularize do
	it 'creates a single module' do
		defined?(Fruit).should == nil
		Modularize.create('Fruit')
		defined?(Fruit).should_not == nil
	end

	it 'creates a hietatchy of modules' do 
		defined?(Animals::Cats::Bombay).should == nil
		Modularize.create('Animals::Cats::Bombay')
		defined?(Animals::Cats::Bombay).should_not == nil
	end
end
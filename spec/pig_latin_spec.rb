require 'spec_helper'

describe PigLatin do
  before(:each) do
    @test_cons = PigLatin.translate("glove")
    @test_vowel = PigLatin.translate("egg")
    @test3 = PigLatin.translate("rhythm")
  end
  it 'knows when a word begins with a vowel' do
    expect(@test_cons).to eq(false)
    expect(@test_vowel).to eq("eggway")
  end
end
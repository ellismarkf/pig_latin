require 'spec_helper'

describe PigLatin do
  before(:each) do
    @test_cons = PigLatin.translate("glove")
    @test_vowel = PigLatin.translate("egg")
    @test_y1 = PigLatin.translate("rhythm")
    @test_y2 = PigLatin.translate("yellow")
  end

  it 'knows when a word begins with a vowel' do
    expect(@test_vowel).to eq("eggway")
  end

  it 'moves consonants to the end of a word' do
    expect(@test_cons).to eq("oveglay")
    expect(@test_y1).to eq("ythmrhay")
    expect(@test_y2).to eq("ellowyay")
  end

  it 'knows when a word begins with y' do
    expect(@test_y2).to eq("ellowyay")
  end

end
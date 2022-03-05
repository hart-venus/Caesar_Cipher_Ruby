require './Caesar_Cipher'

describe '#caesar_cipher' do
    it 'formats correctly' do
        expect(caesar_cipher('ab', 2)).to eql('cd')
    end
    it 'ignores punctuation marks, numbers and spaces' do
        expect(caesar_cipher('what 4 string!', 5)).to eql('bmfy 4 xywnsl!')
    end
    it 'preserves capitalization' do
        expect(caesar_cipher('My MoNey', 1)).to eql('Nz NpOfz')
    end
    it 'works with negative numbers' do
        expect(caesar_cipher('Nz NpOfz', -1)).to eql('My MoNey')
    end
    it 'wraps letters back around' do
        expect(caesar_cipher('zzz', 1)).to eql('aaa')
    end
    it 'works with large numbers' do
        expect(caesar_cipher('zAAz', 2022)).to eql('tUUt')
    end
end
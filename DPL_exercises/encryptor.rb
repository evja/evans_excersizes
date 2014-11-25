class Encryptor
  def cipher(rotation)
  	characters = (" ".."z").to_a
  	rotated_characters = characters.rotate(rotation)
  	Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter,rotation)
  	cipher_for_rotation = cipher(rotation)
  	cipher_for_rotation[letter]
  end

  def encrypt(string,rotation)
  	letters = string.split("")

  	results = letters.collect do |letter|
  		encrypted_letter = encrypt_letter(letter,rotation)
  	end

  	results.join
  end
  	
  def decrypt(string,rotation)
  	minus = (rotation).to_i - ((rotation).to_i * 2)
  	letters = string.split("")

  	results = letters.collect do |letter|
  		encrypted_letter = encrypt_letter(letter,minus)
  	end
  	results.join
  end
end
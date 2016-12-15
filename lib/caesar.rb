
$abc_up = [*?A..?Z]
$abc_low = [*?a..?z]
def caesar_encode(string, offset)
  string.split("").map do |character|
  if $abc_low.include?(character)
    new_character = $abc_low[($abc_low.index(character)+ offset)%26]
  elsif $abc_up.include?(character)
  new_character = $abc_up[($abc_up.index(character)+ offset)%26]
else character
  end
 end.join("")
end
caesar_encode("hey", 2)

def caesar_decode(string, offset)
  string.split("").map do |character|
  if $abc_low.include?(character)
    new_character = $abc_low[($abc_low.index(character)-offset)%26]
  elsif $abc_up.include?(character)
  new_character = $abc_up[($abc_up.index(character)- offset)%26]
else character
  end
 end.join("")
end

caesar_decode("hey", 2)
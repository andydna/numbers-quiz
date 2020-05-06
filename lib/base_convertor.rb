# make involutive?
# if use 0x and 0b yes
class BaseConvertor
  DECIMAL_TO_HEX = (
    hsh = Hash.new
    0.upto(9) { |n| hsh[n] = n.to_s }
    hsh.merge({10 =>'A',11=>'B',12=>'C',13=>'D',14=>'E',15=>'F'}))

  class << self
    def to_hex(number)
      ten_to_sixteen(number)
    end

    def ten_to_sixteen(base10)
      base = 16
      number = base10.dup
      digits = ''

      loop do
        digit = number % base
        number /= base

        digits << DECIMAL_TO_HEX[digit]
        break if number.zero?
      end

      "0x" << digits.reverse
    end
  end
end

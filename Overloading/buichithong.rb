#Bui Chi Thong - 1911505310263

class PhanSo
    attr_accessor :tu_263, :mau_263
    def initialize(tu_263, mau_263)
        @tu_263 = tu_263
        @mau_263 = mau_263
    end
    def UCLN( a, b)
        if ( b == 0 )
              return a
        end
        return UCLN( b, a % b )
    end
    def RutGon( a, b)
        ucln = UCLN(a,b)
        if (ucln == 0)
            return 0
        end
        a = a / ucln
        b = b / ucln
        if(a==0 or b==1)
            return "#{a}"
        end
        return "#{a}/#{b}"
    end   

    def + (object)
        tu_263 = self.tu_263 * object.mau_263 + object.tu_263 * self.mau_263
        mau_263 = self.mau_263 * object.mau_263
        return RutGon(tu_263,mau_263)

    end

    def - (object)
        tu_263 = self.tu_263 * object.mau_263 - object.tu_263 * self.mau_263
        mau_263 = self.mau_263 * object.mau_263
        return RutGon(tu_263,mau_263)
    end

    def * (object)
        tu_263 = self.tu_263 * object.tu_263
        mau_263 = self.mau_263 * object.mau_263
        return RutGon(tu_263,mau_263)
    end

    def / (object)
        tu_263 = self.tu_263 * object.mau_263
        mau_263 = self.mau_263 * object.tu_263

        return RutGon(tu_263,mau_263)
    end
    
end

def Cong(ps1, ps2)
    tu_263 = ps1.tu_263 * ps2.mau_263 + ps2.tu_263 * ps1.mau_263
    mau_263 = ps1.mau_263 * ps2.mau_263
    ps = PhanSo.new(tu_263, mau_263)
    return ps
end

def Tru(ps1, ps2)
    tu_263 = ps1.tu_263 * ps2.mau_263 - ps2.tu_263 * ps1.mau_263
    mau_263 = ps1.mau_263 * ps2.mau_263
    ps = PhanSo.new(tu_263, mau_263)
    return ps
end

def Nhan(ps1, ps2)
    tu_263 = ps1.tu_263 * ps2.tu_263
    mau_263 = ps1.mau_263 * ps2.mau_263
    ps = PhanSo.new(tu_263, mau_263)
    return ps
end

def Chia(ps1, ps2)
    tu_263 = ps1.tu_263 * ps2.mau_263
    mau_263 = ps1.mau_263 * ps2.tu_263
    ps = PhanSo.new(tu_263, mau_263)
    return ps
end

puts "Nhap phan so 1: "
print "Nhap tu so 1: "
tu1_263 = gets.to_i
mau1_263 = 0
loop do
    print "Nhap mau so 1: "
    mau1_263 = gets.to_i
    if mau1_263 != 0
        break
    end
end
ps1 = PhanSo.new(tu1_263, mau1_263)

puts "Nhap phan so 2: "
print "Nhap tu so 2: "
tu2_263 = gets.to_i
mau2_263 = 0
loop do
    print "Nhap mau so 2: "
    mau2_263 = gets.to_i
    if mau2_263 != 0
        break
    end
end

ps2 = PhanSo.new(tu2_263, mau2_263)

tong = Cong(ps1, ps2)
hieu = Tru(ps1, ps2)
tich = Nhan(ps1, ps2)
thuong = Chia(ps1, ps2)

puts "Bai 1:" 
puts "Tong 2 phan so: #{ps1.RutGon(tong.tu_263,tong.mau_263)}"
puts "Hieu 2 phan so: #{ps1.RutGon(hieu.tu_263,hieu.mau_263)}"
puts "Tich 2 phan so: #{ps1.RutGon(tich.tu_263,tich.mau_263)}"
puts "Thuong 2 phan so: #{ps1.RutGon(thuong.tu_263,thuong.mau_263)}"

puts "Bai 2:"
puts "Tong 2 phan so: #{(ps1+ps2)}"
puts "Hieu 2 phan so: #{(ps1-ps2)}"
puts "Tich 2 phan so: #{(ps1*ps2)}"
puts "Thuong 2 phan so: #{(ps1/ps2)}"
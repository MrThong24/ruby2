class Canbo263
    attr_accessor :hoTen263, :tuoi263, :gioiTinh263, :diaChi263
  
    def initialize(hoTen263, tuoi263, gioiTinh263, diaChi263)
      @hoTen263 = hoTen263
      @tuoi263 = tuoi263
      @gioiTinh263 = gioiTinh263
    end
  
    def to_s
      print "Hoten: #{@hoTen263} | tuoi: #{@tuoi263} | gioi tinh: #{@gioiTinh263} | dia Chi: #{@diaChi263}"
    end
  end
  
  class CongNhan < Canbo263
    attr_accessor :bac263
  
    def initialize(hoTen263, tuoi263, gioiTinh263, diaChi263, bac263)
      super(hoTen263, tuoi263, gioiTinh263, diaChi263)
      @bac263 = bac263
    end
  
    def to_s
      super
      print " | bac: #{@bac263}"
    end
  end
  
  class KySu < Canbo263
    attr_accessor :nganhDaoTao263
  
    def initialize(hoTen263, tuoi263, gioiTinh263, diaChi263, nganhDaoTao263)
      super(hoTen263, tuoi263, gioiTinh263, diaChi263)
      @nganhDaoTao263 = nganhDaoTao263
    end
  
    def to_s
      super
      print " | nganh dao tao: #{@nganhDaoTao263}"
    end
  end
  
  class NhanVien < Canbo263
    attr_accessor :congViec263
  
    def initialize(hoTen263, tuoi263, gioiTinh263, diaChi263, congViec263)
      super(hoTen263, tuoi263, gioiTinh263, diaChi263)
      @congViec263 = congViec263
    end
  
    def to_s
      super
      print " | cong viec: #{@congViec263} "
    end
  end
  
  class QLCB
    attr_accessor :DSCB263
  
    def initialize()
      @DSCB263 = []
    end
  
    def themCB(canbo263)
      @DSCB263 << canbo263
    end
  
    def timKiem(tenCB263)
      rs263 = @DSCB263.select{|cb263| cb263 if cb263.hoTen263.upcase.include? tenCB263.upcase}
      return rs263
    end
  
    def hienThiDS
      @DSCB263.each { |cb263| puts cb263 }
    end
  end
  
  ql263 = QLCB.new
  # ql.themCB(NhanVien.new('Thien', 21, 'nam', 'hue', 'fe'))
  ql263.hienThiDS
  
  chon263 = -1
  while chon263 != 0 do
    puts
    puts "1 - Them can bo"
    puts "2 - Tim kiem theo ho ten"
    puts "3 - hien thi danh sach can bo"
    puts "0 - Thoat"
    print "Chon: "
    chon263 = gets.to_i
    puts
    case chon263
      when 1
        loai263 = 0
        khac263 = ""
        while loai263 < 1 || loai263 > 4 do
          puts "1 - Cong nhan"
          puts "2 - Ky su"
          puts "3 - Nhan vien"
          print "Chon loai can bo: "
          loai263 = gets.to_i
        end
        print "Ho ten: "
        hoTen263 = gets
        print "Tuoi: "
        tuoi263 = gets
        print "Gioi tinh: "
        gioiTinh263 = gets
        print "Dia chi: "
        diaChi263 = gets
  
        case loai263
          when 1
            print "Bac: "
            khac263 = gets
            ql263.themCB(CongNhan.new(hoTen263, tuoi263, gioiTinh263, diaChi263, khac263))
          when 2
            print "Nganh dao tao: "
            khac263 = gets
            ql263.themCB(KySu.new(hoTen263, tuoi263, gioiTinh263, diaChi263, khac263))
          else
            print "Cong viec: "
            khac263 = gets
            ql263.themCB(NhanVien.new(hoTen263, tuoi263, gioiTinh263, diaChi263, khac263))
        end
        
      when 2
        ten263 = ""
        while ten263 == "" do
          print "Nhap ten can bo: "
          ten263 = gets
        end
        kq263 = ql263.timKiem(ten263)
        kq263.each { |cb263| puts cb263 }
      when 3
        ql263.hienThiDS
      when 0
        puts "Da thoat!"
      else
        puts "Khong hop le"
    end
  end
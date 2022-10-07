puts "Họ tên: Bùi Chí Thông"
puts "Mã sinh viên: 1911505310263"

class PTGT
    attr_accessor :id263, :hangSX263, :namSX263, :dongXe263, :giaBan263, :bienSo263, :mauXe263
    def initialize(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263)
        @id263 = id263
        @hangSX263 = hangSX263
        @namSX263 = namSX263
        @dongXe263 = dongXe263
        @giaBan263 = giaBan263
        @bienSo263 = bienSo263
        @mauXe263 = mauXe263
    end
    def show
        puts "id: #{@id263}"
        puts "Hang SX: #{@hangSX263}"
        puts "Nam SX: #{@namSX263}"
        puts "Dong Xe: #{@dongXe263}"
        puts "Gia Ban: #{@giaBan263}"
        puts "Bien So: #{@bienSo263}"
        puts "Mau Xe: #{@mauXe263}"
    end
end

class Oto < PTGT
    attr_accessor :soChoNgoi263, :kieuDongCo263, :nhienLieu263, :soTuiKhi263, :ngayDangKiem263
    def initialize(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263, soChoNgoi263, kieuDongCo263, nhienLieu263, soTuiKhi263, ngayDangKiem263)
        super(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263)
        @soChoNgoi263 = soChoNgoi263
        @kieuDongCo263 = kieuDongCo263
        @nhienLieu263 = nhienLieu263
        @soTuiKhi263 = soTuiKhi263
        @ngayDangKiem263 = ngayDangKiem263
    end
    def show
        super
        puts "So Cho Ngoi: #{@soChoNgoi263}"
        puts "Kieu Dong Co: #{@kieuDongCo263}"
        puts "Nhien Lieu: #{@nhienLieu263}"
        puts "So Tui Khi: #{@soTuiKhi263}"
        puts "Ngay Dang Kiem: #{@ngayDangKiem263}"
    end
end

class XeMay < PTGT
    attr_accessor :congSuat263, :dungTichBinhXang263
    def initialize(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263, congSuat263, dungTichBinhXang263)
        super(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263)
        @congSuat263 = congSuat263
        @dungTichBinhXang263 = dungTichBinhXang263
    end
    def show
        super
        puts "Cong Suat: #{@congSuat263}"
        puts "Dung Tich Binh Xang: #{@dungTichBinhXang263}"
    end
end

class XeTai < PTGT
    attr_accessor :trongTai263
    def initialize(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263, trongTai263)
        super(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263)
        @trongTai263 = trongTai263
    end
    def show 
        super
        puts "Trong Tai: #{@trongTai263}"
    end
end

class QLPTGT
    attr_accessor :dsptgt263

    def initialize()
        @dsptgt263 = []
    end
    
    def themPTGT(ptgt263)
        @dsptgt263 << ptgt263
    end

    def timKiemByHangSX(keyword263)
        rs263 = @dsptgt263.select{|ptgt263| ptgt263 if ptgt263.hangSX263.upcase.include? keyword263.upcase}
        return rs263
    end

    def timKiemByMau(keyword263)
        rs263 = @dsptgt263.select{|ptgt263| ptgt263 if ptgt263.mauXe263.upcase.include? keyword263.upcase}
        return rs263
    end

    def timKiemByBienSo(keyword263)
        rs263 = @dsptgt263.select{|ptgt263| ptgt263 if ptgt263.bienSo263.upcase.include? keyword263.upcase}
        return rs263
    end

    def delete(id263)
        @dsptgt263.each do |pt|
            if pt.id263 == id263
                @dsptgt263.delete(pt)
                return true
            end
        end
        return false
    end

    def show_list
        @dsptgt263.each {|ptgt263| ptgt263.show}
    end
end

qlptgt263 = QLPTGT.new

while true
    puts "1. Them moi phuong tien giao thong."
    puts "2. Tim kiem theo hang san xuat."
    puts "3. Tim kiem theo mau xe."
    puts "4. Tim kiem theo bien so."
    puts "5. Hien thi danh sach phuong tien."
    puts "6. Xoa phuong tien giao thong."
    puts "7. Thoat."
    print "Choose your option: "
    option263 = gets.to_i
    case option263
    when 1
        puts "Nhap thong tin phuong tien:"
        print "Nhap id: "
        id263 = gets.to_i
        print "Nhap hang san xuat: "
        hangSX263 = gets
        print "Nhap nam san xuat: "
        namSX263 = gets.to_i
        print "Nhap dong xe: "
        dongXe263 = gets
        print "Nhap gia ban: "
        giaBan263 = gets
        print "Nhap mau xe: "
        mauXe263 = gets
        print "Nhap bien so: "
        bienSo263 = gets
        option_pt263 = 0
        while option_pt263<1 || option_pt263>4
            puts "1. O to."
            puts "2. Xe may."
            puts "3. Xe tai."
            print "Chon loai phuong tien: "
            option_pt263 = gets.to_i
            case option_pt263
            when 1
                print "Nhap so cho ngoi: "
                soChoNgoi263 = gets.to_i
                print "Nhap kieu dong co: "
                kieuDongCo263 = gets
                option_nhienLieu263 = 0
                while option_nhienLieu263 <1 || option_nhienLieu263 >2
                    puts "1. Xang."
                    puts "2. Dau."
                    print "Chon nhien lieu: "
                    option_nhienLieu263 = gets.to_i
                    case option_nhienLieu263
                    when 1
                        nhienLieu263 = "Xang"
                    when 2
                        nhienLieu263 = "Dau"
                    end    
                end
                print "Nhap so tui khi: "
                soTuiKhi263 = gets.to_i
                print "Nhap ngay dang kiem: "
                ngayDangKiem263 = gets
                qlptgt263.themPTGT(Oto.new(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263, soChoNgoi263, kieuDongCo263, nhienLieu263, soTuiKhi263, ngayDangKiem263))
            when 2
                print "Nhap dung tich binh xang: "
                dungTichBinhXang263 = gets
                print "Nhap cong suat: "
                congSuat263 = gets
                qlptgt263.themPTGT(XeMay.new(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263, congSuat263, dungTichBinhXang263))
            when 3
                print "Nhap trong tai: "
                trongTai263 = gets
                qlptgt263.themPTGT(XeTai.new(id263, hangSX263, namSX263, dongXe263, giaBan263, bienSo263, mauXe263, trongTai263))
            end
        end              
        when 2
            print "Nhap hang san xuat can tim: "
            keyword263 = gets
            rs263 = qlptgt263.timKiemByHangSX(keyword263)
            rs263.each {|pt263| pt263.show}
        when 3
            print "Nhap mau can tim: "
            keyword263 = gets
            rs263 = qlptgt263.timKiemByMau(keyword263)
            rs263.each {|pt263| pt263.show}
        when 4
            print "Nhap bien so can tim: "
            keyword263 = gets
            rs263 = qlptgt263.timKiemByBienSo(keyword263)
            rs263.each {|pt263| pt263.show}
        when 5
            puts "Danh sach phuong tien giao thong: "
            qlptgt263.show_list
        when 6
            print "Nhan id phuong tien can xoa: "
            delete263 = gets.to_i
            isDeleted263 = qlptgt263.delete(delete263)
            if (isDeleted263 == true)
                puts "Da xoa"
            else
                puts "Co loi. Xoa khong thanh cong"
            end
            # qlptgt263.show_list
        when 7
            break
    end
end
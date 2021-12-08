@extends('layouts.homepage')
@section('content')
@php
    $times = [
        '07:00:00',
        '08:00:00',
        '09:00:00',
        '10:00:00',
        '11:00:00',
        '12:00:00',
        '13:00:00',
        '14:00:00',
        '15:00:00',
        '16:00:00',
        '17:00:00',
        '18:00:00',
        '19:00:00',
        '20:00:00',
        '21:00:00',
        '22:00:00',
        '23:00:00',
        '24:00:00'
    ];

    $day = date("D");

    // for ($i=0; $i < 7; $i++) { 
        
    // }
@endphp
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h2 class="text-primary" style="font-size:20px;">Pastikan Biodata Anda Sudah Benar !!!</h2>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('/home') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('/cari_mentor') }}">Cari Mentor</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('/pengajuan/reservasi') }}">Deskripsi Mentor</a></li>
                        <li class="breadcrumb-item active ">Mulai Pengajuan</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title text-center">SPESIFIKASI RESERVASI</h3>
                        </div>
                        <div class="card-body mt-3">
                            <form class="form-horizontal" id="reservasi" action="{{ url('/user/pengajuan/reservasi') }}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-12">
                                        <input id="harga_perjam" type="hidden" name="harga_perjam" value="{{ $data_mentor->harga_perjam }}">
                                        <input id="id_mentor" type="hidden" name="id_mentor" value="{{ $data_mentor->user_id }}">
                                        <div class="form-group">
                                            <h5>Kebutuhan</h5>
                                            @foreach ($kebutuhan as $key => $value)
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="kebutuhan{{$key}}" class="custom-control-input" onclick="radio({{ $value->id }});" name="kebutuhan" value="{{ $value->id }}">
                                                    <label for="kebutuhan{{$key}}" class="custom-control-label">{{ $value->kebutuhan }}</label>
                                                    {{-- </br> --}}
                                                </div>
                                            @endforeach
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="kebutuhan" class="custom-control-input" onclick="radio(radio(99);" name="kebutuhan" value="99">
                                                <label for="kebutuhan" class="custom-control-label">Lainnya</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <h5 for="spek_kebutuhan">Ceritakan Spesifikasi Kebutuhan Anda</h5>
                                            <textarea id="spek_kebutuhan" class="col-md-12 form-control" name="spek_kebutuhan" maxlength="200" style="height:100%;"
                                                placeholder="Misal : Saya bukan developer tapi saya ingin belajar ngoding, saya butuh mentor yang bisa mengajari saya dari nol."
                                                required rows="4"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h5>Reservasi</h5>
                                        <span class="h6 text-red d-none errors">Jam mulai harus lebih kecil dari jam selesai</span>
                                        @foreach ($hari as $val)
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" onclick="reservasi({{ $val->id }})" id="checkbox{{$val->id}}"
                                                                name="hari_dibutuhkan[]" value="{{ $val->id }}">
                                                            <label for="checkbox{{$val->id}}" class="custom-control-label">{{ $val->hari->hari }}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <select class="form-control" onchange="changePriceStart({{ $val->id }})" id="start{{ $val->id }}" disabled>
                                                            <option selected></option>
                                                            @foreach ($times as $time)
                                                                @if((int)$val->start_jam <= (int)$time && (int)$val->end_jam >= (int)$time) <option value="{{ $time }}">{{ substr($time,0,5) }}</option> @endif
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-1 text-center pt-2">
                                                    <label>s/d</label>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <select class="form-control" onchange="changePriceEnd({{ $val->id }})" id="end{{ $val->id }}" disabled>
                                                            <option selected></option>
                                                            @foreach ($times as $time)
                                                                @if((int)$val->start_jam <= (int)$time && (int)$val->end_jam >= (int)$time) <option value="{{ $time }}">{{ substr($time,0,5) }}</option> @endif
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="col-sm-4">
                                        <h5>Hari dan Jam Kesediaan</h5>
                                        @foreach ($hari as $key => $val)
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" class="custom-control-input" id="checkbox{{$val->id}}" value="{{ $val->id }}">
                                                        <label for="checkbox{{$val->id}}" class="custom-control-label">{{ $val->hari->hari }}</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" value="{{ substr($val->start_jam, 0, 5) }}" disabled>
                                                </div>
                                            </div>
                                            <div class="col-sm-1 text-center pt-2">
                                                <label>s/d</label>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" value="{{ substr($val->end_jam, 0, 5) }}" disabled>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                    
                                    <div class="col-sm-4">
                                        <h5>Waktu tidak tersedia</h5>
                                        @foreach ($not_avaliable_time as $na)
                                        <div class="row text-red">
                                            <div class="col-sm-5">
                                                <div class="form-group">
                                                    <label class="mt-2">{{ $na->date}}</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group">
                                                    <label class="mt-2">{{ substr($na->start_jam, 0, 5) }}</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <label class="mt-2">s/d</label>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <label class="mt-2">{{ substr($na->end_jam, 0, 5) }}</label>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h5>Tipe Pengajaran Yang Anda Perlukan</h5>
                                        @foreach ($tipe_pengajaran as $key => $val)
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="pengajaran{{$key}}" class="custom-control-input" name="tipe_pengajaran" value="{{ $val->tipe_pengajaran_id }}">
                                            <label for="pengajaran{{$key}}" class="custom-control-label">{{ $val->tipe_pengajaran->tipe }}</label>
                                            {{-- </br> --}}
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                                <hr>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <p class="text-danger"><i>*Jumlah Jam Dikalikan dengan Jumlah Hari dan Dikalikan
                                                dengan Harga Reservasi /Jam.</i></p>
                                        <h3 id="sub_total_view"><b>Sub Total : Rp. 0</b></h3>
                                        <input id="sub_total" type="hidden" name="sub_total" readonly>
                                    </div>
                                </div>
                                <div class="form-group row float-right">
                                    <a type="submit" href="{{ url('/cari_mentor') }}" class="btn btn-danger mr-2"><i class="fa fa-times"></i> Batalkan</a>
                                    <button type="submit" class="btn btn-primary" onclick="return confirm('Apakah Anda Yakin Dengan Data Anda?')"><i
                                            class="fa fa-save"></i> Konfirmasi Pemesanan</button>
                                </div>
                            </form>
                        </div>
                        {{-- <div class="card-body mt-3">
                            <form class="form-horizontal" action="{{ url('/user/pengajuan/reservasi') }}" method="post">
                                @csrf
                                <div class="form-group row">
                                    <input id="harga_perjam" type="hidden" name="harga_perjam"
                                        value="{{ $data_mentor->harga_perjam }}">
                                    <input id="id_mentor" type="hidden" name="id_mentor"
                                        value="{{ $data_mentor->user_id }}">
                                    <h3 class="text-secondary text-center col-md-12">SPESIFIKASI RESERVASI</h3>
                                    <div class="col-md-12" style="margin-bottom:1%;">
                                        <label for="">Kebutuhan</label><br>
                                        @foreach ($kebutuhan as $value)
                                            <input type="radio" class="kebutuhan" onclick="radio({{ $value->id }});"
                                                name="kebutuhan" value="{{ $value->id }}"> {{ $value->kebutuhan }}
                                            </br>
                                        @endforeach
                                        <input type="radio" class="kebutuhan" onclick="radio(99);" name="kebutuhan"
                                            value="99"> Lainnya</br>
                                        <input id="kebutuhan_lainnya" type="text" class="form-control"
                                            style="display:none;" name="kebutuhan_lainnya"
                                            placeholder="Silahkan Masukkan Yang Anda Butuhankan">
                                    </div>
                                    <div class="col-md-12" style="margin-bottom:5%;">
                                        <label for="spek_kebutuhan">Ceritakan Spesifikasi Kebutuhan Anda</label>
                                        <textarea id="spek_kebutuhan" class="col-md-12 form-control" name="spek_kebutuhan"
                                            maxlength="200" style="height:100%;"
                                            placeholder="Misal : Saya bukan developer tapi saya ingin belajar ngoding, saya butuh mentor yang bisa mengajari saya dari nol."
                                            required></textarea>
                                    </div>
                                    <div class="col-md-12" style="margin-bottom:1%;">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <label for="" class="card-title">Hari Pembelajaran dan Jam Kesediaan</label>
                                                @foreach ($hari as $key => $val)
                                                    <div class="form-group">
                                                        <div class="col-6">
                                                            <input type="checkbox" class="ml-3" name="hari_dibutuhkan[]"
                                                            value="{{ $val->id }}"> {{ $val->hari->hari }}
                                                        </div>
                                                        <div class="col-6">
                                                            <input type="time" value="{{ $val->start_jam }}" readonly>
                                                            <label>s/d</label>
                                                            <input type="time" value="{{ $val->end_jam }}" readonly>
                                                        </div>
                                                    </div>
                                                @endforeach
                                                <!-- <input id="jumlah_hari_dipilih" type="hidden" name="jumlah_hari_dipilih" readonly> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12" style="margin-bottom:1%;">
                                        <label for="" class="col-md-12">Tipe Pengajaran Yang Anda Perlukan</label>
                                        @foreach ($tipe_pengajaran as $val)
                                            <input type="radio" class="ml-3" name="tipe_pengajaran"
                                                value="{{ $val->tipe_pengajaran_id }}">
                                            {{ $val->tipe_pengajaran->tipe }}
                                        @endforeach
                                    </div>
                                    <div class="col-md-12">
                                        <label for="harga_jam">Jumlah Jam Yang Anda Perlukan</label>
                                        <input id="jumlah_jam" class="col-md-12 form-control" type="number"
                                            name="jumlah_jam" placeholder="Jumlah Jam Yang Anda Perlukan" required>
                                    </div>
                                </div>
                                <hr>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <p class="text-danger"><i>*Jumlah Jam Dikalikan dengan Jumlah Hari dan Dikalikan
                                                dengan Harga Reservasi /Jam.</i></p>
                                        <h3 id="sub_total_view"><b>Sub Total : Rp. 0</b></h3>
                                        <input id="sub_total" type="hidden" name="sub_total" readonly>
                                    </div>
                                </div>
                                <hr>
                                <div class="form-row" style="margin-left:20%;">
                                    <div class="form-group mt-4 mb-5 col-md-8">
                                        <a type="submit" href="{{ url('/cari_mentor') }}" class="btn btn-danger"><i
                                                class="fa fa-times"></i> Batalkan</a>
                                        <button type="submit" class="btn btn-primary"
                                            onclick="return confirm('Apakah Anda Yakin Dengan Data Anda?')"><i
                                                class="fa fa-save"></i> Konfirmasi Pemesanan</button>
                                    </div>
                                </div>
                            </form>
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            console.log("Ready !");

            var sub_total = 0

            countChecked();
            $("input[type=checkbox]").on("click", countChecked);
            
            // get form input jumlah jam
            // var jumlah_jam = document.getElementById("jumlah_jam");
            // jumlah_jam.addEventListener("keyup", function(e) {
            //     var jumlah_hari_dipilih = $('input[name="hari_dibutuhkan[]"]:checked').length;
            //     var get_harga = $('#harga_perjam').val();
            //     // var jumlah_hari_dipilih = $('#jumlah_hari_dipilih').val();
            //     jumlah_jam.value = this.value;
            //     var jumlah = jumlah_jam.value;
            //     var sub_total = jumlah_hari_dipilih * jumlah * get_harga;
                
            //     sub_total = sub_total.toString(),
            //     sisa = sub_total.length % 3,
            //     rupiah = sub_total.substr(0, sisa),
            //     ribuan = sub_total.substr(sisa).match(/\d{3}/gi);

            //     if (ribuan) {
            //         separator = sisa ? '.' : '';
            //         rupiah += separator + ribuan.join('.');
            //     }

            //     total = 'Rp. ' + rupiah;
            //     console.log(total);

            //     $('#sub_total_view').empty();
            //     $('#sub_total_view').append('<h3 id="sub_total_view"><b>Sub Total : ' + total + '</b></h3>');
            //     $('#sub_total').empty();
            //     $('#sub_total').val(total);
            // });
        });

        function reservasi(counter)
        {
            if ($(`#checkbox${counter}`).is(":checked")) {
                $('input[name="hari_dibutuhkan[]"').prop('disabled', true)
                $(`#checkbox${counter}`).prop('disabled', false)
                $(`#start${counter}`).prop('disabled', false)
                $(`#end${counter}`).prop('disabled', false)
            }else{
                $('input[name="hari_dibutuhkan[]"').prop('disabled', false)
                $(`#start${counter}`).prop('disabled', true)
                $(`#end${counter}`).prop('disabled', true)
            }
        }

        function changePriceStart(counter)
        {
            calculate(counter)
        }

        function changePriceEnd(counter)
        {
            calculate(counter)
        }

        function calculate(counter)
        {
            var price_hour = $('#harga_perjam').val();
            var start_hour = $(`#start${counter}`).val()
            var end_hour = $(`#end${counter}`).val()
            if (start_hour > end_hour)
                $('.errors').removeClass('d-none')
            else
                $('.errors').addClass('d-none')

            var hour = end_hour.substr(0,2) - start_hour.substr(0,2)

            var total = hour * price_hour
            total = total.toString(),
            sisa = total.length % 3,
            rupiah = total.substr(0, sisa),
            ribuan = total.substr(sisa).match(/\d{3}/gi);
            console.log(ribuan)
            
            if (ribuan) {
                separator = sisa ? '.' : '';
                rupiah += separator + ribuan.join('.');
            }
            
            totals = 'Rp. ' + rupiah;
            
            $('#sub_total_view').empty();
            $('#sub_total_view').append('<h3 id="sub_total_view"><b>Sub Total : ' + totals + '</b></h3>');
            $('#sub_total').empty();
            $('#sub_total').val(totals);
        }

        function radio(obj) {
            if (obj == 99) {
                $('#kebutuhan_lainnya').show();
                $("#kebutuhan_lainnya").prop('required', true);
            } else {
                $('#kebutuhan_lainnya').hide();
                $("#kebutuhan_lainnya").prop('required', false);
            }
        }
        // // get value pilihan hari yang di pilih
        var countChecked = function() {
            // var n = $("input:checked").length;
            // $('#jumlah_hari_dipilih').val(n);
            $('#jumlah_jam').val("");
            $('#sub_total_view').empty();
            $('#sub_total_view').append('<h3 id="sub_total_view"><b>Sub Total : Rp. 0</b></h3>');
        };
       
        // FUNCTION UNTUK CONVERT KE RUPIAH DI KEYUP
        function convertRupiah(angka, prefix) {
            var number_string = angka.replace(/[^,\d]/g, "").toString(),
                split = number_string.split(","),
                sisa = split[0].length % 3,
                rupiah = split[0].substr(0, sisa),
                ribuan = split[0].substr(sisa).match(/\d{3}/gi);

            if (ribuan) {
                separator = sisa ? "." : "";
                rupiah += separator + ribuan.join(".");
            }
            rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
            return prefix == undefined ? rupiah : rupiah ? prefix + rupiah : "";
        }
        // jumlah_jam.addEventListener('keydown', function(event) {
        //     console.log(jumlah_jam.value);
        //     $('#sub_total_view').empty();
        //     $('#sub_total_view').append('<h3 id="sub_total_view"><b>Sub Total : Rp. '+get_harga+'</b></h3>');
        // });
    </script>
@endsection

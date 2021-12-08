<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/home" class="brand-link text-center">
        <span class="brand-text font-weight-light ">Bangku Privat</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="info">
                <h3 class="text-light" >{{ auth()->user()->nama}}</h3>
            </div>
        </div>
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item has-treeview ">
                    <a href="#" class="nav-link ">
                        <i class="fas fa-bars"></i>
                        <p>Menu {{auth()->user()->level->level}}
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    @if(auth()->user()->level_id == 3)
                    <ul class="nav nav-treeview">
                        <li class="nav-item has-treeview ">
                            <a href="" class="nav-link ">
                                {{-- <i class="fas fa-bars"></i> --}}
                                <p>
                                    Kelola Mentor
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{url('/lihatdatamentor')}}" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Lihat Data Mentor</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Perubahan Data Kelas Mentor</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Kelas Selesai</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item has-treeview ">
                            <a href="" class="nav-link ">
                                {{-- <i class="fas fa-bars"></i> --}}
                                <p>
                                    Kelola User
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{url('/lihatdatauser')}}" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Lihat Data User</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Pengajuan Sebagai Mentor</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Permintaan Mentor</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Pembayaran Masuk</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    @endif
                    @if(auth()->user()->level_id != 3)
                        <li class="nav-item">
                            <a href="#" class="nav-link ">{{-- Menu " active "dihilangkan --}}
                                <i class="far fa-circle nav-icon"></i>
                                <p>Histori Pemesanan</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Cari Mentor</p>
                            </a>
                        </li>
                    @endif
                    @if(auth()->user()->level_id == 2 )
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Permintaan Privat</p>
                            </a>
                        </li>
                    @endif
                    @if(auth()->user()->level_id == 1 )
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pengajuan Sebagai Mentor</p>
                            </a>
                        </li>
                    @endif
                        <li class="nav-item">
                            <a href="#" class="nav-link ">{{-- Menu " active "dihilangkan --}}
                                <i class="far fa-circle nav-icon"></i>
                                <p>Akun & Pengaturan</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Bantuan</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('logout') }}"
                        onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

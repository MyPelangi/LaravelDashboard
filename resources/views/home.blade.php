@extends('layout/main')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Dashboard</h1>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-primary">
                  <i class="far fa-user"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Total Cabang</h4>
                  </div>
                  <div class="card-body">
                    {{$total_cabang}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-danger">
                  <i class="far fa-newspaper"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Total Penjualan</h4>
                  </div>
                  <div class="card-body">
                    {{ $total_penjualan }}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-warning">
                  <i class="far fa-file"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Penjualan Terbanyak</h4>
                  </div>
                  <div class="card-body">
                    {{$max_nominal->cabang->nama_cabang}}
                  </div>
                  <div>
                    {{$max_nominal->total_nominal}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4">
                <div class="card gradient-bottom">
                  <div class="card-header">
                    <h4>Top 3 Sales</h4>
                    {{-- <div class="card-header-action dropdown">
                      <a href="#" data-toggle="dropdown" class="btn btn-danger dropdown-toggle">Month</a>
                      <ul class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                        <li class="dropdown-title">Select Period</li>
                        <li><a href="#" class="dropdown-item">Today</a></li>
                        <li><a href="#" class="dropdown-item">Week</a></li>
                        <li><a href="#" class="dropdown-item active">Month</a></li>
                        <li><a href="#" class="dropdown-item">This Year</a></li>
                      </ul>
                    </div> --}}
                  </div>
                  <div class="card-body" id="top-5-scroll">
                    <ul class="list-unstyled list-unstyled-border">
                    @foreach ($penjualanTerbesar as $penjualan)
                        <li class="media">
                            <img class="mr-3 rounded" width="55" src="../assets/img/products/product-3-50.png" alt="product">
                            <div class="media-body">
                                <div class="media-title">{{ $penjualan->cabang->nama_cabang }}</div>
                                <div class="mt-1">
                                    <div class="budget-price">
                                    <div class="budget-price-label">{{ $penjualan->total_nominal }}</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    @endforeach  
                    </ul>
                  </div>
                </div>
            </div>
            <div class="col-8">
              <div class="card">
                <div class="card-header">
                  <h4>Indonesian Map</h4>
                </div>
                <div class="card-body">
                  <div id="visitorMap3"></div>
                </div>
              </div>
            </div>
        </div>
    </section>
@endsection
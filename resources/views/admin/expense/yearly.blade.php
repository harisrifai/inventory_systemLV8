@extends('admin.layouts.app')

@section('main-content')
		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<div class="content container-fluid">


                <div class="card">
                    @include('validate')
                    <div class="card-header">
                        <h4 class="card-title mb-0">
                            @php
                                $year = date("Y");
                                $expense = DB::table('expenses') -> where('month', $year) -> sum('amount');
                            @endphp
                          @if( !empty( $year))
                          <p class="text-center text-danger">  <strong>{{ $year  }} Expense</strong> </p>
                          @endif
                            Yearly Expense
                            <a class="btn btn-primary btn-sm pull-right" href="{{ route('expense.create') }}">Add Expense</a></h4>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="data-table-data" class="table table-striped table-bordered mb-0">
                                <thead>


                                    <tr>
                                        <th>SL</th>

                                        <th>Expense Deatails</th>


                                        <th>Date</th>
                                        <th>Amount</th>
                                        <th>Action</th>



                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($yearly as $data)
                                    <tr>
                                        <td>{{ $loop -> index+1 }}</td>



                                        <td>{{ $data -> details }}</td>
                                        <td>{{ $data -> date }}</td>
                                        <td>{{ $data -> amount }}</td>


                                        <td>

                                            {{-- <a class=" btn btn-primary btn-sm" href="">View</a> --}}

                                            <a class=" btn btn-warning btn-sm" href="">Edit</a>

                                           <form style="display: inline;" action="" method="POST">

                                                <button id="delete" class="btn btn-danger btn-sm">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach


                                </tbody>
                            </table>
                        </div>
                        @php
                        $year = date("Y");
                        $expense = DB::table('expenses') -> where('year', $year) -> sum('amount');
                    @endphp
                  @if( !empty( $expense))
                  <p class="text-center text-danger" style="font-size: 24px;"><strong>Total : </strong> {{ $expense  }} </</p>
                  @endif
                    </div>
                </div>




			</div>
		</div>

@endsection

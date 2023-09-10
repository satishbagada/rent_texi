@extends('admin.master')
@section('content')
<!-- Page Content  -->

<div class="container-fluid">
   <div class="row">
      <div class="col-sm-12">
         <div class="iq-card">
            <div class="iq-card-header d-flex justify-content-between">
               <div class="iq-header-title">
                  <h4 class="card-title">Editable Table</h4>
               </div>
            </div>
            <div class="iq-card-body">
               <div id="table" class="table-editable">
                  <span class="table-add float-right mb-3 mr-2">
                     <button class="btn btn-sm iq-bg-success"><i class="ri-add-fill"><span class="pl-1">Add New</span></i>
                     </button>
                  </span>
                  <table class="table table-bordered table-responsive-md table-striped text-center" id="datatable">
                     <thead>
                        <tr>
                           <th>Sr</th>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Date</th>
                           <th>Mobile</th>
                           <th>Sort</th>
                           <th>Action</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td contenteditable="true">1</td>
                           <td contenteditable="true">Admin</td>
                           <td contenteditable="true">admin@gmail.com</td>
                           <td contenteditable="true">16-06-2000</td>
                           <td contenteditable="true">Madrid</td>
                           <td contenteditable="true">Madrid</td>
                           <td>
                              <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
                           </td>
                        </tr>
                     </tbody>
                  </table>
                  <div>
                     <button class="btn btn-success" id="refresh">refresh</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@section('script')
<script>
   $(document).ready(function() {
    let table= $('#datatable').DataTable();
   });
   $("#refresh").click(function(){
      table.reload(null,false);
      alert("1");
   })
</script>

@endsection
@endsection
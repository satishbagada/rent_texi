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
               <div>
                  <span class="table-add float-right mt-2 mr-2">
                     <button class="btn btn-sm iq-bg-success" data-toggle="modal" data-target=".add_user"><i class="ri-add-fill"><span class="pl-1">Add New</span></i>
                     </button>
                  </span>
               </div>
            </div>
            <div class="iq-card-body">
               <div id="table" class="table-editable">
                  <table class="table table-bordered table-responsive-md table-striped text-center" id="datatable">
                     <thead>
                        <tr>
                           <th>Sr</th>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Date</th>
                           <th>Mobile</th>
                           <th>Action</th>

                        </tr>
                     </thead>
                     <tbody>
                        <!-- <tr>
                           <td contenteditable="true">1</td>
                           <td contenteditable="true">Admin</td>
                           <td contenteditable="true">admin@gmail.com</td>
                           <td contenteditable="true">16-06-2000</td>
                           <td contenteditable="true">Madrid</td>
                           <td contenteditable="true">Madrid</td>
                           <td>
                              <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
                           </td>
                        </tr> -->
                     </tbody>
                  </table>
                  <div class="btn btn-danger" id="edit_btn">refresh</div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
@include('admin.user.add')
@endsection
@section('script')
<script>
   $(document).ready(function() {
      let table = $('#datatable').DataTable({
         'dom': 'Bfrtip',
         processing: true,
         serverSide: true,
         'pageLength': 5,
         // 'title': 't',
         buttons: [{
               extend: 'colvis',
               columnText: function(dt, idx, title) {
                  return (idx + 1) + ': ' + title;
               }

            },
            "copy", "excel", 'csv', 'print',
            {
               'extend': 'pdf',
               'className': 'bg-primary text-light shdow shadow-lg'
            },
         ],
         'ajax': "{{ route('view.user') }}",
         // =============load datatable==================//
         columns: [{
               data: 'user_id',
               name: 'user_id'
            },
            {
               data: 'user_name',
               name: 'user_name'
            },
            {
               data: 'user_email',
               name: 'user_email'
            },
            {
               data: 'created_date',
               name: 'created_date'
            },
            {
               data: 'user_mobile',
               name: 'user_mobile'
            },
            {
               data: 'action',
               name: 'action',
               orderable: false,
               searchable: false
            },

         ]
      });
      // ====edit data===========//
      $("#edit_btn").click(function() {
         table.ajax.reload(null, false);
      });

   });
</script>
<script src="{{asset('request/user/user.js')}}"></script>
<script>
   function change_profile() {
      $(".profile").removeClass('d-none');
      const [file] = profile.files
      if (file) {
         profile_preview.src = URL.createObjectURL(file)
      }
   }
</script>
@endsection
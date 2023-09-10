                    <div class="modal fade add_user" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Registration</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form enctype="multipart/form-data" name="register_form" id="register_form" method="post">
                                    @csrf
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="form-group col-md-4 col-sm-6">
                                                <label for="user_name" class="mb-sm-1">Name</label>
                                                <input type="text" name="user_name" placeholder="Enter Your Name.." class="form-control">
                                            </div>
                                            <div class="form-group col-md-4 col-sm-6">
                                                <label for="user_email" class="mb-sm-1">Email</label>
                                                <input type="text" name="user_email" placeholder="Enter Your Email.." class="form-control">
                                            </div>

                                            <div class="form-group col-md-4 col-sm-6">
                                                <label for="user_mobile" class="mb-sm-1">Mobile</label>
                                                <input type="text" name="user_mobile" placeholder="Enter Your mobile Number.." class="form-control">
                                            </div>

                                            <div class="col-md-4 col-sm-6">
                                                <label for="user_profile mb-sm-1">Profile</label>
                                                <div class="custom-file">
                                                    <input type="file" accept="image/*" class="custom-file-input" onchange="change_profile()" id="profile" name="user_profile" aria-describedby="user_profile">
                                                    <label class="custom-file-label" for="user_profile">Choose file</label>
                                                </div>
                                            </div>

                                            <div class="form-group col-md-4 col-sm-6  profile d-none">
                                                <picture>
                                                    <!-- <source srcset="sdmsk" type="image/svg+xml"> -->
                                                    <img src="#" class="img-fluid img-thumbnail mt-md-4" alt="" width="80px" height="80px" id="profile_preview">
                                                </picture>
                                            </div>
                                            <div class="form-group col-md-4 col-sm-6">
                                                <label for="user_password" class="mb-sm-1">Password</label>
                                                <input type="text" name="user_password" placeholder="Ex. 1@$qwert" class="form-control">
                                            </div>
                                            <div class="form-group col-md-4 col-sm-6">
                                                <label for="user_role" class="mb-sm-1">User Role</label>
                                                <select name="user_role" id="user-role" class="form-control form-control-sm">
                                                    <option value="">Select Role</option>
                                                    <option value="">Active</option>
                                                    <option value="">Deactive</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-8 col-sm-6">
                                                <label for="user_address" class="mb-sm-1">Address</label>
                                                <textarea name="user_address" id="" cols="3" rows="1" class="form-control" style="resize:none" placeholder="Address Here..."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                    </form>
                            </div>
                        </div>
                </div>
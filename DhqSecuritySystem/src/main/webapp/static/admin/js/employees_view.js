
function editEmployee() {
    document.getElementById('firstName').removeAttribute('readonly');
    document.getElementById('lastName').removeAttribute('readonly');
    document.getElementById('email').removeAttribute('readonly');
    document.getElementById('address').removeAttribute('readonly');
    document.getElementById('nic').removeAttribute('readonly');
    document.getElementById('mobileNo').removeAttribute('readonly');
    document.getElementById('gender').removeAttribute('disabled');
    document.getElementById('birthday').removeAttribute('readonly');
    document.getElementById('designation').removeAttribute('disabled');
    document.getElementById('joinedDate').removeAttribute('readonly');
    document.getElementById('branch').removeAttribute('disabled');
    document.getElementById('department').removeAttribute('readonly');

    document.getElementById('employee_view_btn_text').innerText = "Cancel";

    document.getElementById('employee_update_text').innerText = "Update Employee";

    document.getElementById('employee_cancel_edit').removeAttribute('hidden');

}

function editDepartment() {
    document.getElementById('departmentName').removeAttribute('readonly');
    document.getElementById('department_phoneNo').removeAttribute('readonly');
    document.getElementById('department_email').removeAttribute('readonly');
    document.getElementById('department_address').removeAttribute('readonly');
    document.getElementById('department_ententionNo').removeAttribute('readonly');
    document.getElementById('department_branch').removeAttribute('disabled');
 
    document.getElementById('department_view_btn_text').innerText = "Cancel";

    document.getElementById('department_update_text').innerText = "Update Department";

    document.getElementById('department_cancel_edit').removeAttribute('hidden');

}

function editEmployeeAdminProfile() {
    document.getElementById('employee_admin_username').removeAttribute('readonly');
    document.getElementById('employee_admin_first_name').removeAttribute('readonly');
    document.getElementById('employee_admin_last_name').removeAttribute('readonly');
    document.getElementById('employee_admin_email').removeAttribute('readonly');
    document.getElementById('employee_admin_gender').removeAttribute('disabled');
    document.getElementById('employee_admin_phoneNo').removeAttribute('readonly');
    document.getElementById('employee_admin_birthday').removeAttribute('readonly');
    document.getElementById('employee_admin_nic').removeAttribute('readonly');
    document.getElementById('employee_admin_address').removeAttribute('readonly');
    document.getElementById('employee_admin_current_password').removeAttribute('readonly');
    document.getElementById('employee_admin_new_password').removeAttribute('readonly');
    document.getElementById('employee_admin_confirm_new_password').removeAttribute('readonly');
 
    document.getElementById('normal_employee_view_btn_text').innerText = "Save";

    document.getElementById('normal_employee_cancel_edit').removeAttribute('hidden');
}

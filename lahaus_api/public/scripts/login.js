const url = 'http://localhost:3000/api/v1/login';
const $ = window.$;
$(function () {
  $('#login-btn').click(function (e) {
    e.preventDefault();
    const email = $('#mail').val();
    const password = $('#password').val();
    const data = { email: email, password: password };
    $.ajax({
      type: 'POST',
      url: url,
      contentType: 'application/json',
      data: JSON.stringify(data),
      dataType: 'json',
      success: function (result) {
        const userId = result.user.id;
        const token = result.token;
        if (result.user.isadmin) {
          window.location.href = 'admin.html?user_id=' + userId + '&token=' + token;
        } else {
          window.location.href = 'profile.html?user_id=' + userId + '&token=' + token;
        }
      }
    });
  });
});

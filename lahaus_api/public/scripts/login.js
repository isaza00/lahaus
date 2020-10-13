const url = 'http://localhost:3000/api/v1/login';
const url1 = 'http://localhost:3000/api/v1/users/profile.html/';
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
        $.ajax({
          url: url1 + '?userId=' + userId
        });
      }
    });
  });
});

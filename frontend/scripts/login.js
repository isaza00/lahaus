const url = 'http://localhost:3000/api/v1/login';
const $ = window.$;
$(function () {
  $('.message a').click(function () {
    $('form').animate({ height: 'toggle', opacity: 'toggle' }, 'slow');
  });
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
        window.location.href = 'profile.html?userId=' + userId;
      }
    });
  });
});

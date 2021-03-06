const url = 'http://localhost:3000/api/v1/properties';
const $ = window.$;

$(function () {
  $.ajax({
    url: url,
    success: function (response) {
      console.log(response.properties);
      for (const property of response.properties) {
        $('#property').append(
          `<tr data-id=` + property.id + `>
            <td>` + property.id + `</td>
            <td>` + property.built_type + `</td>
            <td>` + property.city + `</td>
            <td>` + property.created_at.slice(0, 10) + `</td>
            <td>` + property.hood + `</td>
            <td>Active</td>
            <td>
                <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
            </td>
          </tr>`
        );
      }
      $('.delete').click(function (event) {
        const dataId = ($(event.target).parents('tr').data('id'));
        $(event.target).parents('tr').remove();
        $.ajax({
          type: 'DELETE',
          url: url + '/' + dataId,
          success: function (result) {
            console.log(result);
          }
        });
      });
    }
  });
});

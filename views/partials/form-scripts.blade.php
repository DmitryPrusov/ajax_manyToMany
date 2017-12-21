<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.js"
        type="text/javascript"></script>
<style>
    .form-error {
        color: darkred;
    }
</style>
<script>
    $(document).ready(function () {
        $('#hidden_button').hide();

        // маска для номера:
        $(function ($) {
            $("#phone").mask("(099)999-99-99");
        });

        $('textarea#description').keyup(function (e) {

            var whole_string = $(this).val();
            var characters = 500 - $(this).val().length;
            if (characters <= 0) {
                $(this).val(whole_string.substr(0, 500));
            }
            $('#characters').text('Осталось символов: ' + characters);
        });
        var form = $('#superdom-form');

        form.submit(function (e) {
            e.preventDefault();
            $(".form-error").hide().html('');
            $('#characters').html('');

            $.ajax({
                url: form.attr('action'),
                type: form.attr('method'),
                data : form.serialize(),

                success: function (data) {

                    if ($.isEmptyObject(data.error)) {

                        $("#hidden_button").trigger("click");
                        $(form).trigger("reset");
                    } else {
                        $(".form-error").show();
                        printErrorMessages(data.error);
                    }
                }
            });
            return false;
        });

        function printErrorMessages(messages) {
            $.each(messages, function (key, value) {
                $('.' + key + '-error').html(value);
            })
        }
    });
</script>
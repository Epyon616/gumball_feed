$(document).ready(function(){
    setInterval(function(){
        $.ajax({
            url: '/fresh_data',
            success: function(data){

                $(data).insertAfter('ul').hide();
                $('ul:visible').addClass('original');
                $('.original').fadeOut("slow", function(){
                    $('ul:not(.original)').fadeIn("slow", function(){
                        $('.original').remove();
                    })
                })

            }
        })
    }, 120000)
})

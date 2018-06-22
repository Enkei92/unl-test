$( document ).ready(function(){
  $('#search-field').on('input', function() {
    var $inputText = $(this).val().toLowerCase();
    $('.title').each(function() {
       var $projectBlock = $(this).parents('li.projectblock');
       if ($(this).html().toLowerCase().indexOf($inputText) == -1){
         $projectBlock.hide();
       }
       else{
         $projectBlock.show();
       }
     })
  })
});

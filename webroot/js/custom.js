jQuery(function($) {
  
  var companyNum = 1;
  
  $('#addCompanyNameButton').click(addAnotherTextBox);
  
  function addAnotherTextBox() {
    $("#additionalCompanies").append("<br><label>Company Name:<input type='text' id=company_" + companyNum + "' >");
    companyNum += 1;
  }
  
});
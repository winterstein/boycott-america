function addAnotherTextBox() {
    $(".additionalCompanies").append(
		"<div class='form-group form-inline'><label>Company Name:</label><input class='form-control' name='company_"+companyNum+"' type='text'></div>"
	);
    companyNum += 1;
}
var companyNum = 1;

$(function() {
      
  $('.addCompanyNameButton').click(addAnotherTextBox);    

});
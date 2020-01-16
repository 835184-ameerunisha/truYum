function validateMenuItemForm() {
    var name = document.forms["menuItemForm"]["name"].value;
    var price = document.forms["menuItemForm"]["price"].value;
    var dateOfLaunch = document.forms["menuItemForm"]["dateOfLaunch"].value;
    var category = document.forms["menuItemForm"]["category"].value;
    var regNumbers = (/^.*[0-9].*$/);
    var regSpecial = (/^.*[!#@&?].*$/);
    var regCharacters = (/^.*[a-zA-Z].*$/)
    if (name == "") {
        alert("Title is required.");
        return false;
    } else if (name.match(regSpecial)) {
        alert("name should not accept special characters");
        return false;
    } else if (name.length < 2 || name.length > 65) {
        alert("Title should have 2 to 65 characters.");
        return false;
    } else if (price.match(regCharacters)) {
        alert("price has to be a number.");
        return false;
    } else if (price == "") {
        alert("price is required.");
        return false;
    } else if (dateOfLaunch == "") {
        alert("date of launch is required.");
        return false;

    } else if (category == "") {
        alert("Select one category.");
        return false;
    } else {
    }
}

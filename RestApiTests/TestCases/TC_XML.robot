*** Settings ***
Library  XML
Library  Collections


*** Test Cases ***
TestCase1
    ${xml_obj}=  parse xml  ../TestData/example.xml

    # Validations
    # Val1 - Check the sinfle Element Value

    # Approach 1
    ${emp_firstname}=  get element text  ${xml_obj}  .//book[1]/genre
    should be equal  ${emp_firstname}  Computer

    # Approach 2
    ${emp_firstname}=  get element  ${xml_obj}  .//book[1]/genre
    should be equal  ${emp_firstname.text}  Computer

    # Approach 3
    element text should be  ${xml_obj}  Computer  .//book[1]/genre

    # Val2 - Check Number of elements
    ${count}=  get element count  ${xml_obj}  .//book
    should be equal as integers  ${count}  12

    # Val 3 - Check attribute presence
    element attribute should be  ${xml_obj}  id  bk101  .//book[1]

    # Val 4 - Check Values of child elements
    ${child_Elements}=  get child elements  ${xml_obj}  .//book[1]
    should not be empty  ${child_Elements}

    ${fname}=  get element text  ${child_Elements[0]}
    ${lname}=  get element text  ${child_Elements[1]}
    ${title}=  get element text  ${child_Elements[2]}

    log to console  ${fname}
    log to console  ${lname}
    log to console  ${title}
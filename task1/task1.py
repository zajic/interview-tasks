def get_category(number):
    '''
    Return category for an int:
    'Testing" if the int is divisible by 5 and 3
    'Agile' if the int is divisible by 5
    'Software' if the int is divisible by 3
    :param number: int
    :return: string
    '''
    if number % 15 == 0:
        return(f"{number}: Testing")
    elif number % 3 == 0:
        return(f"{number}: Software")
    elif number % 5 == 0:
        return(f"{number}: Agile")
    else:
        return(f"{number}: {number}")

if __name__ == '__main__':
    my_list = range(100,0,-1)
    for number in my_list:
        print(get_category(number))
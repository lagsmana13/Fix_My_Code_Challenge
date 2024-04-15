
#!/usr/bin/python3
""" 
Main class
"""

class User():

    def __init__(self):
          self.__email = None

    @property
    def email(self):
        
        return self.__email

    @email.setter
    def email(self, value):
      
        if type(value) is not str:
            raise TypeError("email must be a string")
        self.__email = value

  
    
if __name__ == "__main__":

    u = User()
    u.email = "john@snow.com"
    print(u.email)

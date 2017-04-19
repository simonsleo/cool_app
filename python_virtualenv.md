## Virtual environment is amazing.
1. install virtualenv: 
use pip,like ``` pip install virtualenv ``` 
2. or refer to the [website](https://virtualenv.pypa.io/en/stable/installation/)
without pip,
```
$ curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-X.X.tar.gz # specific the version
$ tar xvfz virtualenv-X.X.tar.gz
$ cd virtualenv-X.X
$ python virtualenv.py your_name_env
```
3. type the command 
```
virtualenv your_env_name
cd your_env_name
source bin/activate
```
4. leave or exit the virtual enviroment via
```
deactivate 
```
5. if multiple verisons of Python co-exist,use as follow to specify which version
```
python virtualenv -p /usr/local/bin/python3.3 /your/path --verbose
```

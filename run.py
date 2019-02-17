import logging
import datetime

logging.basicConfig(filename='example.log',level=logging.DEBUG)
logging.debug('run.py was started at ' + str(datetime.datetime.now()))
logging.debug('This message should go to the log file!')
logging.debug('run.py is now finished at ' + str(datetime.datetime.now()))
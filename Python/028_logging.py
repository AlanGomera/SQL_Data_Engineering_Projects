import logging

logging.basicConfig(
    level = logging.INFO,
    format= "%(asctime)s - %(levelname)s - %(message)s"    
)
logging.info('Pipeline started')

try:
    amount = '100'
    total = int(amount) + 50
    logging.info(f'total amount calculated: {total}')
except Exception as e:
    logging.error('pipeline failed: {e}') 
logging.info('pipeline fineshed')       
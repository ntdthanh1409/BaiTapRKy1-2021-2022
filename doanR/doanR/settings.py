# Scrapy settings for doanR project
#
# For simplicity, this file contains only settings considered important or
# commonly used. You can find more settings consulting the documentation:
#
#     https://docs.scrapy.org/en/latest/topics/settings.html
#     https://docs.scrapy.org/en/latest/topics/downloader-middleware.html
#     https://docs.scrapy.org/en/latest/topics/spider-middleware.html

BOT_NAME = 'doanR'

SPIDER_MODULES = ['doanR.spiders']
NEWSPIDER_MODULE = 'doanR.spiders'


# Crawl responsibly by identifying yourself (and your website) on the user-agent
#USER_AGENT = 'doanR (+http://www.yourdomain.com)'

# Obey robots.txt rules
ROBOTSTXT_OBEY = True
# ROBOTSTXT_OBEY = False
# DOWNLOAD_DELAY = 1
# CONCURRENT_REQUESTS_PER_DOMAIN = 30
# CONCURRENT_REQUESTS = 32
# CONCURRENT_REQUESTS_PER_IP = 32

# AUTOTHROTTLE_ENABLED = True
# AUTOTHROTTLE_START_DELAY = 10
# AUTOTHROTTLE_DEBUG = True
# RETRY_TIMES = 0 

# RETRY_HTTP_CODES = [500, 503, 504, 400, 403, 404, 408]

# DOWNLOADER_MIDDLEWARES = {
#     'scrapy.downloadermiddlewares.retry.RetryMiddleware': 90,
#     'scrapy_proxies.RandomProxy': 100,
#     'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware': 110,
# }

# PROXY_LIST = 'C:\\Users\\PC\\Desktop\\doanR\\doanR\\proxy.txt'


# PROXY_MODE = 0
# # CUSTOM_PROXY = "http://54.37.160.88:1080"
# USER_AGENT = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'

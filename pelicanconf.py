#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Duy Quoc'
SITENAME = u'Silk Blog'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'Asia/Bangkok'

DEFAULT_LANG = u'vn'
DEFAULT_DATE_FORMAT = '%d/%m/%Y'
THEME = 'themes/pelican-blue'
SIDEBAR_DIGEST = 'Go to low level system'
FAVICON = 'url-to-favicon'

DISPLAY_PAGES_ON_MENU = True
MENUITEMS = (('Home', '') )
#('Products', '#'), ('About', '#') , ('Say 2!', '#')

DISPLAY_CATEGORIES_ON_MENU = False

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll

# Social widget
SOCIAL = (('linkedin', 'https://www.linkedin.com/in/duyquoc'),
          ('github', 'https://github.com/dqduy'))

DEFAULT_PAGINATION = 10
DELETE_OUTPUT_DIRECTORY = True
# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

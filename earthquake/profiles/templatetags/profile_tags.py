"""
gravatar_url from https://en.gravatar.com/site/implement/images/django/
"""
from django import template
from django.conf import settings

import urllib
import hashlib

register = template.Library()

class GravatarUrlNode(template.Node):
    def __init__(self, email):
        self.email = template.Variable(email)

    def render(self, context):
        try:
            email = self.email.resolve(context)
        except template.VariableDoesNotExist:
            return ''

        email_hash = hashlib.md5(email.lower()).hexdigest()
        query_str = urllib.urlencode({'d': 'http://i.imgur.com/ytOAIRY.png',
                                      's': 200})

        url = "http://www.gravatar.com/avatar/{0}?{1}"

        return url.format(email_hash, query_str)

@register.tag
def gravatar_url(parser, token):
    try:
        tag_name, email = token.split_contents()

    except ValueError:
        raise template.TemplateSyntaxError, "%r tag requires a single argument" % token.contents.split()[0]

    return GravatarUrlNode(email)

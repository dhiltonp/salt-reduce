__author__ = 'lane'
from sys import maxint
import itertools


class mapper:

    def __init__(self, module_name=None):
        self.module_name = module_name

    def partializer(self, fun_args):
        # return iter(xrange(0, limit))
        # return iter([ fun_args[0:]])
        # return iter([ fun_args for x in xrange(maxint)])
        return itertools.repeat(fun_args)

    def reducer(self, partial_results):
        pass


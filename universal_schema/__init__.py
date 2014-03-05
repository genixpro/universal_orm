#    This file is part of the Universal Schema.
# 
#    The Universal Schema is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#    
#    The Universal Schema is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#

import os
def data_file(filename):
    this_dir, this_filename = os.path.split(__file__)
    f = os.path.join(this_dir, filename)
    f = this_dir + "/" + filename
    print f, this_dir, this_filename
    return f

from fields import *
from format import Format
from model import Model
import formats

__all__ = [Format, Model]



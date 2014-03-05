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

import colander

class Binary(object):
    def serialize(self, node, appstruct):
        if appstruct is colander.null:
            return colander.null
        if appstruct is None:
            return None
        if not isinstance(appstruct, str):
            raise colander.Invalid(node, '%r is not a string' % appstruct)
        return appstruct

    def deserialize(self, node, cstruct):
        if cstruct is colander.null:
            return colander.null
        if cstruct is None:
            return None
        if not isinstance(cstruct, basestring):
            raise colander.Invalid(node, '%r is not a string' % cstruct)
        return cstruct
    
    def cstruct_children(self, node, cstruct):
        return []

class ${name}(colander.MappingSchema):
    % for field in fields.itervalues():
        ${field.name} = colander.SchemaNode(colander.${format.colander_class_name(field)}(), validator=${format.colander_validator(field)}, default=${format.colander_default(field)},  missing = colander.drop);
    % endfor




function builtTree(selector, data) {

	$(selector).jstree({
		'core' : {
			'data' : data, // dữ liệu là mảng các object -> arr
			'check_callback' : function(o, n, p, i, m) {
				if (m && m.dnd && m.pos !== 'i') {
					return false;
				}
				if (o === "move_node" || o === "copy_node") {
					if (this.get_node(n).parent === this.get_node(p).id) {
						return false;
					}
				}
				return true;
			},
			'themes' : {
				'responsive' : false,
				'variant' : 'small',
				'stripes' : true
			},
			'multiple' : true,
			'dblclick_toggle' : true,
			'expand_selected_onload' : false,
		},
		'types' : {
			'default' : {
				'icon' : 'folder'
			},
			'file' : {
				'valid_children' : [],
				'icon' : 'file'
			}
		},
		'unique' : {
			'duplicate' : function(name, counter) {
				return name + ' ' + counter;
			}
		},
		'plugins' : [ 'state', 'dnd', 'types', 'unique' ]
	});
}
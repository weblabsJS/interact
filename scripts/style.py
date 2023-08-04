import os
import re

def resolve_imports(stylesheet_path):
    with open(stylesheet_path, 'r') as stylesheet:
        stylesheet_content = stylesheet.read()

    import_regex = re.compile(r'@import url\(["\'](.*?)["\']\)')
    imports = import_regex.findall(stylesheet_content)

    resolved_imports = []
    for import_path in imports:
        resolved_path = os.path.join(os.path.dirname(stylesheet_path), import_path)
        with open(resolved_path, 'r') as resolved_file:
            resolved_imports.append(resolved_file.read())

    with open('./dist/style.css', 'w') as output_file:
        output_file.write('\n'.join(resolved_imports))

if __name__ == '__main__':
    stylesheet_path = './src/style.css'
    resolve_imports(stylesheet_path)

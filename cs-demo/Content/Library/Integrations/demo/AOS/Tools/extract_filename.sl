namespace: cs_demo.content.library.demo.aos.test

operation:
  name: extract_filename

  inputs:
    - input_1
    - input_2

  python_action:
    script: |

  outputs:
    - output_1

  results:
    - SUCCESS: ${returnCode == '0'}
    - FAILURE

namespace: io.cloudslang.demo.aos.tools

operation:
  name: extract_filename

  inputs:
    - url

  python_action:
    script: |
      filename = url[url.rfind("/")+1:]

  outputs:
    - filename: ${filename}

  results:
    - SUCCESS
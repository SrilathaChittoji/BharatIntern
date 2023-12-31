# The MIT License (MIT)

# Copyright (c) 2018 Mike DeAngelo Looker Data Sciences, Inc.

# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

RSpec.describe "`gzr attribute create` command", type: :cli do
  it "executes `gzr attribute help create` command successfully" do
    output = `gzr attribute help create`
    expected_output = <<-OUT
Usage:
  gzr attribute create ATTR_NAME [ATTR_LABEL] [OPTIONS]

Options:
  -h, [--help], [--no-help]                  # Display usage information
      [--plain], [--no-plain]                # Provide minimal response information
      [--force]                              # If the user attribute already exists, modify it
      [--type=TYPE]                          # "string", "number", "datetime", "yesno", "zipcode"
                                             # Default: string
      [--default-value=DEFAULT-VALUE]        # default value to be used if one not otherwise set
      [--is-hidden], [--no-is-hidden]        # can a non-admin user view the value
      [--can-view], [--no-can-view]          # can a non-admin user view the value
                                             # Default: true
      [--can-edit], [--no-can-edit]          # can a user change the value themself
                                             # Default: true
      [--domain-allowlist=DOMAIN-ALLOWLIST]  # what domains can receive the value of a hidden attribute.

Create or modify an attribute
    OUT

    expect(output).to eq(expected_output)
  end
end

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{roxml}
  s.version = "1.0"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Zak Mandhro"]
  s.autorequire = %q{roxml}
  s.cert_chain = nil
  s.date = %q{2006-07-01}
  s.description = %q{ROXML is a Ruby library designed to make it easier for Ruby developers to work with XML. Using simple annotations, it enables Ruby classes to be mapped to XML. ROXML takes care of the marshalling and unmarshalling of mapped attributes so that developers can focus on building first-class Ruby classes. As a result, ROXML simplifies the development of  RESTful applications, Web Services, and XML-RPC.}
  s.files = ["lib/roxml.rb", "MIT-LICENSE.txt", "test/test_roxml.rb", "test/mocks", "test/fixtures", "test/fixture_helper.rb", "test/mocks/mocks.rb", "test/fixtures/book_pair.xml", "test/fixtures/book_valid.xml", "test/fixtures/book_malformed.xml", "test/fixtures/book_with_publisher.xml", "test/fixtures/book_with_contributions.xml", "test/fixtures/book_with_contributors.xml", "test/fixtures/library.xml", "doc/created.rid", "doc/rdoc-style.css", "doc/files", "doc/classes", "doc/fr_file_index.html", "doc/fr_class_index.html", "doc/fr_method_index.html", "doc/index.html", "doc/files/lib", "doc/files/lib/roxml_rb.html", "doc/classes/String.src", "doc/classes/ROXML.src", "doc/classes/ROXML", "doc/classes/String.html", "doc/classes/ROXML.html", "doc/classes/String.src/M000001.html", "doc/classes/String.src/M000002.html", "doc/classes/ROXML.src/M000003.html", "doc/classes/ROXML.src/M000004.html", "doc/classes/ROXML.src/M000005.html", "doc/classes/ROXML/ROXML_Class.src", "doc/classes/ROXML/XMLObjectRef.src", "doc/classes/ROXML/XMLAttributeRef.src", "doc/classes/ROXML/XMLRef.src", "doc/classes/ROXML/XMLTextRef.src", "doc/classes/ROXML/ROXML_Class.html", "doc/classes/ROXML/XMLObjectRef.html", "doc/classes/ROXML/XMLAttributeRef.html", "doc/classes/ROXML/XMLRef.html", "doc/classes/ROXML/XMLTextRef.html", "doc/classes/ROXML/ROXML_Class.src/M000006.html", "doc/classes/ROXML/ROXML_Class.src/M000007.html", "doc/classes/ROXML/ROXML_Class.src/M000008.html", "doc/classes/ROXML/ROXML_Class.src/M000009.html", "doc/classes/ROXML/ROXML_Class.src/M000010.html", "doc/classes/ROXML/ROXML_Class.src/M000011.html", "doc/classes/ROXML/ROXML_Class.src/M000012.html", "doc/classes/ROXML/XMLObjectRef.src/M000013.html", "doc/classes/ROXML/XMLObjectRef.src/M000014.html", "doc/classes/ROXML/XMLAttributeRef.src/M000015.html", "doc/classes/ROXML/XMLAttributeRef.src/M000016.html", "doc/classes/ROXML/XMLRef.src/M000017.html", "doc/classes/ROXML/XMLRef.src/M000018.html", "doc/classes/ROXML/XMLRef.src/M000019.html", "doc/classes/ROXML/XMLTextRef.src/M000020.html", "doc/classes/ROXML/XMLTextRef.src/M000021.html"]
  s.homepage = %q{http://roxml.rubyforge.org}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.requirements = ["none"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby Object to XML mapping library}
  s.test_files = ["test/test_roxml.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

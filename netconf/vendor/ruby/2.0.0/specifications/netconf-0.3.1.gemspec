# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "netconf"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy Schulman", "Ankit Jain"]
  s.date = "2013-08-05"
  s.description = "Extensible Ruby-based NETCONF client"
  s.email = "jschulman@juniper.net"
  s.homepage = "https://github.com/Juniper/net-netconf"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "NETCONF client"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.5.5"])
      s.add_runtime_dependency(%q<net-ssh>, [">= 2.5.2"])
      s.add_runtime_dependency(%q<net-scp>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.5.5"])
      s.add_dependency(%q<net-ssh>, [">= 2.5.2"])
      s.add_dependency(%q<net-scp>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.5.5"])
    s.add_dependency(%q<net-ssh>, [">= 2.5.2"])
    s.add_dependency(%q<net-scp>, [">= 0"])
  end
end

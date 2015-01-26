# encoding: utf-8

class LdapService
  def self.test_credentials username: nil, password: nil
    ap username
    ap password
    ldap = Net::LDAP.new
    ldap.host = 'ldap1.itz.uni-halle.de'
    ldap.port = 636
    ldap.encryption :simple_tls
    ldap.auth "uid=#{username},ou=ilias_ea,o=mlu,c=de", password
    if ldap.bind
      return true
    else
      return false
    end
  end
end

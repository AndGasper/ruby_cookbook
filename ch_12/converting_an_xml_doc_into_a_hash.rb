xml = %{
    <freezer temp="-12" scale="celsius"> 
        <food>Phyllo dough</food>
        <food>Ice cream</food>
        <icecubetray>
            <cube1 />
            <cube2 />
        </icecubetray>
    </freezer>
}

gem 'xml-simple', :require => 'xmlsimple'
doc = XmlSimple.xml_in xml
require 'pp'
pp doc 
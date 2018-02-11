require 'rexml/document'

def valid_xml?(xml)
    begin
        REXML::Document.new(xml)
    rescue REXML::ParseException
        # Return nil if an exception is thrown
        'Parse exception thrown'
    end
end 

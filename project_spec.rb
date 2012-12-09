require "./project.rb"
include Servicedesk
describe Servicedesk2 do

        it "passes in a ticket and produces a url"
            result = Servicedesk2 do
                result.lets_ask(671148) end
                result.should == "IUAT671148"
        end

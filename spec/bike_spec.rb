require 'bike'

describe Bike do
    it 'responds to working?' do
        expect(subject).to respond_to :working?
    end

    it 'broken bike can be reported' do
        subject.report_broken
        expect(subject.working?).to eq false
    end
end
require 'station'

describe Dockingstation do
    it 'responds to release_bike' do
        expect(subject).to respond_to :release_bike
    end

    it 'releases a working bike' do
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it 'responds to dock' do
        expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'responds to bike' do
        expect(subject).to respond_to :bike
    end
end
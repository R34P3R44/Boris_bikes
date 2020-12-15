require 'station'

describe Dockingstation do
    it 'responds to release_bike' do
        expect(subject).to respond_to :release_bike
    end

    it 'responds to dock' do
        expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'responds to bike' do
        expect(subject).to respond_to :bike
    end

    it 'docks a bike' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

    describe '#release_bike' do
        it 'raises an error when no bikes available' do
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end
end
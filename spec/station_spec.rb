require 'station'

describe Dockingstation do
 
    it 'docks a faulty bike' do
        bike = double( :bike, broken?: true)
        expect(subject.dock(bike)).to eq [bike]
    end

    describe '#release_bike' do
        it 'raises an error when no bikes available' do
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end

    describe '#dock' do
        it 'raises an error when full' do
            subject.capacity.times { subject.dock double :bike }
            expect { subject.dock double(:bike) }.to raise_error 'Docking station is full'
        end
    end

    it 'has a default capacity' do
        expect(subject.capacity).to eq Dockingstation::DEFAULT_CAPACITY
    end

    describe 'initialization' do
        subject { Dockingstation.new }
        let(:bike) {double(:bike)}
        it 'defaults capacity' do
            described_class::DEFAULT_CAPACITY.times do
                subject.dock(bike)
            end
            expect{ subject.dock(bike) }.to raise_error 'Docking station is full'
        end
    end

    it 'wont release broken bike(s)' do
        bike = double( :bike, broken?: true)
        subject.dock(bike)
        expect{ subject.release_bike }.to raise_error 'This bike is broken'
    end

end
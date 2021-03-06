require 'docking_station'
describe DockingStation do
    it {is_expected.to respond_to :release_bike}
    describe '#release_bike' do
        it 'releases a bike' do
            bike = Bike.new
            subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end
        describe '#release_bike' do
            it 'raises an error when there are no bikes available' do

              expect { subject.release_bike }.to raise_error 'No bikes available'
            end

        end

    end

     it 'returns docked bikes' do
        bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    end

    it 'should show the docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.contents).to include bike
    end

    it 'raises an error when the docking station has reached its capacity' do
       20.times { subject.dock(Bike.new) }
       expect { subject.dock Bike.new}.to raise_error 'docking station full'
    end
    
    #  it 'shows whether the docking station is full' do 
    #     expect(subject).to respond_to(:full?)
    # end 
    
    # it 'shows whether the docking station is empty' do 
    #     expect(subject).to respond_to(:empty?)
    # end

    end

require 'spec_helper'

describe Restaurant do

  describe '.average_rating' do

    let(:restaurant) { Restaurant.new(name: 'KFC') }

    context 'no ratings' do
      it 'returns "Unrated"' do
        expect(restaurant.average_rating).to eq 'Unrated'
      end
    end

    context 'a single rating' do
      it 'returns that rating' do
        restaurant.reviews << Review.new(rating: 3)

        expect(restaurant.average_rating).to eq 3
      end
    end

    context 'multiple ratings' do
      it 'returns an average of those ratings' do
        restaurant.reviews << Review.new(rating: 3)
        restaurant.reviews << Review.new(rating: 5)

        expect(restaurant.average_rating).to eq 4
      end
    end

  end

end

FactoryGirl.define do
  factory :post do
    title 'DOOM FOREVER'
    body 'There are several reasons for this. Perhaps working with Ruby or web frameworks is a novel enough concept; adding an extra layer of work seems like just that—extra work. Or maybe there is a perceived time constraint—spending time on writing tests takes time away from writing the features our clients or bosses demand. Or maybe the habit of defining “test” as clicking links in the browser is too hard to break.'

    after(:build) do |post, eval|
      post.image << FactoryGirl.build(:image)
    end

    factory :invalid_post do
      title nil
    end

    factory :image do
      file File.open(File.join(Rails.root, '/test/fixtures/files/index.jpeg'))
    end
  end

end


Category.create(name: 'Sports, Fitness, & Outdoors', code: 'CAT-1')
Category.create(name: 'Home, Kitchen & Pets', code: 'CAT-2')
Category.create(name: 'Books', code: 'CAT-3')
Category.create(name: 'Shoes', code: 'CAT-4')

sub_category = Category.first.sub_categories.build(name: 'Cricket')
sub_category.save
sub_category = Category.first.sub_categories.build(name: 'Badminton')
sub_category.save
sub_category = Category.first.sub_categories.build(name: 'Swimming')
sub_category.save
sub_category = Category.second.sub_categories.build(name: 'Home Improvement')
sub_category.save
sub_category = Category.second.sub_categories.build(name: 'Furniture')
sub_category.save
sub_category = Category.second.sub_categories.build(name: 'Pet supplies')
sub_category.save
sub_category = Category.third.sub_categories.build(name: 'Textbooks')
sub_category.save
sub_category = Category.third.sub_categories.build(name: 'ebooks')
sub_category.save
sub_category = Category.third.sub_categories.build(name: 'Exam central')
sub_category.save
sub_category = Category.last.sub_categories.build(name: 'Sneakers')
sub_category.save
sub_category = Category.last.sub_categories.build(name: 'Formal shoes')
sub_category.save
sub_category = Category.last.sub_categories.build(name: 'Sandal & Floaters')
sub_category.save

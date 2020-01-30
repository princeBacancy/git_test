class Temp < ApplicationRecord
    validates :name ,presence: true

    after_find :after_find
    after_initialize :after_initialize
    before_save :before_save
    after_save :after_save
    around_save :around_save
    around_create :around_create
    after_commit :after_commit
    after_save_commit :after_save_commit
    after_create_commit :after_create_commit
    before_validation :before_validation
    after_validation :after_validation

    def before_validation
        puts "=================before_validation==============="
    end

    def after_validation
        puts "=================after_validation==============="
    end

    def after_find
        puts "----------------------------------------------------------after_find----------------------------------------------------"
    end

    def after_initialize
        puts "----------------------------------------------------------after_initialize----------------------------------------------------"
    end

    def before_save
        puts "----------------------------------------------------------before_save----------------------------------------------------"
    end

    def after_save
        puts "----------------------------------------------------------after_save----------------------------------------------------"
    end

    def around_save
        puts "----------------------------------------------------------around_before_save----------------------------------------------------"
        yield
        puts "----------------------------------------------------------around_after_save----------------------------------------------------"
    end

    def around_create
        puts "----------------------------------------------------------around_before_create----------------------------------------------------"
        yield
        puts "----------------------------------------------------------around_after_create----------------------------------------------------"
    end

    def after_commit
        puts "----------------------------------------------------------after_commit----------------------------------------------------"
    end

    def after_save_commit
        puts "----------------------------------------------------------after_save_commit----------------------------------------------------"
    end

    def after_create_commit
        puts "----------------------------------------------------------after_create_commit----------------------------------------------------"
    end

end

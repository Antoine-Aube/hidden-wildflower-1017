# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@lab_1 = Lab.create!(name: "Frankenstein's Lab")
@lab_2 = Lab.create!(name: "Dr. Jekyll's Lab")
@lab_3 = Lab.create!(name: "Einstein's Lab")

@scientist_1 = @lab_1.scientists.create!(name: "Dr.Frankenstein", specialty: "Body Parts", university: "Ingolstadt University")
@scientist_2 = @lab_1.scientists.create!(name: "Igor", specialty: "Brain", university: "Miskatonic University")
@scientist_3 = @lab_2.scientists.create!(name: "Dr.Jekyll", specialty: "Chemistry", university: "University of Edinburgh")
@scientist_4 = @lab_2.scientists.create!(name: "Mr.Hyde", specialty: "Chemistry", university: "University of Edinburgh")
@scientist_5 = @lab_3.scientists.create!(name: "Albert Einstein", specialty: "Physics", university: "Zurich")


@experiment_1 = Experiment.create!(name: "Reanimation", objective: "Bring back the dead", num_months: 2)
@experiment_2 = Experiment.create!(name: "Brain Transplant", objective: "Get a new brain in there", num_months: 6)
@experiment_3 = Experiment.create!(name: "Personality Split", objective: "Split some personalities", num_months: 8)
@experiment_4 = Experiment.create!(name: "General Relativity", objective: "Bring back the dead", num_months: 12)
@experiment_5 = Experiment.create!(name: "Quantum Mechanics", objective: "Really difficult physics", num_months: 24)
@experiment_6 = Experiment.create!(name: "String Theory", objective: "Really really difficult physics", num_months: 36)

@scientist_experiment_1 = ScientistExperiment.create!(scientist_id: @scientist_1.id, experiment_id: @experiment_1.id)
@scientist_experiment_2 = ScientistExperiment.create!(scientist_id: @scientist_1.id, experiment_id: @experiment_2.id)
@scientist_experiment_3 = ScientistExperiment.create!(scientist_id: @scientist_2.id, experiment_id: @experiment_2.id)
@scientist_experiment_4 = ScientistExperiment.create!(scientist_id: @scientist_3.id, experiment_id: @experiment_3.id)
@scientist_experiment_5 = ScientistExperiment.create!(scientist_id: @scientist_4.id, experiment_id: @experiment_3.id)
@scientist_experiment_6 = ScientistExperiment.create!(scientist_id: @scientist_5.id, experiment_id: @experiment_4.id)
@scientist_experiment_7 = ScientistExperiment.create!(scientist_id: @scientist_5.id, experiment_id: @experiment_5.id)
@scientist_experiment_8 = ScientistExperiment.create!(scientist_id: @scientist_5.id, experiment_id: @experiment_6.id)
@scientist_experiment_9 = ScientistExperiment.create!(scientist_id: @scientist_3.id, experiment_id: @experiment_6.id)
@scientist_experiment_10 = ScientistExperiment.create!(scientist_id: @scientist_3.id, experiment_id: @experiment_5.id)
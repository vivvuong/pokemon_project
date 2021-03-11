require "csv"

Pokemon.delete_all
Type.delete_all

filename = Rails.root.join("db/pokemon.csv")

puts "Loading in Pokemon from #{filename}."

csv_data = File.read(filename)

pokemons = CSV.parse(csv_data, headers: true, encoding: "utf-8")


pokemons.each do |p|
    type = Type.find_or_create_by(name: p["Type1"])
    if type && type.valid?
        # build pokemon?
        pokemon = type.pokemon.create(
            number:     p["Number"],
            pokemon:    p["Pokemon"],
            type1:      p["Type1"],
            type2:      p["Type2"],
            hp:         p["HP"],
            attack:     p["Attack"],
            defense:    p["Defense"],
            speed:      p["Speed"],
            special:    p["Special"],
            gif:        p["GIF"],
            png:        p["PNG"],
            description: p["Description"]
        )

        puts "Invalid Pokemon #{p['Pokemon']}" unless pokemon&.valid?

    else

        #error message
        puts "Invalid Type: #{p["Type1"]} for Pokemon - #{p["Pokemon"]}"

    end
    
end

puts "Created #{Type.count} types."
puts "Created #{Pokemon.count} pokemons."

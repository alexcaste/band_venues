require("spec_helper")

describe(Band) do
  it{ should have_and_belong_to_many(:venues)}
  end

describe('#band_validation') do
  it("returns false if the band name is unfilled") do
    john_digweed = Band.create({band_name: "John Digweed"})
    david_guetta = Band.create({band_name: "David Guetta".*(50)})
    daft_punk = Band.create({})
    expect(john_digweed.save).to(eq(true))
    expect(david_guetta.save).to(eq(false))
    expect(daft_punk.save).to(eq(false))
  end
end

describe('#venue_callback') do
  it("capitalizes venue names") do
    john_digweed = Band.create({band_name: "John Digweed"})
    expect(john_digweed.band_name).to(eq("John Digweed"))
  end
end

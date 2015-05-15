require("spec_helper")

describe(Venue) do
  it{ should have_and_belong_to_many(:bands)}
end

describe('#venue_validation') do
  it("returns false if the venue name is unfilled") do
    avalon = Venue.create({venue_name: "The Forum"})
    exchangela = Venue.create({venue_name: "exchangela".*(70)})
    the_whiskey_bar = Venue.create({})
    expect(avalon.save).to(eq(true))
    expect(exchangela.save).to(eq(false))
    expect(the_whiskey_bar.save).to(eq(false))
  end
end

describe('#venue_callback') do
  it("capitalizes venue names") do
    avalon = Venue.create({venue_name: "avalon"})
    expect(avalon.venue_name).to(eq("Avalon"))
  end
end

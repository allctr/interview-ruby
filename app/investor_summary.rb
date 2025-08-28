class InvestorSummary
  # The purpose of this class is to create a summary of records for an investor's cashflows
  def initialize
  end

  # type is one of :sample, :input
  #
  # Output, display on console the output arranged as given in investor_summary.png displaying
  # total investor level cashflows, then broken down by bank
  def run(type = :sample)
  end

  # Optional:
  #   You can arrange the input data first as a structure that makes the displaying easy. This approach ensures
  #   seggregation of presumed UI layer against the data processing layer in the real world
  #
  # Takes the input data sent by 'run' and returns a hash with a structure of your choosing, which 'run' then needs to display as per task
  def arrange_data(input_data)
    # Your code here
  end

  # see the 'sample_json' function to what the input looks like
  # The real input is stored at: https://allocator-public.s3.amazonaws.com/dEj1k0ApAhiAzjYqyHqMt6qTcvjSwMnR/cashflows_small.json
  # This function returns the json as a string. You can either:
  #   1. Write code to get the file on the fly 
  #   2. (easier) Download this json on your local and read it from there
  #
  def input_json
    # Your code here
  end

  # The json for this task is an array of hashes, where each hash is a specific cashflow with the following entries:
  # {
  #   "investor": name of the investor
  #   "bank": name of the bank the investor did the transaction with
  #   "contribution": money given TO the bank (displayed as positive)
  #   "distribution": money taken OUT of the bank (displayed as negative)
  # }
  #
  def sample_json
    <<~JSON
      [
        {
          "investor": "Rolfson Inc",
          "bank": "ABBOTSTONE AGRICULTURAL PROPERTY UNIT TRUST",
          "contribution": 185,
          "distribution": 375
        },
        {
          "investor": "Hayes LLC",
          "bank": "ABC INTERNATIONAL BANK PLC",
          "contribution": 10,
          "distribution": 135
        }
      ]
    JSON
  end
end
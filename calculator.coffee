class NewCalculator1
  constructor:() ->
    $('#disp').val('')

    @total = []
    @calcList1 = []
    @calcList2 = []
    @calcList3 = []
    @count = 0
    @value = ''
    @result = ''

    $('.num, .menu').click((evt) =>
      @total.push evt.target.defaultValue
      $('#disp').val(@total.join(''))

      @value += @total[@count++]
      console.log @value

    )

    $('#C').click((evt) =>
      @calcList1.push evt.target.defaultValue
      $('#disp').val(@total.clear)
      @total = []
      @count = 0
      @value = ''

    )

new NewCalculator1()

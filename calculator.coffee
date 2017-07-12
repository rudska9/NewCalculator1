class NewCalculator1
  constructor:() ->
    $('#disp').val('')

    @total = []
    @calcList1 = []
    @calcList2 = []
    @calcList3 = []
    @calCount1 = 0
    @calCount2 = 0
    @calCount3 = 0
    @value1 = ''
    @value2 = ''
    @value3 = ''
    @result = []
    @resultCount = 0


    $('.num').click((evt) =>
      @calcList1.push evt.target.defaultValue
      @total.push evt.target.defaultValue
      console.log "calcList1 #{@calcList1}"
      $('#disp').val(@total.join(''))
      @value1 += @calcList1[@calCount1++]
      console.log "String : #{@value1}"
      @result[@resultCount] = Number @value1
      console.log "resultCount : #{@resultCount}, Number : #{@result[@resultCount]}"

    )

    $('.menu').click((evt) =>
      @calcList2.push evt.target.defaultValue
      @total.push evt.target.defaultValue
      console.log "calcList2 #{@calcList2}"
      $('#disp').val(@total.join(''))
      @resultCount++
      @calcList1 = []
      @calCount1 = 0
      @value1 = ''

    )

    $('#C').click((evt) =>
      @total.push evt.target.defaultValue
      $('#disp').val(@total.clear)
      @total = []
      @calcList1 = []
      @calcList2 = []
      @calcList3 = []
      @resultCount = 0
      @result = []
      @calcList1 = []
      @calCount1 = 0
      @value1 = ''
    )

    $('#equal').click((evt) =>
      @calcList3.push evt.target.defaultValue
      @total.push evt.target.defaultValue
      console.log "calcList3 #{@calcList3}"
      $('#disp').val(@total.join(''))
      console.log


    )
new NewCalculator1()


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
    @final = 0
    @finalCount = 0

    #숫자를 눌렀을 경우
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

    #연산자를 눌렀을 경우
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

    # "="를 눌렀을 경우 저장된 값들을 계산하는 단계
    $('#equal').click((evt) =>
      @calcList3.push evt.target.defaultValue
      @total.push evt.target.defaultValue
      if @finalCount == 0
        for i in [0..@resultCount]
          if i == 0
            @final += @result[0]
            console.log "finalCount = #{@finalCount}일때, final(#{@finalCount+1}번째 값) = #{@final}"
          else
            switch @calcList2[(i-1)]
              when "+"
                @final += @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "-"
                @final -= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "*"
                @final *= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "/"
                @final /= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
      else
        console.log "finalCount = #{@finalCount}일때, final = #{@final}"
        @finalCount++
        for i in [@finalCount..@resultCount]
          if i == @finalCount
            switch @calcList2[(i-1)]
              when "+"
                @final += @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "-"
                @final -= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "*"
                @final *= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "/"
                @final /= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"

          else
            switch @calcList2[(i-1)]
              when "+"
                @final += @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "-"
                @final -= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "*"
                @final *= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
              when "/"
                @final /= @result[i]
                @finalCount++
                console.log "finalCount = #{@finalCount}일때, 연산자 : #{@calcList2[i-1]}이고, final(#{@finalCount+1}번째 값) = #{@result[i]}, 계산 결과 값 :  #{@final}"
      @total = [@final]
      $('#disp').val @final

    )

    # "C"를 눌렀을 경우 모두 초기화 하는 단계
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
      @final = 0
      @finalCount = 0
    )


new NewCalculator1()


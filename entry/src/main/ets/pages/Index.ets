import map from '@hms.core.map.map';

@Entry
@Component
struct Index {
  @State numbers: string = '';
  @State pagestete: Visibility[] = [Visibility.Visible,Visibility.None,Visibility.None];
  @State pagelenth: string[] = ['70%','0%'];
  @State DEGARADCOLOR: string[] = ['#ff329d00', '#ff0c0e16'];

  ShowMore=false;
  DEG=true;
  Moreops=["(",")","tan","cos","sin","acrtan","arccos","arcsin","log","^","!","√","Π","e"]
  @State Memoris:string[]=[]
  build() {
      Column() {
        Text(this.numbers)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.End)
          .width('100%')
          .padding(20)
          .backgroundColor("#ff0c121a")
          .fontColor("#ffcacaca")
          .height('25%')
          .textOverflow({overflow: TextOverflow.Ellipsis})
        Grid() {
          GridItem() {
            Button("科学计算", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff151e2d").width('100%')
              .onClick(()=>{
                this.ShowMore=!this.ShowMore
                if(this.ShowMore){
                  this.pagelenth=['45%','25%']
                }else{
                  this.pagelenth=['70%','0%']
                }
              })

          }
          GridItem() {
            Button("保存数据", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff151e2d").width('100%')
              .onClick(()=>{
               this.Memoris.push(this.numbers)
              })
          }
          GridItem() {
            Button("查看数据", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff151e2d").width('100%')
              .onClick(()=>{
                if(this.pagestete[2]==Visibility.None)this.pagestete[2]=Visibility.Visible
                  else this.pagestete[2]=Visibility.None
              })
          }
        }.columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr')
        .height('5%')
        .columnsGap(5)
        .margin({top: 5})
       List(){
         ForEach(this.Memoris, (service:string) => {
           ListItem(){
             Button(service, {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff1a2030").width('100%').height('15%').align(Alignment.Start)
               .onClick(()=>{
                 this.inputnumber(service);
               })
           }.padding(2)
         }, (service:string):string => service)

       }.height('30%').visibility(this.pagestete[2]).padding(5)


        Grid() {
          ForEach(this.Moreops, (service:string) => {
            GridItem() {
              Button(service, {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff111a26").width('100%').height('100%')
                .onClick(()=>{
                  this.inputnumber(service);
                })
            }
          }, (service:string):string => service)
          GridItem() {
            Button("DEG", { type: ButtonType.Normal })
              .fontColor("#ffcacaca")
              .backgroundColor(this.DEGARADCOLOR[0])
              .width('100%')
              .height('100%')
              .onClick(() => {
                this.DEG = true;
                this.DEGARADCOLOR[1] = '#ff0c0e16'
                this.DEGARADCOLOR[0] = '#ff329d00'
              })
          }
          GridItem() {
            Button("RAD", { type: ButtonType.Normal })
              .fontColor("#ffcacaca")
              .backgroundColor(this.DEGARADCOLOR[1])
              .width('100%')
              .height('100%')
              .onClick(() => {
                this.DEG = false;
                this.DEGARADCOLOR[0] = '#ff0c0e16'
                this.DEGARADCOLOR[1] = '#ff329d00'
              })
          }
        }.columnsTemplate('1fr 1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr 1fr 1fr')
        .height(this.pagelenth[1])
        .columnsGap(5)
        .rowsGap(5)
        .margin({top: 5})
        //.visibility(this.pagestete[1])

         Grid() {
          GridItem() {
            Button("C", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.numbers=''
              })
          }
          GridItem() {
            Button("%", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('%');
              })
          }
          GridItem() {
            Button("⌫", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.numbers=this.numbers.slice(0,this.numbers.length-1)

              })
          }
          GridItem() {
            Button("÷", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('÷');
              })
          }

          GridItem() {
            Button("7", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('7');
              })
          }
          GridItem() {
            Button("8", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('8');
              })
          }
          GridItem() {
            Button("9", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('9');
              })
          }
          GridItem() {
            Button("×", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('×');
              })
          }
          GridItem() {
            Button("4", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('4');
              })
          }
          GridItem() {
            Button("5", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('5');
              })
          }
          GridItem() {
            Button("6", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('6');
              })
          }
          GridItem() {
            Button("-", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('-');
              })
          }
          GridItem() {
            Button("1", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('1');
              })
          }
          GridItem() {
            Button("2", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('2');
              })
          }
          GridItem() {
            Button("3", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('3');
              })
          }
          GridItem() {
            Button("+", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('+');
              })
          }
          GridItem() {
            Button("00", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('00');
              })
          }
          GridItem() {
            Button("0", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('0');
              })
          }
          GridItem() {
            Button(".", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff0c121a").width('100%').height('100%')
              .onClick(()=>{
                this.inputnumber('.');
              })
          }
          GridItem() {
            Button("=", {type: ButtonType.Normal}).fontColor("#ffcacaca").backgroundColor("#ff017e0f").width('100%').height('100%')
              .onClick(()=>{
                this.numbers=this.getresult(this.numbers).toString();
              })
          }
        }.columnsTemplate('1fr 1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
        .height(this.pagelenth[0])
        .columnsGap(5)
        .rowsGap(5)
        .margin({top: 5})
       // .visibility(this.pagestete[0])


      }
      .padding((10))

      .backgroundColor('#ff04050e')

    }
    inputnumber(o: string){
      this.numbers+=o
    }
    operators=new Map<string, number>([["+",0],["÷",0],["×",0],["-",0],["^",0],["tan",0],["sin",0],["cos",0],["log",0],["√",0],["arctan",0],["arcsin",0],["arccos",0]]);
    tailoperators=new Map<string, number>([["%",0],["!",0]]);
    sysbols=new Map<string, string>([["Π",Math.PI.toFixed(8)],["e",Math.E.toFixed(8)]]);
    getresult(inputstring:string):string {
      this.sysbols.forEach((value , key) =>{
        inputstring=inputstring.replace(key,value)
      });
      return this.solver(inputstring);
    }

    solver(inputstring:string):string{
      const nums : number[] = []
      const ops : string[] = []
      let num:string="",str="",nsb=""
      let flag:boolean=false
      let tp=0,brackets=0;
      inputstring+="p"
      for (let char of inputstring) {
        flag=brackets>0
        if(char=='(')brackets++;
        if(char==')')brackets--;
        if(flag)
        {
          if(brackets==0){
            let n=this.getresult(str);
            num=(n)
            str=""
          }else{
            str+=char;
          }
          continue;
        }
        if(brackets>0)continue;
        flag=(char>='0'&&char<='9')||char=='.'
        if(flag){
          num+=char
         // while(ops.length>0) this.operatorsovler(ops.pop() as string,nums)
        }
        else
        {
          if(this.tailoperators.has(nsb)){
            this.tailoperatorsovler(nsb,nums)
            nsb=''
          }
          else
          if(this.operators.has(nsb)){
            ops.push(nsb)
            nsb=''
          }

          flag=num!=""
          if(flag){
            tp=Number.parseFloat(num)
            num=""
            nums.push(tp)
            nsb = char
          }
          else
          {
            nsb += char
          }
          if(flag||char=='p')
            while(ops.length>0) this.operatorsovler(ops.pop() as string,nums)
        }

      }

      let sum=0;
      for (let o of nums) {
        sum+=o
      }
      //let m = Math.floor(sum)
      //sum = Math.floor((sum - m)*1000000)*0.000001+m;//限制小数最多到后六位
      return sum.toString();
    }
    tailoperatorsovler(ops:string,nums : number[]){
      let o=0,o1=0;
      switch (ops) {
        case "%":
            o = nums.pop() as number
            nums.push(o*0.01)
          break
        case "!":
          o1 = o = nums.pop() as number
          while(--o>0){
            o1*=o
          }
          nums.push(o1)
          break
      }
    }
    operatorsovler(ops:string,nums : number[]){
      let o=0,o1=0;
      switch (ops) {
        case "÷":
          if(nums.length>1) {
            o = nums.pop() as number
            o1 = nums.pop() as number
            if (o !== 0 ) {
              nums.push(o1 / o)
            }
          }
          break
        case "×":
          if(nums.length>1) {
            o = nums.pop() as number
            o1 = nums.pop() as number
            nums.push(o1 * o)
          }
          break
        case "-":
          o= nums.pop() as number
          nums.push(o*-1)
          break
        case "tan":
          o = nums.pop() as number
          if(this.DEG)o=o*Math.PI/180;
          nums.push(Math.tan(o))
          break
        case "sin":
          o = nums.pop() as number
          if(this.DEG)o=o*Math.PI/180;
          nums.push(Math.sin(o))
          break
        case "cos":
          o = nums.pop() as number
          if(this.DEG)o=o*Math.PI/180;
          nums.push(Math.cos(o))
          break
        case "^":
          o = nums.pop() as number
          o1 = nums.pop() as number
          nums.push(Math.pow(o1,o))
          break
        case "log":
          o = nums.pop() as number
          nums.push(Math.log10(o))
          break
        case "√":
          o = nums.pop() as number
          o1 = nums.pop() as number
          nums.push(Math.pow(o,1/o1))
          break
        case "arctan":
          o = nums.pop() as number
          o=Math.atan(o)
          if(this.DEG)o=o/Math.PI*180;
          nums.push(o)
          break
        case "arcsin":
          o = nums.pop() as number
          o=Math.asin(o)
          if(this.DEG)o=o/Math.PI*180;
          nums.push(o)
          break
        case "arccos":
          o = nums.pop() as number
          o=Math.acos(o)
          if(this.DEG)o=o/Math.PI*180;
          nums.push(o)
          break
      }
    }

}
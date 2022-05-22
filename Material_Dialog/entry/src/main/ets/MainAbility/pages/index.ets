@CustomDialog
struct AlertDialogExample  {
  controller: CustomDialogController
  cancel: () => void
  confirm: () => void

  build() {
    Column() {
      Text('Discard draft?').width('75%').fontSize(35).margin({ top: 20, bottom: 20 }).fontColor(Color.Gray)
//      Image($r('app.media.icon')).width(80).height(80)
//      Text('Whether to uninstall a software?').fontSize(16).margin({ bottom: 10 })
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('CANCEL')
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor(0xffffff).fontColor(0xA020F0).fontSize(20)
        Button('DISCARD')
          .onClick(() => {
            this.controller.close()
            this.confirm()
          }).backgroundColor(0xffffff).fontColor(0xA020F0).fontSize(20)
      }.width("70%").margin({left:50 , bottom: 30})
    }
  }
}

@CustomDialog
struct SimpleDialog {
  controller: CustomDialogController
  add: () => void

  build() {
    Column() {
      Text('Set Backup Account').width('100%').fontSize(30).margin({ top: 20, bottom: 20 , left:20}).fontWeight(1).margin({left:"10%",top:'5%'})

          Column(){
            Row(){
              Image($r('app.media.user')).width(80).height(80).margin({left:'3%'})
              Text("User1@gmail.com").fontSize(25).fontColor(Color.Gray).margin({left:'5%' })
            }.margin({top:10})
            Row(){
              Image($r('app.media.user')).width(80).height(80).margin({left:'3%'})
              Text("User2@gmail.com").fontSize(25).fontColor(Color.Gray).margin({left:'5%'})
            }.margin({top:10})

          }.height('40%').margin({top:'5%'}).width('100%')



      Flex({ direction:FlexDirection.Row }) {
        Button({ type: ButtonType.Circle, stateEffect: true }) {
          Image($r('app.media.add')).width(40).height(40)
        }.width(70).height(70).backgroundColor(Color.Gray)
        .onClick(() => {
          this.add()
        })
        Text("Add Account").fontColor(Color.Gray).fontSize(25).padding({top:'42%'}).margin({left:"10%"})
      }.margin({left:"7%"})
    }.width('100%').height('60%')
  }
}

@CustomDialog
struct ConfirmationDialog {

  controller: CustomDialogController
  cancel: () => void
  confirm: () => void

  scroller: Scroller = new Scroller()
  build() {
    Column() {
      Text('Phone Ringing Tone').width('100%').fontSize(35).margin({ top: 20, bottom: 20 , left:20})
      Divider().width('100%').height(30)
      Stack({ alignContent: Alignment.TopStart }) {
        Scroll(this.scroller) {
          Column() {
            Row() {
              Text("None").fontSize(25)
            }.margin({top:'10%'})
            Row() {
              Text("Callisto").fontSize(25)
            }.margin({top:'10%'})
            Row() {
              Text("Ganymeda").fontSize(25)
            }.margin({top:'10%'})
            Row() {
              Text("Luna").fontSize(25)
            }.margin({top:'10%'})
            Row() {
              Text("oberon").fontSize(25)
            }.margin({top:'10%'})
            Row() {
              Text("phobos").fontSize(25)
            }.margin({top:'10%'})
            Row() {
              Text("Dione").fontSize(25)
            }.margin({top:'10%'})
          }.width('100%')
        }
        .scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
        .scrollBarColor(Color.Gray).scrollBarWidth(30)
        .onScroll((xOffset: number, yOffset: number) => {
          console.info(xOffset + ' ' + yOffset)
        })
        .onScrollEdge((side: Edge) => {
          console.info('To the edge')
        })
        .onScrollEnd(() => {
          console.info('Scroll Stop')
        })
      }.height("65%").width('100%')

      Divider().width('100%').height(50)
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('CANCEL')
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor(0xffffff).fontColor(0xA020F0).fontSize(20).margin({ left: 50})
        Button('OK')
          .onClick(() => {
            this.controller.close()
            this.confirm()
          }).backgroundColor(0xffffff).fontColor(0xA020F0).fontSize(20).margin({ left: 10})
      }.width("100%").margin({ bottom: 10})
    }.width('100%').height('100%')
  }
}

@CustomDialog
struct FullScreenDialog {
  controller: CustomDialogController
  cancel: () => void
  save: () => void

  build() {
    Column() {
      Row(){
          Button({ type: ButtonType.Circle, stateEffect: true }) {
            Image($r('app.media.close')).width(40).height(40)
          }.width(55).height(55).backgroundColor(Color.White)
          .onClick(() => {
            this.controller.close()
          })
        Text('Create New Account').width('100%').fontSize(25).margin({ top: 20, bottom: 20 , left:20})
      }
      //      Image($r('app.media.icon')).width(80).height(80)
      //      Text('Whether to uninstall a software?').fontSize(16).margin({ bottom: 10 })
      Flex({direction:FlexDirection.Column,justifyContent: FlexAlign.SpaceAround}){
        TextInput({ placeholder: 'Event Name' })
          .type(InputType.Normal)
          .placeholderColor(Color.Gray)
          .placeholderFont({ size: 25, weight: FontWeight.Normal, family: "sans-serif", style: FontStyle.Normal })
          .enterKeyType(EnterKeyType.Next)
          .caretColor(Color.Green)
          .height(60)
          .fontSize(30)
          .borderWidth(2)
          .borderColor(Color.Gray)
        TextInput({ placeholder: 'Location' })
          .type(InputType.Normal)
          .placeholderColor(Color.Gray)
          .placeholderFont({ size: 25, weight: FontWeight.Normal, family: "sans-serif", style: FontStyle.Normal })
          .enterKeyType(EnterKeyType.Next)
          .caretColor(Color.Green)
          .height(60)
          .fontSize(30)
          .borderWidth(2)
          .borderColor(Color.Gray)
        Text('From').fontSize(20).fontColor(Color.Gray)
        Text('To').fontSize(20).fontColor(Color.Gray)
        Text('Timezone').fontSize(20).fontColor(Color.Gray)
      }.height("80%").width('90%')

      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('CANCEL')
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor(0xffffff).fontColor(0xA020F0).fontSize(20).margin({ left: 50})
        Button('SAVE')
          .onClick(() => {
            this.controller.close()
            this.save()
          }).backgroundColor(0xffffff).fontColor(0xA020F0).fontSize(20).margin({ left: 10})
      }.width("100%").margin({ bottom: 10})
    }.width('100%').height('100%')
  }
}

@Entry
@Component
struct Index {

  AlertDialogController: CustomDialogController = new CustomDialogController({
    builder: AlertDialogExample ({ cancel: this.onCancel, confirm: this.onAccept }),
    cancel: this.existApp,
    autoCancel: false
  })

  SimpleDialogController: CustomDialogController = new CustomDialogController({
    builder: SimpleDialog ({ add: this.onAdd }),
    cancel: this.existApp,
    autoCancel: true
  })

  ConfirmationDialogController: CustomDialogController = new CustomDialogController({
    builder: ConfirmationDialog({ cancel: this.onCancel, confirm: this.onAccept }),
    cancel: this.existApp,
    autoCancel: false,
//    customStyle:true
  })

  FullScreenDialogController: CustomDialogController = new CustomDialogController({
    builder: FullScreenDialog({ cancel: this.onCancel, save: this.onSave }),
    cancel: this.existApp,
    autoCancel: false,

  })

  onCancel() {
    console.info('Callback when the first button is clicked')
  }
  onAccept() {
    console.info('Callback when the second button is clicked')
  }
  existApp() {
    console.info('Click the callback in the blank area')
  }
  onAdd(){
    console.info('add new user account')
  }

  onSave(){
    console.info('save new user account')
  }

  build() {
   Column(){
      Text("Dialog")
        .fontColor('white')
        .backgroundColor('#ff5f1d5f')
        .fontSize(35)
        .textAlign(1)
        .width('100%')
        .height('15%')
        .padding('30')
      Blank()
      Button("Alert Dialog", { type: ButtonType.Normal })
        .onClick(()=>{
           this.AlertDialogController.open()
        })
        .backgroundColor('gray')
        .borderRadius(0)
        .fontSize(30)
        .width('100%')
      Blank()
      Button("Simple Dialog", { type: ButtonType.Normal })
        .onClick(()=>{
          this.SimpleDialogController.open()
        })
        .backgroundColor('gray')
        .borderRadius(0)
        .fontSize(30)
        .width('100%')
      Blank()
      Button("Conformation Dialog", { type: ButtonType.Normal })
        .onClick(()=>{
          this.ConfirmationDialogController.open()
        })
        .backgroundColor('gray')
        .borderRadius(0)
        .fontSize(30)
        .width('100%')
      Blank()
      Button("Full Screen Dialog", { type: ButtonType.Normal })
        .onClick(()=>{
          this.FullScreenDialogController.open()
        })
        .backgroundColor('gray')
        .borderRadius(0)
        .fontSize(30)
        .width('100%')
      Blank()
    }
    .width('100%')
    .height('100%')
  }
}


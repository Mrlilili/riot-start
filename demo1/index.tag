<todo>
    <h3>{opts.title}</h3>
    <h4> { opts.title=='123'?'1':'2' }</h4>
    <p class={ foo: true, bar: 0, baz: new Date(), zorro: 'a value' }></p>
    <forum />（包括游戏机）
    <style>
        todo h3 {
            color: red;
        }
    </style>
    <script>
        var self = this;
        this.on('before-mount', function () {
            console.log('标签被加载之前');
        })

        this.on('before-unmount', function () {
            console.log('标签实例被删除之前');
        })


        this.on('mount', function () {
            console.log('标签实例被加载到页面上以后(mount)');
        })

        this.on('update', function () {
            self.opts.title = 'change title title'
            console.log('允许在更新之前重新计算上下文数据(update)');
        })

        this.on('updated', function () {
            console.log('标签模板更新后(updated)');

        })


        this.on('unmount', function () {
            console.log('标签实例被从页面上删除后(unmount)');
        })

        // 想监听所有事件？
        this.on('all', function (eventName) {
            console.info(eventName)
        })

//        var self = this;
//        setTimeout(function () {
//            self.opts.title = 'change title';
//            self.update();
//        }, 1000);

    </script>
</todo>

<forum>
    <h3>title1q12</h3>
</forum>

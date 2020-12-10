// 立即执行函数，防止变量污染 (function() {})();
// 柱状图模块2
(function() {
    // // 1.实例化对象
    // var myChart = echarts.init(document.querySelector(".bar2 .chart"));
    // // 声明颜色数组
    // var myColor = ["#1089E7", "#F57474", "#56D0E3", "#F8B448", "#8B78F6", "red", "yellow", "pink"];
    // // 2.指定配置项和数据
    // var option = {
    //     grid: {
    //         top: "10%",
    //         left: '22%',
    //         bottom: '10%',
    //         // containLabel: true
    //     },
    //     xAxis: {
    //         // 不显示x轴相关信息
    //         show: false
    //     },
    //     yAxis: [{
    //         type: 'category',
    //         // y轴数据反转，与数组的顺序一致
    //         inverse: true,
    //         // 不显示y轴线和刻度
    //         axisLine: {
    //             show: false
    //         },
    //         axisTick: {
    //             show: false
    //         },
    //         // 将刻度标签文字设置为白色
    //         axisLabel: {
    //             color: "#fff"
    //         },
    //         data: ["计算机科学与技术学院", "艺术设计学院", "机械工程学院", "经济学院", "电缆工程学院", "管理学院", "电气工程与自动花学院", "车辆与交通工程学院", "外国语学院", "材料科学与工程学院", "电子信息工程学院", "智能 工程学院"]
    //     }, {
    //         // y轴数据反转，与数组的顺序一致
    //         inverse: true,
    //         show: true,
    //         // 不显示y轴线和刻度
    //         axisLine: {
    //             show: false
    //         },
    //         axisTick: {
    //             show: false
    //         },
    //         // 将刻度标签文字设置为白色
    //         axisLabel: {
    //             color: "#fff"
    //         },
    //         data: [702, 350, 610, 793, 664, 599, 499, 342, 230, 456, 345, 356, 567]
    //     }],
    //     series: [{
    //             // 第一组柱子（条状）
    //             name: '条',
    //             type: 'bar',
    //             // 柱子之间的距离
    //             barCategoryGap: 20,
    //             // 柱子的宽度
    //             barWidth: 10,
    //             // 层级 相当于z-index
    //             yAxisIndex: 0,
    //             itemStyle: {
    //                 emphasis: {
    //                     barBorderRadius: 3
    //                 },
    //                 normal: {
    //                     barBorderRadius: 3,
    //                     color: new echarts.graphic.LinearGradient(
    //                         0, 0, 1, 0, [
    //                             { offset: 0, color: '#b490ca' },
    //                             { offset: 1, color: '#764ba2' },
    //                         ]
    //                     )
    //                 }
    //             },
    //             data: [70, 34, 60, 78, 69, 54, 34, 24, 34, 56, 45, 34, 56],
    //             // 显示柱子内的百分比文字
    //             label: {
    //                 show: true,
    //                 position: "inside",
    //                 // {c} 会自动解析为数据（data内的数据）
    //                 formatter: "{c}%"
    //             }
    //         },
    //         {
    //             // 第二组柱子（框状 border）
    //             name: '框',
    //             type: 'bar',
    //             // 柱子之间的距离
    //             barCategoryGap: 20,
    //             // 柱子的宽度
    //             barWidth: 10,
    //             // 层级 相当于z-index
    //             yAxisIndex: 1,
    //             // 柱子修改样式
    //             itemStyle: {
    //                 color: "none",
    //                 borderColor: "#00c1de",
    //                 borderWidth: 1,
    //                 barBorderRadius: 10,
    //             },
    //             data: [100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100]
    //         }
    //     ]
    // };
    // // 3.把配置项给实例对象
    // myChart.setOption(option);
    const myChart = echarts.init(document.querySelector(".bar2 .chart"));
    //初始化数据
    const data = ["\u6570\u636e\u79d1\u5b66", "\u8f6f\u4ef6\u5de5\u7a0b", "\u6570\u5b57\u5a92\u4f53\u6280\u672f", "\u7269\u8054\u7f51\u5de5\u7a0b",]
    const barData = [214, 121, 581, 431];
    const option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        grid: {
            top: '1%',
            bottom: '1%',
            containLabel: true
        },
        xAxis: {
            show: false
        },
        yAxis: {
            type: 'category',
            inverse: true,
            data: data,
            splitLine: {
                show: false
            },
            axisLabel: {
                color: '#fff'
            },
            axisLine: {
                show: false
            },
            axisTick: {
                show: false
            },
            offset: 10,
            nameTextStyle: {
                fontSize: 10
            }
        },
        series: [{
            name: '数量',
            type: 'bar',
            data: barData,
            barWidth: 8,
            barGap: 5,
            smooth: true,
            label: {
                normal: {
                    show: true,
                    position: 'right',
                    offset: [5, -2],
                    textStyle: {
                        color: '#fff',
                        fontSize: 10
                    }
                }
            },
            itemStyle: {
                emphasis: {
                    barBorderRadius: 4
                },
                normal: {
                    barBorderRadius: 4,
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 1, 0, [{
                                offset: 0,
                                color: '#3977E6'
                            }, {
                                offset: 1,
                                color: '#37BBF8'
                            }

                        ]
                    )
                }
            }
        }]
    };
    myChart.setOption(option);
    // 4.让图表随屏幕自适应
    window.addEventListener('resize', function() {
        myChart.resize();
    })
})();

// 饼形图1
(function() {
    const myChart = echarts.init(document.querySelector(".pie .chart"));
    // var option = {
    //     tooltip: {
    //         trigger: 'item',
    //         formatter: "{b}: {c} ({d}%)"
    //     },
    //     color: ["#66a6ff", "#ee609c"],
    //     legend: {
    //         orient: 'vertical',
    //         x: 'right',
    //         itemWidth: 10,
    //         itemHeight: 70,
    //         textStyle: {
    //             color: "#4facfe"
    //         },
    //         data: ['本科', '专科', ]
    //     },
    //     series: [{
    //         type: 'pie',
    //         radius: ['50%', '80%'],
    //         avoidLabelOverlap: false,
    //         label: {
    //             normal: {
    //                 show: true,
    //                 position: 'center',
    //                 formatter: function() {
    //                     return 1430
    //                 },
    //                 textStyle: {
    //                     fontSize: 20,
    //                     color: '#667eea'
    //                 }
    //             },
    //             emphasis: {
    //                 show: false,
    //                 textStyle: {
    //                     fontSize: '30',
    //                     fontWeight: 'bold'
    //                 }
    //             }
    //         },

    //         data: [
    //             { value: 1120, name: '本科' },
    //             { value: 310, name: '专科' },
    //         ]
    //     }]
    // };
    const option = {
        legend: [{
            orient: 'vertical',
            selectedMode: true,
            x: 'right',
            itemWidth: 10,
            itemHeight: 70,
            textStyle: { // 图例的公用文本样式。
                fontSize: 12,
                color: '#4facfe'
            },
            data: ['\u672c\u79d1', '\u4e13\u79d1']
        }],
        tooltip: {
            show: true,
            formatter: '{b} </br> {c}\u4eba </br> \u5360\u6bd4{d}%' // 提示框显示内容,此处{b}表示各数据项名称，此项配置为默认显示项，{c}表示数据项的值，默认不显示，({d}%)表示数据项项占比，默认不显示。
        },
        graphic: {
            type: 'text', // [ default: image ]用 setOption 首次设定图形元素时必须指定。image, text, circle, sector, ring, polygon, polyline, rect, line, bezierCurve, arc, group,
            top: '55%', // 描述怎么根据父元素进行定位。top 和 bottom 只有一个可以生效。如果指定 top 或 bottom，则 shape 里的 y、cy 等定位属性不再生效。『父元素』是指：如果是顶层元素，父元素是 echarts 图表容器。如果是 group 的子元素，父元素就是 group 元素。
            left: 'center',
            style: {
                text: '1940', // 文本块文字。可以使用 \n 来换行。[ default: '' ]
                fill: '#fff', // 填充色。
                fontSize: 16,
                fontWeight: 'bold' // 文字字体的粗细，可选'normal'，'bold'，'bolder'，'lighter'
            }
        },
        series: [{
            name: '专本',
            type: 'pie',
            center: ['50%', '60%'],
            radius: ['50%', '75%'],
            hoverAnimation: true,
            color: ["#66a6ff", "#ee609c"],
            label: {
                normal: {
                    show: true,
                    position: 'outside',
                    formatter: '{d}%',
                    function() {
                        return 1430
                    },
                }
            },
            labelLine: {
                normal: {
                    show: true,
                    length: 20,
                    length2: 15,
                    lineStyle: {
                        //color: '#000',
                        //width: 1
                    }
                }
            },
            data: [
                { value: 1120, name: '\u672c\u79d1' },
                { value: 310, name: '\u4e13\u79d1' },
            ]
        }]
    };

    myChart.setOption(option);
    window.addEventListener('resize', function() {
        myChart.resize();
    })
})();

// 饼形图2
(function() {
    const myChart = echarts.init(document.querySelector('.pie2 .chart'));
    const option = {
        color: ['#60cda0', '#ed8884', '#ff9f7f', '#0096ff', '#9fe6b8'],
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            bottom: 0,
            itemWidth: 10,
            itemHeight: 10,
            textStyle: {
                color: "rgba(255,255,255,.5)",
                fontSize: 10
            }
        },
        series: [{
            name: '\u4e13\u4e1a\u5206\u5e03',
            type: 'pie',
            radius: ["10%", "60%"],
            center: ['50%', '40%'],
            // 半径模式  area面积模式
            roseType: 'radius',
            // 图形的文字标签
            label: {
                fontsize: 10
            },
            // 引导线调整
            labelLine: {
                // 连接扇形图线长(斜线)
                length: 6,
                // 连接文字线长(横线)
                length2: 8
            },
            data: [{
                    value: 26,
                    name: '\u6570\u636e\u79d1\u5b66'
                },
                {
                    value: 24,
                    name: '\u7269\u8054\u7f51\u5de5\u7a0b'
                },
                {
                    value: 25,
                    name: '\u8f6f\u4ef6\u5de5\u7a0b'
                },
                {
                    value: 20,
                    name: '\u6570\u5b57\u5a92\u4f53'
                },
                {
                    value: 25,
                    name: '\u79fb\u52a8\u5e94\u7528'
                },
            ]
        }]
    };
    myChart.setOption(option);
    window.addEventListener('resize', function() {
        myChart.resize();
    })
})();
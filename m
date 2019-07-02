Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054115CF62
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 14:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ya9cXFGFPq5FsLdxG9b0TKi/gZN+ZVMF6NZIzERt2T8=; b=c2Hk7C8JRAWAlT
	chiyfZCiD0e4G2mGgxJIsKxmeocvUF05uoIlBtu6UJorEdvMAxtNNXfKueGxXCevJ6SMl3YUnaCY2
	zU3Z7l8+nlXQbAj+7UhXCh4UAfaRQzdHBX+yVCE9f0Ca4q16RvacoNB0rlh2/bzLkRIJOiM6BkThK
	zg+H6BHL68g36KyUBi2m9nsWMp2w4837790M4L9+fUIc5ZzyP/jewZ5YYqkw2XkfGCEkb4ANse92n
	yRKaietA1wVcTskkb4zaqWIp8ffYCCUrpvrqEx3njQULtW0p4ffdRkDnJvj+HQ8ySZv/8b+zv+JGu
	m+sWQILYGTtksgIlar0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHqj-0002Ks-7y; Tue, 02 Jul 2019 12:25:29 +0000
Received: from mail-eopbgr680065.outbound.protection.outlook.com
 ([40.107.68.65] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHqX-0002Jr-FD
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 12:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XPMkIUvDiHI7f3kP3OP9mw2bnBRuZY05EIeALjI5fsQ=;
 b=LNca50U3bqoQ/dioAA0L3CV8EvEFDxHo+Ny8IdiaAUv9+PmSJm3h6qAzDnhTOMCnahI+f2/EL+mHbQUu/iXez9QbeSwgQZVOFIK/3agKxm9KSHxEEZ0AP5xr5/ChkLn5nQI+xiNACgTJCLMBTyRc4seEfTK4roPOn3wqBMTQO8Q=
Received: from CH2PR02MB6088.namprd02.prod.outlook.com (52.132.228.94) by
 CH2PR02MB6375.namprd02.prod.outlook.com (52.132.231.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 12:25:11 +0000
Received: from CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::456d:ace7:7c55:8639]) by CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::456d:ace7:7c55:8639%3]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 12:25:11 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Luca Ceresoli <luca@lucaceresoli.net>, Vishal Sagar
 <vishal.sagar@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Michal
 Simek <michals@xilinx.com>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "hans.verkuil@cisco.com"
 <hans.verkuil@cisco.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Dinesh Kumar <dineshk@xilinx.com>, Sandip
 Kothari <sandipk@xilinx.com>, Jacopo Mondi <jacopo@jmondi.org>
Subject: RE: [PATCH v9 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Topic: [PATCH v9 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Index: AQHVID4PYfrRtfYgTECjjXwqUQCuJaa02aUAgAKAjsA=
Date: Tue, 2 Jul 2019 12:25:10 +0000
Message-ID: <CH2PR02MB6088AF87A011C148BA07C7AFA7F80@CH2PR02MB6088.namprd02.prod.outlook.com>
References: <1560247809-117978-1-git-send-email-vishal.sagar@xilinx.com>
 <1560247809-117978-3-git-send-email-vishal.sagar@xilinx.com>
 <b51bdf5d-4002-5ec6-d687-b97b4f8bbd78@lucaceresoli.net>
In-Reply-To: <b51bdf5d-4002-5ec6-d687-b97b4f8bbd78@lucaceresoli.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a281673-4e17-4adf-cb42-08d6fee853bb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6375; 
x-ms-traffictypediagnostic: CH2PR02MB6375:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR02MB6375A8784C81078DBBA0BF14A7F80@CH2PR02MB6375.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(199004)(189003)(51914003)(13464003)(74316002)(7736002)(66066001)(305945005)(5660300002)(229853002)(966005)(446003)(2501003)(478600001)(110136005)(8936002)(71190400001)(8676002)(11346002)(25786009)(486006)(33656002)(476003)(71200400001)(81156014)(81166006)(2906002)(68736007)(316002)(7416002)(76176011)(102836004)(53546011)(6506007)(7696005)(6246003)(26005)(66556008)(66446008)(64756008)(66476007)(6116002)(73956011)(66946007)(186003)(52536014)(14444005)(86362001)(76116006)(6306002)(256004)(6436002)(9686003)(3846002)(55016002)(2201001)(53936002)(99286004)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6375;
 H:CH2PR02MB6088.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NFvY5tW9L9gEjBCakKQwdwBfYixOy9sG4TBHJ2MW7kvBMtEEd6V4BR500MkbAyGTIPRiXoDo2kMhSIAC8KdOfHskgGPMmeV7bKS1/oXj5xQ8gMGicNYnJrrjlj6HxOYSdhNPChzhNVeTOCU8M7GYCWW9jS6bmw1OTga9KI+cCyUdmkYb48LKciN92PxXBDHBJZUIKtcYM5D30l6TA/1AbKG97RsLptBnwjifR4ElxGZ6xWqL0RTc3LbIeowbHY8wmUdjqD48WDvRJhX6rU2v4os1eEuVreFH19WWDlsjqNlUBTB1URwNRVt1Hqdg6Cad1AFjlju3Jd6G75Eh4dWfl2E/abRT7OhRrmjWl8/I1O2VH/4eASDQkx8tlHCkR42lYGT4MlD0cml92tTwSvaa1/3SLUPs11PLnza374h/vgk=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a281673-4e17-4adf-cb42-08d6fee853bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 12:25:10.8159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsagar@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6375
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_052517_578654_C7D7CC4B 
X-CRM114-Status: GOOD (  29.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luca,

Thanks for the review.

> -----Original Message-----
> From: Luca Ceresoli [mailto:luca@lucaceresoli.net]
> Sent: Monday, July 01, 2019 3:15 AM
> To: Vishal Sagar <vishal.sagar@xilinx.com>; Hyun Kwon <hyunk@xilinx.com>;
> laurent.pinchart@ideasonboard.com; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Jacopo Mondi
> <jacopo@jmondi.org>
> Subject: Re: [PATCH v9 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
> Subsystem driver
> 
> EXTERNAL EMAIL
> 
> Hi Vishal,
> 
> a few questions below about the SLBF error management.
> 
> On 11/06/19 12:10, Vishal Sagar wrote:
> > The Xilinx MIPI CSI-2 Rx Subsystem soft IP is used to capture images
> > from MIPI CSI-2 camera sensors and output AXI4-Stream video data ready
> > for image processing. Please refer to PG232 for details.
> >
> > The driver is used to set the number of active lanes, if enabled
> > in hardware. The CSI2 Rx controller filters out all packets except for
> > the packets with data type fixed in hardware. RAW8 packets are always
> > allowed to pass through.
> >
> > It is also used to setup and handle interrupts and enable the core. It
> > logs all the events in respective counters between streaming on and off.
> >
> > The driver supports only the video format bridge enabled configuration.
> > Some data types like YUV 422 10bpc, RAW16, RAW20 are supported when
> the
> > CSI v2.0 feature is enabled in design. When the VCX feature is enabled,
> > the maximum number of virtual channels becomes 16 from 4.
> >
> > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> 
> ...
> 
> > --- /dev/null
> > +++ b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
> 
> ...
> > +/**
> > + * xcsi2rxss_irq_handler - Interrupt handler for CSI-2
> > + * @irq: IRQ number
> > + * @dev_id: Pointer to device state
> > + *
> > + * In the interrupt handler, a list of event counters are updated for
> > + * corresponding interrupts. This is useful to get status / debug.
> > + *
> > + * In case of stream line buffer full condition, the IP is reset, stopped and
> > + * an event is raised.
> > + *
> > + * Return: IRQ_HANDLED after handling interrupts
> > + *         IRQ_NONE is no interrupts
> > + */
> > +static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id)
> > +{
> > +     struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
> > +     struct xcsi2rxss_core *core = &state->core;
> > +     u32 status;
> > +
> > +     status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) &
> XCSI_ISR_ALLINTR_MASK;
> > +     dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n", status);
> > +
> > +     if (!status)
> > +             return IRQ_NONE;
> > +
> > +     /* Received a short packet */
> > +     if (status & XCSI_ISR_SPFIFONE) {
> > +             dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
> > +                                 xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
> > +     }
> > +
> > +     /* Short packet FIFO overflow */
> > +     if (status & XCSI_ISR_SPFIFOF)
> > +             dev_alert_ratelimited(core->dev, "Short packet FIFO overflowed\n");
> > +
> > +     /*
> > +      * Stream line buffer full
> > +      * This means there is a backpressure from downstream IP
> > +      */
> > +     if (status & XCSI_ISR_SLBF) {
> > +             dev_alert_ratelimited(core->dev, "Stream Line Buffer Full!\n");
> > +             if (core->rst_gpio) {
> > +                     gpiod_set_value(core->rst_gpio, 1);
> > +                     /* minimum 40 dphy_clk_200M cycles */
> > +                     ndelay(250);
> > +                     gpiod_set_value(core->rst_gpio, 0);
> > +             }
> > +             xcsi2rxss_stop_stream(state);
> 
> I've been hit by the dreadful "Stream Line Buffer Full" error, getting
> the CSI-2 RX completely stuck in SLBF and not transmitting any frames
> sporadically after glitches in the incoming MIPI stream. And I found
> that adding xcsi2rxss_start_stream() here just after
> xcsi2rxss_stop_stream() allows to continue the stream with almost no
> interruption and without userspace intervention.
> 
> Do you think this is a reliable solution, or does it have side-effects I
> didn't encounter? Note I'm not using pm nor the ctrls, so register
> writes are limited to the enable/disable code paths.
> 

When a stream line buffer full condition occurs it means that there is a rate mismatch.
It is best to recheck the design. Hence the intention of the code is to notify about this error and stop streaming.

If you want to restart streaming then the correct sequence would be to 
1 - stop stream 
2 - apply video_aresetn
3 - start stream

I will correct my sequence to to stop the stream first and then apply video_aresetn.
But restarting the stream will only mask the design / system issue.
So I think it is better to stop the stream.

> Does video_aresetn also reset registers?
> 

Applying the video_aresetn only resets the IP logic and not the registers.

> BTW in my code I also moved xcsi2rxss_stop_stream() before the if
> (core->rst_gpio) {}. There is no strong reason for this, I didn't
> observe any functional difference, it just looks
> more logical to me to stop the IP before resetting it.
> 

That is right.

> ...
> 
> > +static int xcsi2rxss_probe(struct platform_device *pdev)
> > +{
> > +     struct v4l2_subdev *subdev;
> > +     struct xcsi2rxss_state *xcsi2rxss;
> > +     struct xcsi2rxss_core *core;
> > +     struct resource *res;
> > +     int ret, num_ctrls, i;
> > +
> > +     xcsi2rxss = devm_kzalloc(&pdev->dev, sizeof(*xcsi2rxss), GFP_KERNEL);
> > +     if (!xcsi2rxss)
> > +             return -ENOMEM;
> > +
> > +     core = &xcsi2rxss->core;
> > +     core->dev = &pdev->dev;
> > +
> > +     core->clks = devm_kmemdup(core->dev, xcsi2rxss_clks,
> > +                               sizeof(xcsi2rxss_clks), GFP_KERNEL);
> > +     if (!core->clks)
> > +             return -ENOMEM;
> > +
> > +     /* Reset GPIO */
> > +     core->rst_gpio = devm_gpiod_get_optional(core->dev, "reset",
> > +                                              GPIOD_OUT_HIGH);
> 
> Is GPIOD_OUT_HIGH correct? video_aresetn is active low.

This is correct. In the device tree, we mark this as reset-gpio with GPIO_ACTIVE_LOW.
Please refer to https://www.kernel.org/doc/Documentation/gpio/board.txt power-gpios example.

> 
> > +     if (IS_ERR(core->rst_gpio)) {
> > +             if (PTR_ERR(core->rst_gpio) != -EPROBE_DEFER)
> > +                     dev_err(core->dev, "Video Reset GPIO not setup in DT");
> > +             return PTR_ERR(core->rst_gpio);
> > +     }
> > +
> > +     mutex_init(&xcsi2rxss->lock);
> > +
> > +     ret = xcsi2rxss_parse_of(xcsi2rxss);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +     core->iomem = devm_ioremap_resource(core->dev, res);
> > +     if (IS_ERR(core->iomem))
> > +             return PTR_ERR(core->iomem);
> > +
> > +     core->num_clks = ARRAY_SIZE(xcsi2rxss_clks);
> > +
> > +     ret = clk_bulk_get(core->dev, core->num_clks, core->clks);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = clk_bulk_prepare_enable(core->num_clks, core->clks);
> > +     if (ret)
> > +             goto err_clk_put;
> > +
> > +     if (xcsi2rxss->core.rst_gpio) {
> > +             gpiod_set_value_cansleep(xcsi2rxss->core.rst_gpio, 1);
> > +             /* minimum of 40 dphy_clk_200M cycles */
> > +             usleep_range(1, 2);
> > +             gpiod_set_value_cansleep(xcsi2rxss->core.rst_gpio, 0);
> > +     }
> 
> "xcsi2rxss->core" -> "core" in these lines.
> 

Agree. I will fix this in next version. 

Regards

Vishal Sagar

> Thanks,
> --
> Luca
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

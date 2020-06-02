Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB6D1EB8F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuBPY8q3Ahm+VcwM5RUZqvecnqeBGB9Nw8bFe82ywW4=; b=SN40lTRlxpHpBb
	2xydkrXr+3CxKRw5hRfi5v73pQtxXxqzebCfGqsrsJx6Q7CUV6buWkwdjStQ22sf78JddN0SMZR3M
	x50k0AadOVq9/i29oS3zaON3WswEG8fpzkkAiKmRBYFRx7quHWw3/n5Ge0P22O/gFWFUaJacKuZbP
	UyRrSLzQnglsx02YjAYHuvIMIk4mfKeTDAukehHRNf+40pcm6z5e55/ysCUuwkPOHGW36aMEH4FgR
	eg1yRXU4EOZtt1yJ5GRd2hBCJP1pTGeZ3R5mzgrq62UqAmztcL4WlSwWbbdrV4wtV0qqI5TSvZefJ
	N8VeA/voFDi3dJQT0kIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3fT-0001sa-CN; Tue, 02 Jun 2020 09:57:11 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3fK-0001rS-6Q; Tue, 02 Jun 2020 09:57:03 +0000
IronPort-SDR: T9/AA9kJYaguA4x2cBJXWs2PW29N96e2CMT1tIAdnSCY31DtvKfxfuOHccqODTgIdMr8PVeQuW
 Kd+o9mAFhvnw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 02:57:01 -0700
IronPort-SDR: f5pjhVT4Hj49CKceAZLTS74rIEdpoYh4/acIP08Zj1vAOUlBP6YhHPZuGdb0XaFyASIKWEl1L2
 T9Kb4uSOJ+2A==
X-IronPort-AV: E=Sophos;i="5.73,463,1583222400"; d="scan'208";a="416128886"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 02:56:56 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 9497820A25; Tue,  2 Jun 2020 12:56:54 +0300 (EEST)
Date: Tue, 2 Jun 2020 12:56:54 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200602095654.GD29325@paasikivi.fi.intel.com>
References: <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
 <1590636882.8804.474.camel@mhfsdcap03>
 <20200528072332.GW7618@paasikivi.fi.intel.com>
 <1590653082.8804.517.camel@mhfsdcap03>
 <CAAFQd5AuHDpQN8xZsWgnAt6m2reAYJbs9nBp0+mBo7_FS81LbQ@mail.gmail.com>
 <1590978816.8804.523.camel@mhfsdcap03>
 <CAAFQd5AY9gejoiwxojvvG0FaVfEAf8gCqOddvo-dxemQWFksVw@mail.gmail.com>
 <1591078501.8804.539.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591078501.8804.539.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_025702_261806_1CFB92BA 
X-CRM114-Status: GOOD (  34.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Tue, Jun 02, 2020 at 02:15:01PM +0800, Dongchun Zhu wrote:
> Hi Tomasz, Sakari,
> 
> On Mon, 2020-06-01 at 20:18 +0200, Tomasz Figa wrote:
> > On Mon, Jun 1, 2020 at 4:35 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Fri, 2020-05-29 at 15:43 +0200, Tomasz Figa wrote:
> > > > On Thu, May 28, 2020 at 10:06 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > > >
> > > > > Hi Sakari,
> > > > >
> > > > > On Thu, 2020-05-28 at 10:23 +0300, Sakari Ailus wrote:
> > > > > > Hi Dongchun,
> > > > > >
> > > > > > On Thu, May 28, 2020 at 11:34:42AM +0800, Dongchun Zhu wrote:
> > > > > > > Hi Sakari, Rob,
> > > > > > >
> > > > > > > On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> > > > > > > > Hi Rob, Dongchun,
> > > > > > > >
> > > > > > > > On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > > > > > > > > +    properties:
> > > > > > > > > > > > +      endpoint:
> > > > > > > > > > > > +        type: object
> > > > > > > > > > > > +        additionalProperties: false
> > > > > > > > > > > > +
> > > > > > > > > > > > +        properties:
> > > > > > > > > >
> > > > > > > > > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > > > > > > > >
> > > > > > > > > Yes, if you are using it.
> > > > > > > >
> > > > > > > > Dongchun, can you confirm the chip has a single data and a single clock
> > > > > > > > lane and that it does not support lane reordering?
> > > > > > > >
> > > > > > >
> > > > > > > From the datasheet, 'MIPI inside the OV02A10 provides one single
> > > > > > > uni-directional clock lane and one bi-directional data lane solution for
> > > > > > > communication links between components inside a mobile device.
> > > > > > > The data lane has full support for HS(uni-directional) and
> > > > > > > LP(bi-directional) data transfer mode.'
> > > > > > >
> > > > > > > The sensor doesn't support lane reordering, so 'clock-lanes' property
> > > > > > > would not be added in next release.
> > > > > > >
> > > > > > > > So if there's nothing to convey to the driver, also the data-lanes should
> > > > > > > > be removed IMO.
> > > > > > > >
> > > > > > >
> > > > > > > However, 'data-lanes' property may still be required.
> > > > > > > It is known that either data-lanes or clock-lanes is an array of
> > > > > > > physical data lane indexes. Position of an entry determines the logical
> > > > > > > lane number, while the value of an entry indicates physical lane, e.g.,
> > > > > > > for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
> > > > > > > the clock lane is on hardware lane 0.
> > > > > > >
> > > > > > > As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
> > > > > > > support lane reordering, so here we shall use 'data-lanes = <1>' as
> > > > > > > there is only a clock lane for OV02A10.
> > > > > > >
> > > > > > > Reminder:
> > > > > > > If 'data-lanes' property is not present, the driver would assume
> > > > > > > four-lane operation. This means for one-lane or two-lane operation, this
> > > > > > > property must be present and set to the right physical lane indexes.
> > > > > > > If the hardware does not support lane reordering, monotonically
> > > > > > > incremented values shall be used from 0 or 1 onwards, depending on
> > > > > > > whether or not there is also a clock lane.
> > > > > >
> > > > > > How can the driver use four lanes, considering the device only supports a
> > > > > > single lane??
> > > > > >
> > > > >
> > > > > I understood your meaning.
> > > > > If we omit the property 'data-lanes', the sensor should work still.
> > > > > But then what's the meaning of the existence of 'data-lanes'?
> > > > > If this property 'data-lanes' is always optional, then why dt-bindings
> > > > > provide the interface?
> > > > >
> > > > > In the meantime, if omitting 'data-lanes' for one sensor(transmitter)
> > > > > that has only one physical data lane, MIPI receiver(e.g., MIPI CSI-2)
> > > > > shall enable four-lane configuration, which may increase consumption of
> > > > > both power and resource in the process of IIC communication.
> > > >
> > > > Wouldn't the receiver still have the data-lanes property under its
> > > > endpoint node, telling it how many lanes and in which order should be
> > > > used?
> > > >
> > >
> > > The MIPI receiver(RX) shall use
> > > v4l2_async_notifier_add_fwnode_remote_subdev() API to parse the property
> > > "data-lanes" under sensor output port.
> > 
> > That's not true. The MIPI receiver driver parses its own port node
> > corresponding to the sensor. Also quoting the documentation [1]:
> > 
> > "An endpoint subnode of a device contains all properties needed for
> > _configuration of this device_ for data exchange with other device. In most
> > cases properties at the peer 'endpoint' nodes will be identical, however they
> > might need to be different when there is any signal modifications on the bus
> > between two devices, e.g. there are logic signal inverters on the lines."
> > 
> > In this case, there is such a signal modification if the sensor has a
> > 1-lane bus and the receiver more lines, so the data-lanes properties
> > would be different on both sides.
> > 
> > [1] https://elixir.bootlin.com/linux/v5.7/source/Documentation/devicetree/bindings/media/video-interfaces.txt
> > 
> 
> Sorry for the misunderstanding.
> After doing some experiments about the data-lanes property under sensor
> i2c node, we found the API
> v4l2_async_notifier_add_fwnode_remote_subdev() that MIPI receiver driver
> used indeed parses the data-lanes under its own port node.
> 
> Sorry make a mistake for the use case of sensor data-lanes previously.
> Now We may encounter one new question for this patch.
> In practice we haven't used the data-lanes under sensor i2c node
> anywhere, if sensor driver itself doesn't parse that.
> 
> But there is still one reason to keep the exactly right data-lanes in
> DT. That is, the data-lanes under sensor i2c node could be used as a
> reference for MIPI receiver driver.
> Just as Tomasz said, 'The MIPI receiver driver parses its own port node
> corresponding to the sensor'.
> 
> Sakari, Tomasz, what's your opinions about the present of data-lanes
> under sensor node or not?

The receiver driver doesn't parse the properties in the sensor
(transmitter) device's endpoint. If that property provides no information
to the receiver, as is the case here, it should be omitted.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

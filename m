Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E621EB5BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBPLz6Zqn8/DwHNPj2gu/c2GJT1qoSI3YQYmS6Diauk=; b=DxHidm1zMvX+LD
	fp43OBd6FvDKDhjVKxGneTevqoVWyKflWWxaTkxy22Q9Bbb2FpUFLa3Y26iFzi3Iciemv1v7FK9QY
	7tUYsH3pc5cQ9EuJe2Zm7qYzrXvtFybRI9xzRueTgi/M8aHPZT7WxCuOZICkr8h9YnKe9rD62ibvg
	PyWEDDLGNii6jOWeXlTp7zGrCcUInObf/Pvi3bQo9OQmaV/IxsDp6BEXZeILBUOKj8xtZG3Ye3iYr
	ipm+TZFSE5fZYMl8zEd9hMO6X9rv7JZrzjvei+zUu308oiWdpqeBIqxBZFDKVqYeZIRnMtX4gNrk/
	+7MFnsVZjzv33BqhY82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg0Eh-0003xy-GT; Tue, 02 Jun 2020 06:17:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0EZ-0003w0-LG; Tue, 02 Jun 2020 06:17:13 +0000
X-UUID: 4e6c9ac029b04959aa5da090be7d0dc2-20200601
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=52LMWjXgcgHTMdeFN/WLfv0/xMo/B6WtU8uG4FMZzUc=; 
 b=brkEbC7PQ7BPyK0asQ7MLzoRxPDxiDKLca0AlxvlyJf31gWXk6MSkxDPSbGhI7Mg0f7aRgf672qvljYfh6JVNyCBa3RcyY0W7C+ounm6Ux0ON5TDxpjCAbzW/t7GKw60jqPXQ3mzrQHe3kRiZfReb9WSTCNHEijTaY4eWcA0XuM=;
X-UUID: 4e6c9ac029b04959aa5da090be7d0dc2-20200601
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 544322756; Mon, 01 Jun 2020 22:17:07 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 23:17:03 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 2 Jun 2020 14:16:59 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 2 Jun 2020 14:16:58 +0800
Message-ID: <1591078501.8804.539.camel@mhfsdcap03>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 2 Jun 2020 14:15:01 +0800
In-Reply-To: <CAAFQd5AY9gejoiwxojvvG0FaVfEAf8gCqOddvo-dxemQWFksVw@mail.gmail.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus> <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
 <1590636882.8804.474.camel@mhfsdcap03>
 <20200528072332.GW7618@paasikivi.fi.intel.com>
 <1590653082.8804.517.camel@mhfsdcap03>
 <CAAFQd5AuHDpQN8xZsWgnAt6m2reAYJbs9nBp0+mBo7_FS81LbQ@mail.gmail.com>
 <1590978816.8804.523.camel@mhfsdcap03>
 <CAAFQd5AY9gejoiwxojvvG0FaVfEAf8gCqOddvo-dxemQWFksVw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A9AC065C4A1F08B9E7B8B0326C91B759B13EEBC728E9C857B02494DBE22A12912000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_231711_704763_FCFAC4B2 
X-CRM114-Status: GOOD (  30.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Shengnan Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>, Bartosz
 Golaszewski <bgolaszewski@baylibre.com>, Sj Huang <sj.huang@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz, Sakari,

On Mon, 2020-06-01 at 20:18 +0200, Tomasz Figa wrote:
> On Mon, Jun 1, 2020 at 4:35 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Fri, 2020-05-29 at 15:43 +0200, Tomasz Figa wrote:
> > > On Thu, May 28, 2020 at 10:06 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > >
> > > > Hi Sakari,
> > > >
> > > > On Thu, 2020-05-28 at 10:23 +0300, Sakari Ailus wrote:
> > > > > Hi Dongchun,
> > > > >
> > > > > On Thu, May 28, 2020 at 11:34:42AM +0800, Dongchun Zhu wrote:
> > > > > > Hi Sakari, Rob,
> > > > > >
> > > > > > On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> > > > > > > Hi Rob, Dongchun,
> > > > > > >
> > > > > > > On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > > > > > > > +    properties:
> > > > > > > > > > > +      endpoint:
> > > > > > > > > > > +        type: object
> > > > > > > > > > > +        additionalProperties: false
> > > > > > > > > > > +
> > > > > > > > > > > +        properties:
> > > > > > > > >
> > > > > > > > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > > > > > > >
> > > > > > > > Yes, if you are using it.
> > > > > > >
> > > > > > > Dongchun, can you confirm the chip has a single data and a single clock
> > > > > > > lane and that it does not support lane reordering?
> > > > > > >
> > > > > >
> > > > > > From the datasheet, 'MIPI inside the OV02A10 provides one single
> > > > > > uni-directional clock lane and one bi-directional data lane solution for
> > > > > > communication links between components inside a mobile device.
> > > > > > The data lane has full support for HS(uni-directional) and
> > > > > > LP(bi-directional) data transfer mode.'
> > > > > >
> > > > > > The sensor doesn't support lane reordering, so 'clock-lanes' property
> > > > > > would not be added in next release.
> > > > > >
> > > > > > > So if there's nothing to convey to the driver, also the data-lanes should
> > > > > > > be removed IMO.
> > > > > > >
> > > > > >
> > > > > > However, 'data-lanes' property may still be required.
> > > > > > It is known that either data-lanes or clock-lanes is an array of
> > > > > > physical data lane indexes. Position of an entry determines the logical
> > > > > > lane number, while the value of an entry indicates physical lane, e.g.,
> > > > > > for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
> > > > > > the clock lane is on hardware lane 0.
> > > > > >
> > > > > > As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
> > > > > > support lane reordering, so here we shall use 'data-lanes = <1>' as
> > > > > > there is only a clock lane for OV02A10.
> > > > > >
> > > > > > Reminder:
> > > > > > If 'data-lanes' property is not present, the driver would assume
> > > > > > four-lane operation. This means for one-lane or two-lane operation, this
> > > > > > property must be present and set to the right physical lane indexes.
> > > > > > If the hardware does not support lane reordering, monotonically
> > > > > > incremented values shall be used from 0 or 1 onwards, depending on
> > > > > > whether or not there is also a clock lane.
> > > > >
> > > > > How can the driver use four lanes, considering the device only supports a
> > > > > single lane??
> > > > >
> > > >
> > > > I understood your meaning.
> > > > If we omit the property 'data-lanes', the sensor should work still.
> > > > But then what's the meaning of the existence of 'data-lanes'?
> > > > If this property 'data-lanes' is always optional, then why dt-bindings
> > > > provide the interface?
> > > >
> > > > In the meantime, if omitting 'data-lanes' for one sensor(transmitter)
> > > > that has only one physical data lane, MIPI receiver(e.g., MIPI CSI-2)
> > > > shall enable four-lane configuration, which may increase consumption of
> > > > both power and resource in the process of IIC communication.
> > >
> > > Wouldn't the receiver still have the data-lanes property under its
> > > endpoint node, telling it how many lanes and in which order should be
> > > used?
> > >
> >
> > The MIPI receiver(RX) shall use
> > v4l2_async_notifier_add_fwnode_remote_subdev() API to parse the property
> > "data-lanes" under sensor output port.
> 
> That's not true. The MIPI receiver driver parses its own port node
> corresponding to the sensor. Also quoting the documentation [1]:
> 
> "An endpoint subnode of a device contains all properties needed for
> _configuration of this device_ for data exchange with other device. In most
> cases properties at the peer 'endpoint' nodes will be identical, however they
> might need to be different when there is any signal modifications on the bus
> between two devices, e.g. there are logic signal inverters on the lines."
> 
> In this case, there is such a signal modification if the sensor has a
> 1-lane bus and the receiver more lines, so the data-lanes properties
> would be different on both sides.
> 
> [1] https://elixir.bootlin.com/linux/v5.7/source/Documentation/devicetree/bindings/media/video-interfaces.txt
> 

Sorry for the misunderstanding.
After doing some experiments about the data-lanes property under sensor
i2c node, we found the API
v4l2_async_notifier_add_fwnode_remote_subdev() that MIPI receiver driver
used indeed parses the data-lanes under its own port node.

Sorry make a mistake for the use case of sensor data-lanes previously.
Now We may encounter one new question for this patch.
In practice we haven't used the data-lanes under sensor i2c node
anywhere, if sensor driver itself doesn't parse that.

But there is still one reason to keep the exactly right data-lanes in
DT. That is, the data-lanes under sensor i2c node could be used as a
reference for MIPI receiver driver.
Just as Tomasz said, 'The MIPI receiver driver parses its own port node
corresponding to the sensor'.

Sakari, Tomasz, what's your opinions about the present of data-lanes
under sensor node or not?

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

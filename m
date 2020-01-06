Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D8F131179
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 12:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uj4ISGYewhbnLKqvd+hw1uVOo/rvrnwXnDXgDoCpSM0=; b=B6AqaKdUlJbK1f
	Wk3l+uCtxdujd/g+3IlNX22lxBG8WjIepBBuagff5GEYm+iCT+uQanwGaPPfrjabjBK7W3MACGzf4
	YkOcEeaadsdBRZ2TsOuoMWA2wEmfPbcegxW7RXeNZNnS54OO7S+C+vdVrHZq5ZZkuXjYa3GvW+zlU
	shOjNJHBS0oSacGkTx/U6Iwb51fdFj0Ixjfom6UNR+iG/ow7ZYUV7F5UyoYA3DGYlK+zDNh6OC672
	Ubtx84FvEA3rQ28iZbQKNkDVRJFpQkp8WN3gfZAs5AKe9UFLoUnx6OaXApFxVmG/uNcu3/xJmxNxT
	1/ANGWsgzWoYeYaZCYUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQig-0008Ou-9w; Mon, 06 Jan 2020 11:38:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQiU-0008EO-TS
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 11:38:40 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ioQiL-0004uf-AZ; Mon, 06 Jan 2020 12:38:29 +0100
Message-ID: <fd6e6d92fdc15552bb60481fec6f5622a1575e43.camel@pengutronix.de>
Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional functionality of
 i.MX8M Mini
From: Lucas Stach <l.stach@pengutronix.de>
To: Jacky Bai <ping.bai@nxp.com>, Adam Ford <aford173@gmail.com>, arm-soc
 <linux-arm-kernel@lists.infradead.org>
Date: Mon, 06 Jan 2020 12:38:25 +0100
In-Reply-To: <DB7PR04MB5178EA739587B2DB084570B9872F0@DB7PR04MB5178.eurprd04.prod.outlook.com>
References: <20191213160542.15757-1-aford173@gmail.com>
 <CAHCN7xKuVCGqgRpixa9UPkWq92Gg=dm4XxAczBKAZCoMzcBVJg@mail.gmail.com>
 <DB7PR04MB5178EA739587B2DB084570B9872F0@DB7PR04MB5178.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_033838_980679_C5394927 
X-CRM114-Status: GOOD (  35.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jacky,

On So, 2019-12-22 at 08:33 +0000, Jacky Bai wrote:
> > -----Original Message-----
> > From: Adam Ford <aford173@gmail.com>
> > Sent: Saturday, December 21, 2019 11:07 PM
> > To: arm-soc <linux-arm-kernel@lists.infradead.org>
> > Cc: Peng Fan <peng.fan@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Rob
> > Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> > Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> > dl-linux-imx <linux-imx@nxp.com>; devicetree <devicetree@vger.kernel.org>;
> > Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Leonard Crestez
> > <leonard.crestez@nxp.com>
> > Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional functionality of
> > i.MX8M Mini
> > 
> > On Fri, Dec 13, 2019 at 10:05 AM Adam Ford <aford173@gmail.com> wrote:
> > > The GPCv2 controller on the i.MX8M Mini is compatible with the driver
> > > used for the i.MX8MQ except for the register locations and names.
> > > The GPCv2 controller is used to enable additional periperals currently
> > > unavailable on the i.MX8M Mini.  In order to make them function, the
> > > GPCv2 needs to be adapted so the drivers can associate their power
> > > domain to the GPCv2 to enable them.
> > > 
> > > This series makes one include file slightly more generic, adds the
> > > iMX8M Mini entries, updates the bindings, adds them to the device
> > > tree, then associates the new power domain to both the OTG and PCIe
> > > controllers.
> > > 
> > > Some peripherals may need additional power domain drivers in the
> > > future due to limitations of the GPC driver, but the drivers for VPU
> > > and others are not available yet.
> > 
> > Before I do a V3 to address Rob's comments, I am thinking I'll drop the items
> > on the GPC that Jacky suggested would not work, and we don't have drivers
> > for those other peripherals (GPU, VPU, etc.) anyway.  My main goal here was
> > to try and get the USB OTG ports working, so I'd like to enabled enough of the
> > items on the GPC that are similar to the i.MX8MQ and leave the more
> > challenging items until we have either a better driver available and/or actual
> > peripheral support coming.  I haven't seen LCDIF or DSI drivers pushed
> > upstream yet, so I doubt we'll see GPU or VPU yet until those are done.
> > 
> > Does anyone from the NXP team have any other comments/concerns?
> > 
> 
> If you look into NXP's release code, you will find that it is not easy to handle the
> power domain more generically in GPCv2 driver for imx8mm. That's the reason why we use
> SIP service to handle all the power domain in TF-A. we tried to upstream the SIP version
> power domain that can be reused for all i.MX8M, but rejected by ARM guys. they think
> we need to use SCMI to implement it. as there is no SCMI over SMC available, upstream is
> on the way, so the power domain for i.MX8MM/MN is pending.

Adding power domain support for i.MX8MM/MN to the GPCv2 driver does not
prevent a SCMI solution to be used when available. I don't see why we
should block this.

> Actually, I am confused why we can't use SIP service, even if the SCMI over SMC is ready in
> the future, It seems the SMCC function ID still need to choose from SIP service function id bank.
> 
> Another concern for adding power domain support in GPCv2 is that, each time a new
> SOC is added, we need to add hundred lines of code in GPCv2 driver. it is not a best way
> to keep driver reuse.

This is how all hardware specific stuff is handled in the driver. I see
your use-case of having a single TF-A based driver for applications
where you have more than on OS running on the system. For the very
common case of only a single rich OS running on the system the code
reuse doesn't really matter and in fact it's easier to fix any bugs by
just updating the Linux kernel.

>  The GPCv2 driver is originally used for i.MX7D, then reused by i.MX8MQ,
> as i.MX8MQ has very simple power domain design as i.MX7D. But for i.MX8MM, it is not the
> case.

I would be very interested in the details here. What is the big
difference in the i.MX8MM that would make it hard to support it in the
GPCv2 driver in the same way as we did with i.MX8MQ?
> 
> There is another concern, we don't want to export GPC module to rich OS side, it is not a must.

You are still free to remove the GPC DT node, as soon as the SCMI
replacement is ready.

But if you decide to handle the GPC stuff in TF-A, are you also going
to handle the external supplies to the GPC domains in the TF-A? What
about synchronous reset clocks that need to be running while the domain
is powered up? Are you going to add a SCMI based replacement for the
clock controller, which is currently also handled in the rich OS?

Regards,
Lucas

> 
> BR
> Jacky Bai
> 
> > adam
> > > Adam Ford (7):
> > >   soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
> > >   soc: imx: gpcv2: Update imx8m-power.h to include iMX8M Mini
> > >   soc: imx: gpcv2: add support for i.MX8M Mini SoC
> > >   dt-bindings: imx-gpcv2: Update bindings to support i.MX8M Mini
> > >   arm64: dts: imx8mm: add GPC power domains
> > >   ARM64: dts: imx8mm: Fix clocks and power domain for USB OTG
> > >   arm64: dts: imx8mm: Add PCIe support
> > > 
> > >  .../bindings/power/fsl,imx-gpcv2.txt          |   6 +-
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 127 ++++++++-
> > >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
> > >  drivers/soc/imx/gpcv2.c                       | 246
> > +++++++++++++++++-
> > >  .../power/{imx8mq-power.h => imx8m-power.h}   |  14 +
> > >  5 files changed, 387 insertions(+), 8 deletions(-)  rename
> > > include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} (57%)
> > > 
> > > --
> > > 2.20.1
> > > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

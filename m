Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFF812E59E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJJvFuIkuSnm6qQdPJb0+r0QLZjB1Xu490Z8lBGuvU0=; b=QnLbkuHEyMfC+3
	F3PnCY2TUNpumkNpqMfWFyNiZLL9LwvQfNBBPIJ16BvUjkv/sVkh1sS0h3nxNH0lepkO2t9sJQ2fW
	2Fpki2AjhcQa1aRYqOClT+kr12JkWq+W3KQf2KPwLuqqkBmyuySUdd4ADY4Dnko9CCVlkNF1ZEuOd
	3y7w+05rHEYIFgzq2ITqFi1zOlHhLd2HNNz+RGwUt3GnhZe1mtIGy18qEZzVOzosCJ5ADqtkx89XL
	PeR5i8fCPJhHOMFfPz0DSPMPUqH3YUlspqAtAfoxIBDO+9HeUU3nO5izOXzLbemzZnjPMEpdhIbjk
	06/y4gLjcQM7Ksm2t0TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imyZS-00044p-FJ; Thu, 02 Jan 2020 11:23:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imyZM-00043w-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:23:13 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1imyZF-0007nt-2o; Thu, 02 Jan 2020 12:23:05 +0100
Message-ID: <f0af767b9dd18247a011856b66f3a6cc716d9e6a.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] reset: Add Broadcom STB RESCAL reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org, 
 Jim Quinlan <jim2101024@gmail.com>, Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 02 Jan 2020 12:23:04 +0100
In-Reply-To: <22a0e4a9-96b3-8ecd-b699-4e4aad017b5d@gmail.com>
References: <20191210195903.24127-1-f.fainelli@gmail.com>
 <20191210195903.24127-3-f.fainelli@gmail.com>
 <89d2d00058e34e7571fc0f50ce487cf54414cd49.camel@pengutronix.de>
 <469c7b73-b028-1691-d5f0-0ceb3007da1c@gmail.com>
 <9fd20d18a8773cd8886d9cb0424791b2f79b3e25.camel@pengutronix.de>
 <22a0e4a9-96b3-8ecd-b699-4e4aad017b5d@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_032312_061001_F7A36BBB 
X-CRM114-Status: GOOD (  31.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, "moderated list:BROADCOM BCM7XXX ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Mon, 2019-12-30 at 11:05 -0800, Florian Fainelli wrote:
> On 12/12/19 2:01 AM, Philipp Zabel wrote:
[...]
> > > > > +	reg = readl(base + BRCM_RESCAL_START);
> > > > > +	writel(reg | BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
> > > > > +	reg = readl(base + BRCM_RESCAL_START);
> > > > > +	if (!(reg & BRCM_RESCAL_START_BIT)) {
> > > > > +		dev_err(data->dev, "failed to start sata/pcie rescal\n");
> > 
> > Is this something that can actually happen?
> 
> Have not seen it happen but if we have bogus hardware, we would rather
> get an informative log from the reset controller than a not so
> informative one from the consumer drivers about e.g.: SATA or PCIe link
> down (which could be for various other reasons). If you want this
> demoted to a debug print, let me know.

Ok, that is not necessary. I was just surprised that you don't trust
register writes to work.

> > [...]
> > > > > +	reg = readl(base + BRCM_RESCAL_START);
> > > > > +	writel(reg ^ BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
> > > > 
> > > > Please use &= ~BRCM_RESCAL_START_BIT instead.
> > > 
> > > I think the idea was to avoid unconditionally clearing it, but based on
> > > the documentation, I don't see this being harmful, Jim?
> > 
> > Unless the bit is self-clearing, I can't see how this XOR could ever set
> > the bit instead of clearing it.
> > And even if it would, I don't understand how that can be indented.
> > Wouldn't that restart the reset/calibration sequence?
> The bit is not self clearing, but it can be cleared when the
> reset/calibration procedure is successfully finished, so this seems to
> do what it is intended for, in that, if you read the bit as 1, XOR would
> let you clear it.

I'm with you so far ...

> If you read it as 0, XOR would leave it cleared.

... but I don't understand this part. If BRCM_RESCAL_START is read as 0
at this point, we end up writing (0 ^ 1) == 1.

> Would you want a comment above to explain that?

Yes, please.

> > > > > +	reg = readl(base + BRCM_RESCAL_START);
> > > > > +	dev_dbg(data->dev, "sata/pcie rescal success\n");
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > 
> > > > This whole function looks a lot like it doesn't just deassert a reset
> > > > line, but actually issues a complete reset procedure of some kind. Do
> > > > you have some insight on what actually happens in the hardware when the
> > > > start bit is triggered? I suspect this should be implemented with the
> > > > .reset operation.
> > > 
> > > This hardware block is controlling the reset and calibration process of
> > > the SATA/PCIe combo PHY analog front end, but is not technically part of
> > > the PCIe or SATA PHY proper, it stands on its own, both functionally and
> > > from a register space perspective. The motivation for modelling this as
> > > a reset controller is that it does a reset (and a calibration) and this
> > > is a shared reset line among 2/3 instances of another block. If you
> > > think we should model this differently, please let us know.
> > 
> > Thank you for the explanation. I agree the "reset and calibration
> > sequence" property is close enough to a pure reset sequence to warrant
> > describing this as as reset controller.
> > The correct way would be to use the .reset callback though, if you can
> > have the drivers use reset_control_reset().
> 
> This should be doable, let me try to update the drivers accordingly. It
> sounds a bit silly to have to have kind of knowledge pushed down to the
> consumer drivers though...

There are cases where the abstraction doesn't fit perfectly, but usually
it is the consumer driver that knows best whether the hardware just
needs to be made responsive by deasserting the reset line, or whether
triggering a reset procedure is required to initialize some internal
state.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

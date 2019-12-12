Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9494711CA18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7WN86U/Q5krUFSSYaqaMo63RuABEu4QI6zwxSefyeE=; b=CgXoIVXJAwhPEO
	fWWRx0MXLNQGJgKbFtF1u4nne4VmXCX6HmD7SJrkCP83YjQ8NDCJSuRfVs4xTgOqgYScoMXS8iaaB
	eFsE7wpOkJ/zWF5qSlELv2ct5/xlCeYVvj9Djg7AvYokwmNMuprpCGpdRUW+8/uIkkennkIiRT3wM
	d5oUqgnvZZHb0gRt9Zq5oKUuRZS/l95fKCX+e5GwBucIOMpF7OIGF992H86+Bum00VJKF2a6X2xFE
	rAkEP+/075cqYbPtviCZQewrxpNZQ6qFgKkq4BI0q91/TrisQJCj9H+5nf3lH0cE9hUaIv2+tmDsT
	kKnPocH+kio920PExDqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLHg-0002Pl-K9; Thu, 12 Dec 2019 10:01:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLHW-0002PM-G3
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:01:16 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ifLHN-0006Jy-UX; Thu, 12 Dec 2019 11:01:05 +0100
Message-ID: <9fd20d18a8773cd8886d9cb0424791b2f79b3e25.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] reset: Add Broadcom STB RESCAL reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Thu, 12 Dec 2019 11:01:04 +0100
In-Reply-To: <469c7b73-b028-1691-d5f0-0ceb3007da1c@gmail.com>
References: <20191210195903.24127-1-f.fainelli@gmail.com>
 <20191210195903.24127-3-f.fainelli@gmail.com>
 <89d2d00058e34e7571fc0f50ce487cf54414cd49.camel@pengutronix.de>
 <469c7b73-b028-1691-d5f0-0ceb3007da1c@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_020114_536806_A5F154FE 
X-CRM114-Status: GOOD (  23.54  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Jim Quinlan <im2101024@gmail.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, "moderated
 list:BROADCOM BCM7XXX ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-12-11 at 10:12 -0800, Florian Fainelli wrote:
> 
> On 12/11/2019 1:48 AM, Philipp Zabel wrote:
> > > +#define BRCM_RESCAL_START	0
> > > +#define	BRCM_RESCAL_START_BIT	BIT(0)
> > > +#define BRCM_RESCAL_CTRL	4
> > > +#define BRCM_RESCAL_STATUS	8
> > > +#define BRCM_RESCAL_STATUS_BIT	BIT(0)
> > 
> > Is there any reason the start bit is indented but the status bit is not?
> 
> This is a convention we have tried to adopt to denote the definition
> from a register word address/offset versus the definition for bits
> within that register word.

That's fine, consider indenting BRCM_RESCAL_STATUS_BIT as well, then.

[...]
> > > +	reg = readl(base + BRCM_RESCAL_START);
> > > +	writel(reg | BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
> > > +	reg = readl(base + BRCM_RESCAL_START);
> > > +	if (!(reg & BRCM_RESCAL_START_BIT)) {
> > > +		dev_err(data->dev, "failed to start sata/pcie rescal\n");

Is this something that can actually happen?

[...]
> > > +	reg = readl(base + BRCM_RESCAL_START);
> > > +	writel(reg ^ BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
> > 
> > Please use &= ~BRCM_RESCAL_START_BIT instead.
> 
> I think the idea was to avoid unconditionally clearing it, but based on
> the documentation, I don't see this being harmful, Jim?

Unless the bit is self-clearing, I can't see how this XOR could ever set
the bit instead of clearing it.
And even if it would, I don't understand how that can be indented.
Wouldn't that restart the reset/calibration sequence?

> > > +	reg = readl(base + BRCM_RESCAL_START);
> > > +	dev_dbg(data->dev, "sata/pcie rescal success\n");
> > > +
> > > +	return 0;
> > > +}
> > 
> > This whole function looks a lot like it doesn't just deassert a reset
> > line, but actually issues a complete reset procedure of some kind. Do
> > you have some insight on what actually happens in the hardware when the
> > start bit is triggered? I suspect this should be implemented with the
> > .reset operation.
> 
> This hardware block is controlling the reset and calibration process of
> the SATA/PCIe combo PHY analog front end, but is not technically part of
> the PCIe or SATA PHY proper, it stands on its own, both functionally and
> from a register space perspective. The motivation for modelling this as
> a reset controller is that it does a reset (and a calibration) and this
> is a shared reset line among 2/3 instances of another block. If you
> think we should model this differently, please let us know.

Thank you for the explanation. I agree the "reset and calibration
sequence" property is close enough to a pure reset sequence to warrant
describing this as as reset controller.
The correct way would be to use the .reset callback though, if you can
have the drivers use reset_control_reset().

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFFE10FFEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVZ1EdvxAp1K5bWEy/MZ8siudjSbvXXyv0KJUwsd4AM=; b=FnYIxfloivgSdX
	sDdPX+FYDaOBv9EKt/U8XU/EfqK8DZRj7NUS1ArJuY5pX1aafHlsLYhtRh2OsV0ZQ9Gmx5A0MXE60
	XugL1LMd9lwk54Z8OnaBFgPiKJUML5pJS4h0cHJ55jG3aSN/cbYy/uw74oHGLoSIvz5DemYhzNZvO
	+yfZsZv4QZl9tGi3XOsIViRXTBAOpC957Beb7bM/HpFxhDWSd56QxyDYhTj/TY9pubGrFn7jqutkY
	X1VLUaFofFf9OM3Nazwf8XF2MqzaYPUDcuq7jEoSKfMba2hh7LmY5Un5G/KAW9CcjpUD8/A38zbIQ
	pCoOq4tXHyzgtl0yZYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8xy-0004WT-Em; Tue, 03 Dec 2019 14:15:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8xs-0004Vr-3l
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:15:45 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ic8xc-0000WJ-QZ; Tue, 03 Dec 2019 15:15:28 +0100
Message-ID: <5ca8ff65b8489195ef5349cd2d074d412c9d0036.camel@pengutronix.de>
Subject: Re: [PATCH 2/3] reset: hisilicon: Extend reset operation type
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jun Nie <jun.nie@linaro.org>
Date: Tue, 03 Dec 2019 15:15:28 +0100
In-Reply-To: <CABymUCNDZSH+mB9TyyUBwgRu-qTRbgUv89va2HuBs4VeJWn6uA@mail.gmail.com>
References: <20191202144524.5391-1-jun.nie@linaro.org>
 <20191202144524.5391-3-jun.nie@linaro.org>
 <449968d8f085a1d1fcf4018bb8efe454fa35b3e3.camel@pengutronix.de>
 <CABymUCNDZSH+mB9TyyUBwgRu-qTRbgUv89va2HuBs4VeJWn6uA@mail.gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_061544_153490_99EBECAD 
X-CRM114-Status: GOOD (  18.54  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 sboyd@kernel.org, Michael Turquette <mturquette@baylibre.com>,
 yuehaibing@huawei.com, Wei Xu <xuwei5@hisilicon.com>,
 xuejiancheng@hisilicon.com, Rob Herring <robh+dt@kernel.org>,
 swinslow@gmail.com, opensource@jilayne.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jun,

On Tue, 2019-12-03 at 11:53 +0800, Jun Nie wrote:
[...]
> @@ -48,13 +56,33 @@ static int hisi_reset_assert(struct reset_controller_dev *rcdev,
> > >       u32 offset, reg;
> > >       u8 bit;
> > > 
> > > +     flags = (id & HISI_RESET_FLAG_MASK) >> HISI_RESET_FLAG_SHIFT;
> > > +     if (flags & HISI_ASSERT_NONE)
> > > +             return -ENOTSUPP; /* assert not supported for this reset */
> > 
> > As long as .assert and .deassert are the only implemented operations for
> > this reset controller, this does not make any sense to me. Are there
> > resets that can only be deasserted?
> 
> Some reset is asserted on power on automatically. So only .deassert is needed.

But if the bit was set/cleared again after being deasserted, would it
assert the reset line? Basically, I wonder if those bits are write-once
or not.

[...]
> > > +             if (flags & HISI_ASSERT_SET)
> > > +                     return readl_poll_timeout(rstc->membase + offset,
> > > +                                               reg, reg & BIT(bit), 0, 5000);
> > > +             else
> > > +                     return readl_poll_timeout(rstc->membase + offset,
> > > +                                               reg, !(reg & BIT(bit)),
> > > +                                               0, 5000);
> > 
> > And this is effectively dead code. Do you really have hardware that
> > asserts or asserts a reset line in reaction to a read access?
> > 
> > Should HISI_ASSERT_POLL and HISI_DEASSERT_POLL be mutually exclusive?

This is missing an explanation.

[...]
> > > +     writel(reg, rstc->membase + offset);
> > > 
> > >       spin_unlock_irqrestore(&rstc->lock, flags);
> > > 
> > > @@ -69,13 +97,33 @@ static int hisi_reset_deassert(struct reset_controller_dev *rcdev,
> > >       u32 offset, reg;
> > >       u8 bit;
> > > 
> > > +     flags = (id & HISI_RESET_FLAG_MASK) >> HISI_RESET_FLAG_SHIFT;
> > > +     if (flags & HISI_DEASSERT_NONE)
> > > +             return -ENOTSUPP; /* deassert not supported for this reset */
> > > +
> > 
> > Are there resets that can only ever be asserted?
> 
> I do not know yet. Only extend this driver with all combination in logic.

If this is not used, let's leave it out.

[...]
> > > @@ -103,7 +151,7 @@ struct hisi_reset_controller *hisi_reset_init(struct platform_device *pdev)
> > >       rstc->rcdev.owner = THIS_MODULE;
> > >       rstc->rcdev.ops = &hisi_reset_ops;
> > >       rstc->rcdev.of_node = pdev->dev.of_node;
> > > -     rstc->rcdev.of_reset_n_cells = 2;
> > > +     rstc->rcdev.of_reset_n_cells = 3;
> > 
> > This breaks current device trees (before patch 3). You can make sure
> > device trees with #reset-cells = <2> keep working by parsing the #reset-
> > cells and setting this value to 2 for old DTs.
> 
> All current dts file are modified accordingly. But existing dtb binary support
> is an issue. Do you have any suggestion?

Since this is for a new SoC, you should keep using of_reset_n_cells = 2
for the current SoCs and only set it to 3 for a new compatible, for
example using of_device_get_match_data().

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

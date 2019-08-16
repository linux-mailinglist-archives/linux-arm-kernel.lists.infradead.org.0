Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7096E907D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRBjgaO+eqwwp7obCu9pT+OT5vdBT8ZIEZ44qX2DFjg=; b=gHg8cFfUPfkBGE
	9Ghw20BTFlPFSCSiQZZc7FPncXSqYvhLHxROrUqeafhAgRbv1ARW/5vS4kwHwVb033Zz4xhYui8Ya
	2waFC2Yw3G5quunzzURCX+fEuoksCbwCUmc//sM4xCKbuEeyr6O9caE6vdp9roPvrStZ9CGfOIVCq
	FQ6x2JN6N7KZus3rSWd/12Q2mfYRCQga0viPuTJyRDGQUAu1Ido0UXP85sMMS3zOrcbj0PenuVVN0
	Qz4WgZR4UBkyA5jelaN3tB8H1sAPjfEwT0d8344KjrD5bmRTRrXAZABIZH2kKR1UBcqKgC18/q3Lk
	d/COUikvmrB275A8rBZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyhAX-0007Tb-N7; Fri, 16 Aug 2019 18:41:45 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyhAJ-0007TC-Qs
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 18:41:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 985F7D6E09;
 Fri, 16 Aug 2019 20:41:28 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id O5hE6RKEUtMU; Fri, 16 Aug 2019 20:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 3AB24D6E29;
 Fri, 16 Aug 2019 20:41:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZWVEJzeSC459; Fri, 16 Aug 2019 20:41:23 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 2D1ABD6E09;
 Fri, 16 Aug 2019 20:41:23 +0200 (CEST)
Message-ID: <e0c0cf62a1f087fd6c1d7307e5e2a65603148341.camel@v3.sk>
Subject: Re: [PATCH 05/19] irqchip/mmp: do not use of_address_to_resource()
 to get mux regs
From: Lubomir Rintel <lkundrak@v3.sk>
To: Marc Zyngier <maz@kernel.org>, Olof Johansson <olof@lixom.net>
Date: Fri, 16 Aug 2019 20:41:22 +0200
In-Reply-To: <16d77ca3-7ad1-3af2-650e-722cf6a931ed@kernel.org>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-6-lkundrak@v3.sk>
 <16d77ca3-7ad1-3af2-650e-722cf6a931ed@kernel.org>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_114132_179243_C55F95B6 
X-CRM114-Status: GOOD (  21.49  )
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-09 at 13:12 +0100, Marc Zyngier wrote:
> On 09/08/2019 10:31, Lubomir Rintel wrote:
> > The "regs" property of the "mrvl,mmp2-mux-intc" devices are silly. They
> > are offsets from intc's base, not addresses on the parent bus. At this
> > point it probably can't be fixed.
> > 
> > On an OLPC XO-1.75 machine, the muxes are children of the intc, not the
> > axi bus, and thus of_address_to_resource() won't work. We should treat
> > the values as mere integers as opposed to bus addresses.
> > 
> > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > Acked-by: Pavel Machek <pavel@ucw.cz>
> > 
> > ---
> >  drivers/irqchip/irq-mmp.c | 20 +++++++++++---------
> >  1 file changed, 11 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
> > index 14618dc0bd396..af9cba4a51c2e 100644
> > --- a/drivers/irqchip/irq-mmp.c
> > +++ b/drivers/irqchip/irq-mmp.c
> > @@ -424,9 +424,9 @@ IRQCHIP_DECLARE(mmp2_intc, "mrvl,mmp2-intc", mmp2_of_init);
> >  static int __init mmp2_mux_of_init(struct device_node *node,
> >  				   struct device_node *parent)
> >  {
> > -	struct resource res;
> >  	int i, ret, irq, j = 0;
> >  	u32 nr_irqs, mfp_irq;
> > +	u32 reg[4];
> >  
> >  	if (!parent)
> >  		return -ENODEV;
> > @@ -438,18 +438,20 @@ static int __init mmp2_mux_of_init(struct device_node *node,
> >  		pr_err("Not found mrvl,intc-nr-irqs property\n");
> >  		return -EINVAL;
> >  	}
> > -	ret = of_address_to_resource(node, 0, &res);
> > +
> > +	/*
> > +	 * For historical reasonsm, the "regs" property of the
> > +	 * mrvl,mmp2-mux-intc is not a regular * "regs" property containing
> > +	 * addresses on the parent bus, but offsets from the intc's base.
> > +	 * That is why we can't use of_address_to_resource() here.
> > +	 */
> > +	ret = of_property_read_u32_array(node, "reg", reg, ARRAY_SIZE(reg));
> 
> This will return 0 even if you've read less than your expected 4 u32s.
> You may want to try of_property_read_variable_u32_array instead.

Will it? Unless I'm reading the of_property_read_u32_array()
documentation wrong, it suggests that would return -EOVERFLOW in that
case.

It ignores the extra values it the property is larger. I guess that is
not a good thing and we still want to use
of_property_read_variable_u32_array() though.

> >  	if (ret < 0) {
> >  		pr_err("Not found reg property\n");
> >  		return -EINVAL;
> >  	}
> > -	icu_data[i].reg_status = mmp_icu_base + res.start;
> > -	ret = of_address_to_resource(node, 1, &res);
> > -	if (ret < 0) {
> > -		pr_err("Not found reg property\n");
> > -		return -EINVAL;
> > -	}
> > -	icu_data[i].reg_mask = mmp_icu_base + res.start;
> > +	icu_data[i].reg_status = mmp_icu_base + reg[0];
> > +	icu_data[i].reg_mask = mmp_icu_base + reg[2];
> >  	icu_data[i].cascade_irq = irq_of_parse_and_map(node, 0);
> >  	if (!icu_data[i].cascade_irq)
> >  		return -EINVAL;
> > 
> 
> Thanks,
> 
> 	M.

Thanks
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

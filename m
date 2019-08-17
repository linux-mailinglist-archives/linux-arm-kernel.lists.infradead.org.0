Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45059122F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WO0W736luZNPmLhucZBgrYVZUDKYWQ2ZtJ+cvgkwPyE=; b=dWLAihSi4bVoDg
	3BzuD1gZlDjAiP0KF9Geh0u1mE7y52cUX9v86B8RjuvF3lx5QavL0pHIUMsX54qK85zjFJn+KiLxE
	jRtgaJ2hAP/e0JsMH09KAoTVYEBqdbw5F459aFVjG1vA248nQ7irSenZPKptJNJ0wOEkxls8VCPpc
	EZbo3FDVU1Kv6aLGOfAZWvrbuG1Ds13+JHbk1mHTdGeMTzAMC4xGpX2EeIB3i06L6y6Ulmeygenn2
	AOKDWpu8D9zOIZQZszgpNZpoGNK3/tdpdCJ7Nsap9xWs+y99FkP9mBqV2rD+Cf6GTYZyz8r2UBvz9
	scZ0S8+Rh1tHlQ692m8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3Gt-0003xm-NO; Sat, 17 Aug 2019 18:17:48 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3Ga-0003xM-RH
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:17:30 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1hz3GL-0002bG-LD; Sat, 17 Aug 2019 20:17:13 +0200
Date: Sat, 17 Aug 2019 19:17:10 +0100
From: Marc Zyngier <maz@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 05/19] irqchip/mmp: do not use of_address_to_resource()
 to get mux regs
Message-ID: <20190817191710.539daa01@why>
In-Reply-To: <e0c0cf62a1f087fd6c1d7307e5e2a65603148341.camel@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-6-lkundrak@v3.sk>
 <16d77ca3-7ad1-3af2-650e-722cf6a931ed@kernel.org>
 <e0c0cf62a1f087fd6c1d7307e5e2a65603148341.camel@v3.sk>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: lkundrak@v3.sk, olof@lixom.net, robh+dt@kernel.org,
 mark.rutland@arm.com, tglx@linutronix.de, jason@lakedaemon.net, kishon@ti.com,
 linux@armlinux.org.uk, mturquette@baylibre.com, sboyd@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, pavel@ucw.cz
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_111729_029399_34836305 
X-CRM114-Status: GOOD (  26.18  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019 20:41:22 +0200
Lubomir Rintel <lkundrak@v3.sk> wrote:

> On Fri, 2019-08-09 at 13:12 +0100, Marc Zyngier wrote:
> > On 09/08/2019 10:31, Lubomir Rintel wrote:  
> > > The "regs" property of the "mrvl,mmp2-mux-intc" devices are silly. They
> > > are offsets from intc's base, not addresses on the parent bus. At this
> > > point it probably can't be fixed.
> > > 
> > > On an OLPC XO-1.75 machine, the muxes are children of the intc, not the
> > > axi bus, and thus of_address_to_resource() won't work. We should treat
> > > the values as mere integers as opposed to bus addresses.
> > > 
> > > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > > Acked-by: Pavel Machek <pavel@ucw.cz>
> > > 
> > > ---
> > >  drivers/irqchip/irq-mmp.c | 20 +++++++++++---------
> > >  1 file changed, 11 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
> > > index 14618dc0bd396..af9cba4a51c2e 100644
> > > --- a/drivers/irqchip/irq-mmp.c
> > > +++ b/drivers/irqchip/irq-mmp.c
> > > @@ -424,9 +424,9 @@ IRQCHIP_DECLARE(mmp2_intc, "mrvl,mmp2-intc", mmp2_of_init);
> > >  static int __init mmp2_mux_of_init(struct device_node *node,
> > >  				   struct device_node *parent)
> > >  {
> > > -	struct resource res;
> > >  	int i, ret, irq, j = 0;
> > >  	u32 nr_irqs, mfp_irq;
> > > +	u32 reg[4];
> > >  
> > >  	if (!parent)
> > >  		return -ENODEV;
> > > @@ -438,18 +438,20 @@ static int __init mmp2_mux_of_init(struct device_node *node,
> > >  		pr_err("Not found mrvl,intc-nr-irqs property\n");
> > >  		return -EINVAL;
> > >  	}
> > > -	ret = of_address_to_resource(node, 0, &res);
> > > +
> > > +	/*
> > > +	 * For historical reasonsm, the "regs" property of the
> > > +	 * mrvl,mmp2-mux-intc is not a regular * "regs" property containing
> > > +	 * addresses on the parent bus, but offsets from the intc's base.
> > > +	 * That is why we can't use of_address_to_resource() here.
> > > +	 */
> > > +	ret = of_property_read_u32_array(node, "reg", reg, ARRAY_SIZE(reg));  
> > 
> > This will return 0 even if you've read less than your expected 4 u32s.
> > You may want to try of_property_read_variable_u32_array instead.  
> 
> Will it? Unless I'm reading the of_property_read_u32_array()
> documentation wrong, it suggests that would return -EOVERFLOW in that
> case.

You're appear to be right, and I read it wrong.

> 
> It ignores the extra values it the property is larger. I guess that is
> not a good thing and we still want to use
> of_property_read_variable_u32_array() though.

It doesn't hurt to check for all possible problems, specially given
that this machine doesn't appear to have a mainline DT (and its OF
implementation looks a bit buggy).

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

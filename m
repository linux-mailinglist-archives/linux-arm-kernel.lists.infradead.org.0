Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D511F76D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srXNb15BWQzq+G45u8uoEk7KAQn3O8VIvqpbhHs6t/Y=; b=o8kRMYRvDxMlCb
	k+i/mdoDogYICIV0FwR693K/GnBOQEcR30wqAu0ZCIc/+ZEAdBf/I5qbmAchPKf78dt02Tq0dODB/
	284gXkU0lrxbifJYx/Ivf6BsbMeTEmkhiftv2Nd4JB+EIyuWNpmp9Ed5QdIlbGeCFJUtPefUfkbDd
	3yTCmb/6ZVcubCleK8pX7y60c6liBDhpDIfHkxo5CTfoZvxLuAn3LjgOkt1hLPlmSdmmgJN6GUKL8
	Vlp9rny/vCc5AjZPIWXaVjbv1aNfCJU36x1sG5B3w2d22PDE6YQYES58Trr5Oi2g/KN0J/vzbJdlM
	K+mKdOxkePMnzvJtJhBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjh5c-00071t-Uy; Fri, 12 Jun 2020 10:39:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjh5U-00071U-Oq
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:39:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F5B420792;
 Fri, 12 Jun 2020 10:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591958344;
 bh=Ic5qw5oifdLSTHOeMZf7Yti20T61ZRmCTHxVz++OVmY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iqQTcCa0+IVkdpWesoiLrhyjZMFk6VVnbhjwKh1SfzhXm9EGnMkRZpYqvsJQCG1V0
 pMz6sgPbHiFBHpmxIks72Ct6ZjFzb6U8kB40mc5e917uIJjeH4VmS6z+Ya0yXAhbGP
 9mD1RhvKVUF4iyR+SiFAiKDvHYi1MSx+5ED0ikew=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjh5S-002MhN-Bj; Fri, 12 Jun 2020 11:39:02 +0100
Date: Fri, 12 Jun 2020 11:39:00 +0100
From: Marc Zyngier <maz@kernel.org>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH 06/11] irqchip/gic-v3: Configure SGIs as standard
 interrupts
Message-ID: <20200612113900.09d53bd0@why>
In-Reply-To: <jhjimgpxu2h.mognet@arm.com>
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-7-maz@kernel.org>
 <jhjimgpxu2h.mognet@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: valentin.schneider@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 will@kernel.org, catalin.marinas@arm.com, linux@arm.linux.org.uk,
 tglx@linutronix.de, jason@lakedaemon.net, sumit.garg@linaro.org,
 kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_033904_842702_3753FAE6 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Valentin,

On Thu, 21 May 2020 15:04:54 +0100
Valentin Schneider <valentin.schneider@arm.com> wrote:

> On 19/05/20 17:17, Marc Zyngier wrote:
> > Change the way we deal with GICv3 SGIs by turning them into proper
> > IRQs, and calling into the arch code to register the interrupt range
> > instead of a callback.
> >
> > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > ---
> >  drivers/irqchip/irq-gic-v3.c | 91 +++++++++++++++++++++---------------
> >  1 file changed, 53 insertions(+), 38 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> > index 23d7c87da407..d57289057b75 100644
> > --- a/drivers/irqchip/irq-gic-v3.c
> > +++ b/drivers/irqchip/irq-gic-v3.c
> > @@ -1163,10 +1142,36 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
> >
> >  static void gic_smp_init(void)
> >  {
> > -	set_smp_cross_call(gic_raise_softirq);
> > +	struct irq_fwspec sgi_fwspec = {
> > +		.fwnode		= gic_data.fwnode,
> > +	};
> > +	int base_sgi;
> > +
> >       cpuhp_setup_state_nocalls(CPUHP_AP_IRQ_GIC_STARTING,
> >                                 "irqchip/arm/gicv3:starting",
> >                                 gic_starting_cpu, NULL);
> > +
> > +	if (is_of_node(gic_data.fwnode)) {
> > +		/* DT */
> > +		sgi_fwspec.param_count = 3;
> > +		sgi_fwspec.param[0] = GIC_IRQ_TYPE_SGI;
> > +		sgi_fwspec.param[1] = 0;
> > +		sgi_fwspec.param[2] = IRQ_TYPE_EDGE_RISING;
> > +	} else {
> > +		/* ACPI */
> > +		sgi_fwspec.param_count = 2;
> > +		sgi_fwspec.param[0] = 0;
> > +		sgi_fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
> > +	}
> > +
> > +	/* Register all 8 non-secure SGIs */
> > +	base_sgi = __irq_domain_alloc_irqs(gic_data.domain, -1, 8,
> > +					   NUMA_NO_NODE, &sgi_fwspec,
> > +					   false, NULL);  
> 
> So IIUC using irq_reserve_ipi() would require us to have a separate IPI
> domain, so instead here we can use a fwspec + the 'regular' GIC domain.

Indeed. Using an IPI domain wouldn't bring much. But the major point
against the current state of the IPI domain is that it sucks a bit for
our use case. We want interrupts to be contiguous in the Linux IRQ
space, and the IPI allocator prevents this.

But maybe I should just bite the bullet and hack that as well.

> One thing I see is that by not going through irq_reserve_ipi(), we don't set
> data->common->ipi_offset. I think this is all kzalloc'd, and we want an
> offset of 0 so it all works out, but this feels somewhat fragile.

So far, nothing is using this field on the limited piece of code we
use. But I agree, not the nicest behaviour.

> > +	if (WARN_ON(base_sgi <= 0))
> > +		return;
> > +
> > +	set_smp_ipi_range(base_sgi, 8);
> >  }
> >
> >  static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
> > @@ -1289,6 +1296,13 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
> >
> >       switch (__get_intid_range(hw)) {
> >       case SGI_RANGE:
> > +		irq_set_percpu_devid(irq);
> > +		irq_domain_set_info(d, irq, hw, chip, d->host_data,
> > +				    handle_percpu_devid_fasteoi_ipi,
> > +				    NULL, NULL);
> > +		irq_set_status_flags(irq, IRQ_NOAUTOEN);  
> 
> FWIW IRQ_NOAUTOEN is already set by irq_set_percpu_devid_flags(), so that's
> not required. I know we do that for (E)PPIs, I think I already have a small
> patch stashed somewhere regarding that.

Already merged! ;-)

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

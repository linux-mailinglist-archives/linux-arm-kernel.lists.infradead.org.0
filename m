Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24681F7641
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BGuLWdTwQftbN0VoQPX/kt1tQH/oeyKrjm324oEJi0=; b=XyF4YlNkPc5TVX
	zXxORU4pjC850zKjvzOaZZQ9CBHLm/9eUB0OnbNJjGdlemmQdlfxppHIVnft+pQRbdV8a90dB8byZ
	w4Fewz7O2i17loUGIxK/i00j/I4W96nXEmJrwYlFlB/DgMWOaKWSkqrvCmNx5YhyDVNIDfdkCJay3
	ZyjKyyOni/Rc6vCRsnO5006HRPhpARlefGzKnK3r27F9qzKS8UBOzaFJsBpzCKy1v2QM9+CZzJSx7
	3ZgULZTtu9phB+OXx2Kzcfz0Jus4hGPiA4PvTdCij2dfTEZqcSmVBhozqQvGjcUGEPHskPva5C/he
	A0TVDgNex+B/XhoDI+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgOS-0004Ig-RD; Fri, 12 Jun 2020 09:54:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgOM-0004IN-2F
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 09:54:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 963142081A;
 Fri, 12 Jun 2020 09:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591955669;
 bh=29xLLgXrlFOND3xwt1R9OGzjgUccP8AdjRanBn+2N0s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BHgrfA+l8ekz4sPjfRG2DD+BcuA/k8P3NIYzebAqeoIAJPNuhvZ9Ld3x8v5L8fPCQ
 QNBWIIbWWHUmDokn73uZ3jitchC4DhKao5Kl4pIKLIMRdwlUdNWpODH9tlUC4AMTn5
 N03OrIgLygDs8uAkpA0EbaENpb5DoxQu1CKRiZIo=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjgOJ-002M7n-UK; Fri, 12 Jun 2020 10:54:28 +0100
Date: Fri, 12 Jun 2020 10:54:26 +0100
From: Marc Zyngier <maz@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 01/11] genirq: Add fasteoi IPI flow
Message-ID: <20200612105426.39ff61bb@why>
In-Reply-To: <b691a46e-7461-89c8-c760-a1ef9769091f@gmail.com>
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-2-maz@kernel.org>
 <b691a46e-7461-89c8-c760-a1ef9769091f@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: f.fainelli@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, sumit.garg@linaro.org, kernel-team@android.com,
 linux@arm.linux.org.uk, jason@lakedaemon.net, catalin.marinas@arm.com,
 tglx@linutronix.de, will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_025430_145513_1A39EAA5 
X-CRM114-Status: GOOD (  24.39  )
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Russell King <linux@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 12:47:24 -0700
Florian Fainelli <f.fainelli@gmail.com> wrote:

> On 5/19/2020 9:17 AM, Marc Zyngier wrote:
> > For irqchips using the fasteoi flow, IPIs are a bit special.
> > 
> > They need to be EOId early (before calling the handler), as
> > funny things may happen in the handler (they do not necessarily
> > behave like a normal interrupt), and that the arch code is
> > already handling the stats.
> > 
> > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > ---
> >  include/linux/irq.h |  1 +
> >  kernel/irq/chip.c   | 26 ++++++++++++++++++++++++++
> >  2 files changed, 27 insertions(+)
> > 
> > diff --git a/include/linux/irq.h b/include/linux/irq.h
> > index 8d5bc2c237d7..726f94d8b8cc 100644
> > --- a/include/linux/irq.h
> > +++ b/include/linux/irq.h
> > @@ -621,6 +621,7 @@ static inline int irq_set_parent(int irq, int parent_irq)
> >   */
> >  extern void handle_level_irq(struct irq_desc *desc);
> >  extern void handle_fasteoi_irq(struct irq_desc *desc);
> > +extern void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc);
> >  extern void handle_edge_irq(struct irq_desc *desc);
> >  extern void handle_edge_eoi_irq(struct irq_desc *desc);
> >  extern void handle_simple_irq(struct irq_desc *desc);
> > diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
> > index 41e7e37a0928..7b0b789cfed4 100644
> > --- a/kernel/irq/chip.c
> > +++ b/kernel/irq/chip.c
> > @@ -955,6 +955,32 @@ void handle_percpu_devid_irq(struct irq_desc *desc)
> >  		chip->irq_eoi(&desc->irq_data);
> >  }
> >  
> > +/**
> > + * handle_percpu_devid_fasteoi_ipi - Per CPU local IPI handler with per cpu
> > + *				     dev ids
> > + * @desc:	the interrupt description structure for this irq
> > + *
> > + * The biggest differences with the IRQ version are that:
> > + * - the interrupt is EOIed early, as the IPI could result in a context
> > + *   switch, and we need to make sure the IPI can fire again
> > + * - Stats are usually handled at the architecture level, so we ignore them
> > + *   here
> > + */
> > +void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc)
> > +{
> > +	struct irq_chip *chip = irq_desc_get_chip(desc);
> > +	struct irqaction *action = desc->action;
> > +	unsigned int irq = irq_desc_get_irq(desc);
> > +	irqreturn_t res;  
> 
> Should not this have a:
> 
> 	if (!irq_settings_is_no_accounting(desc))
> 		__kstat_incr_irqs_this_cpu(desc);
> 
> here in case you are using that handler with a SGI interrupt which is
> not used as an IPI?

I see you coming... ;-)

Yes, could do. TBH, I plan on killing the "no accounting" altogether
and move to the core IRQ one, so this would only be temporary. All I
need is to update the rest of the arm32 interrupt controllers...

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

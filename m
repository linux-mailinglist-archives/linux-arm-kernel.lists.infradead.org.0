Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC331FC68C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdDgDyuD/6AftwS7Rftz1gxKNIQ7tX5y1z8SR/Pod5Q=; b=hhnquOBUnXgR5h
	0DEv+fMFhGgjcq/ARFQAfQyd7MbY+VMh9/vea/jbOGPQqKAcZovRktRI23ggPX9I5Qf4ZiE70IC6+
	8C3rEzd3FPedUUagh5us7p2HkNF2Y0+uTqAGQ5sw47l1gbtoa4+iytEXDf8NUCMKFQoZjb0ocj9lF
	xTcjLOtzImfKIwdYKuIiSl3sbk/872DyUkaN9Xjj5yLUV1Mg59Y5Fij80u+BVZfgybqbEONSEvENJ
	P5e90L+j94qIsuV1DGsF3yHZXpfBgi4c+a+77r+ULqP9A/EtSxST+XJdSqAwmEZjN8K4wqpVJRRtd
	NJ1fb9OlLxFMCOKZmdqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEa6-0001Fr-Nk; Thu, 14 Nov 2019 12:50:38 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEZw-0001FR-Ay
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573735826;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/ef1l1hqWsyzLFpC0Xy1WV8z70mxsduypt90ZVppGFE=;
 b=F1jDV562T2p9teuNk83grPE9cOi/OLpwDNW9sthF0uLCAq07pEJZel+pPGkLPJ5H3Nt4je
 ebTMNu/JBDCKp1JSHVX2Lz2QxHN6xTJmSLC2CPOiR6QGmYoqzJ52XdpfKbPY+sDwew91j9
 jRQ2j2FrEEobNjisJ5Q68mRTXHbQ2go=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-ZO4SwoSyMV6wAsWtqsZhTA-1; Thu, 14 Nov 2019 07:50:23 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D2701005509;
 Thu, 14 Nov 2019 12:50:22 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B0E0D60BEC;
 Thu, 14 Nov 2019 12:50:20 +0000 (UTC)
Date: Thu, 14 Nov 2019 13:50:18 +0100
From: Andrew Jones <drjones@redhat.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [kvm-unit-tests PATCH 12/17] arm: gic: Change gic_read_iar() to
 take group parameter
Message-ID: <20191114125018.tqz5uzwmjofhbbwo@kamzik.brq.redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-13-andre.przywara@arm.com>
 <68cd4ae5-0d85-4300-2851-adb3f5af6243@arm.com>
MIME-Version: 1.0
In-Reply-To: <68cd4ae5-0d85-4300-2851-adb3f5af6243@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: ZO4SwoSyMV6wAsWtqsZhTA-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_045028_455210_2D4EBCAA 
X-CRM114-Status: GOOD (  23.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 05:19:36PM +0000, Alexandru Elisei wrote:
> Hi,
> 
> On 11/8/19 2:42 PM, Andre Przywara wrote:
> > Acknowledging a GIC group 0 interrupt requires us to use a different
> > system register on GICv3. To allow us to differentiate the two groups
> > later, add a group parameter to gic_read_iar(). For GICv2 we can use the
> > same CPU interface register to acknowledge group 0 as well, so we ignore
> > the parameter here.
> >
> > For now this is still using group 1 on every caller.
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arm/gic.c                  |  4 ++--
> >  arm/micro-bench.c          |  2 +-
> >  arm/pl031.c                |  2 +-
> >  arm/timer.c                |  2 +-
> >  lib/arm/asm/arch_gicv3.h   | 11 +++++++++--
> >  lib/arm/asm/gic-v2.h       |  2 +-
> >  lib/arm/asm/gic-v3.h       |  2 +-
> >  lib/arm/asm/gic.h          |  2 +-
> >  lib/arm/gic-v2.c           |  3 ++-
> >  lib/arm/gic.c              |  6 +++---
> >  lib/arm64/asm/arch_gicv3.h | 10 ++++++++--
> >  11 files changed, 30 insertions(+), 16 deletions(-)
> >
> > diff --git a/arm/gic.c b/arm/gic.c
> > index a0511e5..7be13a6 100644
> > --- a/arm/gic.c
> > +++ b/arm/gic.c
> > @@ -156,7 +156,7 @@ static void check_irqnr(u32 irqnr, int expected)
> >  
> >  static void irq_handler(struct pt_regs *regs __unused)
> >  {
> > -	u32 irqstat = gic_read_iar();
> > +	u32 irqstat = gic_read_iar(1);
> >  	u32 irqnr = gic_iar_irqnr(irqstat);
> >  
> >  	if (irqnr == GICC_INT_SPURIOUS) {
> > @@ -288,7 +288,7 @@ static struct gic gicv3 = {
> >  
> >  static void ipi_clear_active_handler(struct pt_regs *regs __unused)
> >  {
> > -	u32 irqstat = gic_read_iar();
> > +	u32 irqstat = gic_read_iar(1);
> >  	u32 irqnr = gic_iar_irqnr(irqstat);
> >  
> >  	if (irqnr != GICC_INT_SPURIOUS) {
> > diff --git a/arm/micro-bench.c b/arm/micro-bench.c
> > index 4612f41..2bfee68 100644
> > --- a/arm/micro-bench.c
> > +++ b/arm/micro-bench.c
> > @@ -33,7 +33,7 @@ static void ipi_irq_handler(struct pt_regs *regs)
> >  {
> >  	ipi_ready = false;
> >  	ipi_received = true;
> > -	gic_write_eoir(gic_read_iar());
> > +	gic_write_eoir(gic_read_iar(1));
> >  	ipi_ready = true;
> >  }
> >  
> > diff --git a/arm/pl031.c b/arm/pl031.c
> > index 5672f36..5be3d76 100644
> > --- a/arm/pl031.c
> > +++ b/arm/pl031.c
> > @@ -134,7 +134,7 @@ static void gic_irq_unmask(void)
> >  
> >  static void irq_handler(struct pt_regs *regs)
> >  {
> > -	u32 irqstat = gic_read_iar();
> > +	u32 irqstat = gic_read_iar(1);
> >  	u32 irqnr = gic_iar_irqnr(irqstat);
> >  
> >  	gic_write_eoir(irqstat);
> > diff --git a/arm/timer.c b/arm/timer.c
> > index 0b808d5..e5cc3b4 100644
> > --- a/arm/timer.c
> > +++ b/arm/timer.c
> > @@ -150,7 +150,7 @@ static void set_timer_irq_enabled(struct timer_info *info, bool enabled)
> >  static void irq_handler(struct pt_regs *regs)
> >  {
> >  	struct timer_info *info;
> > -	u32 irqstat = gic_read_iar();
> > +	u32 irqstat = gic_read_iar(1);
> >  	u32 irqnr = gic_iar_irqnr(irqstat);
> >  
> >  	if (irqnr != GICC_INT_SPURIOUS)
> > diff --git a/lib/arm/asm/arch_gicv3.h b/lib/arm/asm/arch_gicv3.h
> > index 45b6096..52e7bba 100644
> > --- a/lib/arm/asm/arch_gicv3.h
> > +++ b/lib/arm/asm/arch_gicv3.h
> > @@ -16,6 +16,7 @@
> >  
> >  #define ICC_PMR				__ACCESS_CP15(c4, 0, c6, 0)
> >  #define ICC_SGI1R			__ACCESS_CP15_64(0, c12)
> > +#define ICC_IAR0			__ACCESS_CP15(c12, 0,  c8, 0)
> >  #define ICC_IAR1			__ACCESS_CP15(c12, 0, c12, 0)
> >  #define ICC_EOIR1			__ACCESS_CP15(c12, 0, c12, 1)
> >  #define ICC_IGRPEN1			__ACCESS_CP15(c12, 0, c12, 7)
> > @@ -30,9 +31,15 @@ static inline void gicv3_write_sgi1r(u64 val)
> >  	write_sysreg(val, ICC_SGI1R);
> >  }
> >  
> > -static inline u32 gicv3_read_iar(void)
> > +static inline u32 gicv3_read_iar(int group)
> >  {
> > -	u32 irqstat = read_sysreg(ICC_IAR1);
> > +	u32 irqstat;
> > +
> > +	if (group == 0)
> > +		irqstat = read_sysreg(ICC_IAR0);
> > +	else
> > +		irqstat = read_sysreg(ICC_IAR1);
> > +
> >  	dsb(sy);
> >  	return irqstat;
> >  }
> > diff --git a/lib/arm/asm/gic-v2.h b/lib/arm/asm/gic-v2.h
> > index 1fcfd43..d50c610 100644
> > --- a/lib/arm/asm/gic-v2.h
> > +++ b/lib/arm/asm/gic-v2.h
> > @@ -32,7 +32,7 @@ extern struct gicv2_data gicv2_data;
> >  
> >  extern int gicv2_init(void);
> >  extern void gicv2_enable_defaults(void);
> > -extern u32 gicv2_read_iar(void);
> > +extern u32 gicv2_read_iar(int group);
> >  extern u32 gicv2_iar_irqnr(u32 iar);
> >  extern void gicv2_write_eoir(u32 irqstat);
> >  extern void gicv2_ipi_send_single(int irq, int cpu);
> > diff --git a/lib/arm/asm/gic-v3.h b/lib/arm/asm/gic-v3.h
> > index 0a29610..ca19110 100644
> > --- a/lib/arm/asm/gic-v3.h
> > +++ b/lib/arm/asm/gic-v3.h
> > @@ -69,7 +69,7 @@ extern struct gicv3_data gicv3_data;
> >  
> >  extern int gicv3_init(void);
> >  extern void gicv3_enable_defaults(void);
> > -extern u32 gicv3_read_iar(void);
> > +extern u32 gicv3_read_iar(int group);
> >  extern u32 gicv3_iar_irqnr(u32 iar);
> >  extern void gicv3_write_eoir(u32 irqstat);
> >  extern void gicv3_ipi_send_single(int irq, int cpu);
> > diff --git a/lib/arm/asm/gic.h b/lib/arm/asm/gic.h
> > index 21cdb58..09663e7 100644
> > --- a/lib/arm/asm/gic.h
> > +++ b/lib/arm/asm/gic.h
> > @@ -68,7 +68,7 @@ extern void gic_enable_defaults(void);
> >   * below will work with any supported gic version.
> >   */
> >  extern int gic_version(void);
> > -extern u32 gic_read_iar(void);
> > +extern u32 gic_read_iar(int group);
> >  extern u32 gic_iar_irqnr(u32 iar);
> >  extern void gic_write_eoir(u32 irqstat);
> >  extern void gic_ipi_send_single(int irq, int cpu);
> > diff --git a/lib/arm/gic-v2.c b/lib/arm/gic-v2.c
> > index dc6a97c..b60967e 100644
> > --- a/lib/arm/gic-v2.c
> > +++ b/lib/arm/gic-v2.c
> > @@ -26,8 +26,9 @@ void gicv2_enable_defaults(void)
> >  	writel(GICC_ENABLE, cpu_base + GICC_CTLR);
> >  }
> >  
> > -u32 gicv2_read_iar(void)
> > +u32 gicv2_read_iar(int group)
> >  {
> > +	/* GICv2 acks both group0 and group1 IRQs with the same register. */
> >  	return readl(gicv2_cpu_base() + GICC_IAR);
> >  }
> >  
> > diff --git a/lib/arm/gic.c b/lib/arm/gic.c
> > index cf4e811..b51eff5 100644
> > --- a/lib/arm/gic.c
> > +++ b/lib/arm/gic.c
> > @@ -12,7 +12,7 @@ struct gicv3_data gicv3_data;
> >  
> >  struct gic_common_ops {
> >  	void (*enable_defaults)(void);
> > -	u32 (*read_iar)(void);
> > +	u32 (*read_iar)(int group);
> >  	u32 (*iar_irqnr)(u32 iar);
> >  	void (*write_eoir)(u32 irqstat);
> >  	void (*ipi_send_single)(int irq, int cpu);
> > @@ -117,10 +117,10 @@ void gic_enable_defaults(void)
> >  	gic_common_ops->enable_defaults();
> >  }
> >  
> > -u32 gic_read_iar(void)
> > +u32 gic_read_iar(int group)
> >  {
> >  	assert(gic_common_ops && gic_common_ops->read_iar);
> > -	return gic_common_ops->read_iar();
> > +	return gic_common_ops->read_iar(group);
> >  }
> >  
> >  u32 gic_iar_irqnr(u32 iar)
> > diff --git a/lib/arm64/asm/arch_gicv3.h b/lib/arm64/asm/arch_gicv3.h
> > index a7994ec..876e1fc 100644
> > --- a/lib/arm64/asm/arch_gicv3.h
> > +++ b/lib/arm64/asm/arch_gicv3.h
> > @@ -11,6 +11,7 @@
> >  #include <asm/sysreg.h>
> >  
> >  #define ICC_PMR_EL1			sys_reg(3, 0, 4, 6, 0)
> > +#define ICC_IAR0_EL1			sys_reg(3, 0, 12, 8, 0)
> >  #define ICC_SGI1R_EL1			sys_reg(3, 0, 12, 11, 5)
> >  #define ICC_IAR1_EL1			sys_reg(3, 0, 12, 12, 0)
> >  #define ICC_EOIR1_EL1			sys_reg(3, 0, 12, 12, 1)
> > @@ -38,10 +39,15 @@ static inline void gicv3_write_sgi1r(u64 val)
> >  	asm volatile("msr_s " xstr(ICC_SGI1R_EL1) ", %0" : : "r" (val));
> >  }
> >  
> > -static inline u32 gicv3_read_iar(void)
> > +static inline u32 gicv3_read_iar(int group)
> >  {
> >  	u64 irqstat;
> > -	asm volatile("mrs_s %0, " xstr(ICC_IAR1_EL1) : "=r" (irqstat));
> > +
> > +	if (group == 0)
> > +		asm volatile("mrs_s %0, " xstr(ICC_IAR0_EL1) : "=r" (irqstat));
> > +	else
> > +		asm volatile("mrs_s %0, " xstr(ICC_IAR1_EL1) : "=r" (irqstat));
> > +
> >  	dsb(sy);
> >  	return (u64)irqstat;
> >  }
> 
> I'm not sure this is the best approach. Now every test that happens to use the gic
> has to know about interrupt groups. Have you considered implementing the functions
> that you need for the test in arm/gic.c? Andrew, what do you think?
> 

I agree that we should provide a simple API, hiding as many GIC details as
possible, for tests that need to handle IRQs but don't need to know the
specifics. Indeed I think gic_read_iar() and gic_write_eoir() should be
renamed to something like gic_get_irqstat() and gic_eoi() to be more
generic. Also gic_iar_irqnr() should probably be reimplemented as per-gic
macros named something like GIC_IRQNR(irqstat). For groups we can change
the gic_get_irqstat(void) gic op to gic_get_group_irqstat(int group), and
then add this common gic function

u32 gic_get_irqstat(void)
{
  return gic_get_group_irqstat(GIC_DEFAULT_GROUP);
}

How's that sound?

Thanks,
drew


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

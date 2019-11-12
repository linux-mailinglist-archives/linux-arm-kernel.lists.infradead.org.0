Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D444FF96F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP13VO3br7QBjtRNV+j6ah7C8xVMgQIrU4QKm9JshJs=; b=sMlicAYjj5CJBl
	dZT2byQfnliNf7AeJDXr41qkhxFM+SdPCCWG+1E0GgAel77O4fTVJVmCSO8v10Fd9gBn61Mjj5G0C
	YXsAvJV/HlzKxtq7jv1qK8qNQ13CdCiPQbNyr0kbd3IFr0jdfbr2OhKrUuRDesm1fMaB3EeFDWWfp
	IB01mVdMKwn5FOfAOvRp0xNjzNC1xMpatbeNFyrAkHBJrqNjiXcFZhSuq/ppD+kYqZUG+oeWlxxsK
	LkzgRosoA55k7wcaUBMp9bJG4Co2Ob6ZdkRb0AK47jLA/alNj8xKHUzj/4e6Hyn0t+MQJbQu/NNYD
	JTTpcm5ebnpRoca7U7yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZpV-0001Ui-2O; Tue, 12 Nov 2019 17:19:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZpL-0001U8-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:19:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E38F30E;
 Tue, 12 Nov 2019 09:19:38 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D2EE3F534;
 Tue, 12 Nov 2019 09:19:37 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 12/17] arm: gic: Change gic_read_iar() to
 take group parameter
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-13-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <68cd4ae5-0d85-4300-2851-adb3f5af6243@arm.com>
Date: Tue, 12 Nov 2019 17:19:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-13-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_091939_414074_EEE19968 
X-CRM114-Status: GOOD (  22.28  )
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/8/19 2:42 PM, Andre Przywara wrote:
> Acknowledging a GIC group 0 interrupt requires us to use a different
> system register on GICv3. To allow us to differentiate the two groups
> later, add a group parameter to gic_read_iar(). For GICv2 we can use the
> same CPU interface register to acknowledge group 0 as well, so we ignore
> the parameter here.
>
> For now this is still using group 1 on every caller.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c                  |  4 ++--
>  arm/micro-bench.c          |  2 +-
>  arm/pl031.c                |  2 +-
>  arm/timer.c                |  2 +-
>  lib/arm/asm/arch_gicv3.h   | 11 +++++++++--
>  lib/arm/asm/gic-v2.h       |  2 +-
>  lib/arm/asm/gic-v3.h       |  2 +-
>  lib/arm/asm/gic.h          |  2 +-
>  lib/arm/gic-v2.c           |  3 ++-
>  lib/arm/gic.c              |  6 +++---
>  lib/arm64/asm/arch_gicv3.h | 10 ++++++++--
>  11 files changed, 30 insertions(+), 16 deletions(-)
>
> diff --git a/arm/gic.c b/arm/gic.c
> index a0511e5..7be13a6 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -156,7 +156,7 @@ static void check_irqnr(u32 irqnr, int expected)
>  
>  static void irq_handler(struct pt_regs *regs __unused)
>  {
> -	u32 irqstat = gic_read_iar();
> +	u32 irqstat = gic_read_iar(1);
>  	u32 irqnr = gic_iar_irqnr(irqstat);
>  
>  	if (irqnr == GICC_INT_SPURIOUS) {
> @@ -288,7 +288,7 @@ static struct gic gicv3 = {
>  
>  static void ipi_clear_active_handler(struct pt_regs *regs __unused)
>  {
> -	u32 irqstat = gic_read_iar();
> +	u32 irqstat = gic_read_iar(1);
>  	u32 irqnr = gic_iar_irqnr(irqstat);
>  
>  	if (irqnr != GICC_INT_SPURIOUS) {
> diff --git a/arm/micro-bench.c b/arm/micro-bench.c
> index 4612f41..2bfee68 100644
> --- a/arm/micro-bench.c
> +++ b/arm/micro-bench.c
> @@ -33,7 +33,7 @@ static void ipi_irq_handler(struct pt_regs *regs)
>  {
>  	ipi_ready = false;
>  	ipi_received = true;
> -	gic_write_eoir(gic_read_iar());
> +	gic_write_eoir(gic_read_iar(1));
>  	ipi_ready = true;
>  }
>  
> diff --git a/arm/pl031.c b/arm/pl031.c
> index 5672f36..5be3d76 100644
> --- a/arm/pl031.c
> +++ b/arm/pl031.c
> @@ -134,7 +134,7 @@ static void gic_irq_unmask(void)
>  
>  static void irq_handler(struct pt_regs *regs)
>  {
> -	u32 irqstat = gic_read_iar();
> +	u32 irqstat = gic_read_iar(1);
>  	u32 irqnr = gic_iar_irqnr(irqstat);
>  
>  	gic_write_eoir(irqstat);
> diff --git a/arm/timer.c b/arm/timer.c
> index 0b808d5..e5cc3b4 100644
> --- a/arm/timer.c
> +++ b/arm/timer.c
> @@ -150,7 +150,7 @@ static void set_timer_irq_enabled(struct timer_info *info, bool enabled)
>  static void irq_handler(struct pt_regs *regs)
>  {
>  	struct timer_info *info;
> -	u32 irqstat = gic_read_iar();
> +	u32 irqstat = gic_read_iar(1);
>  	u32 irqnr = gic_iar_irqnr(irqstat);
>  
>  	if (irqnr != GICC_INT_SPURIOUS)
> diff --git a/lib/arm/asm/arch_gicv3.h b/lib/arm/asm/arch_gicv3.h
> index 45b6096..52e7bba 100644
> --- a/lib/arm/asm/arch_gicv3.h
> +++ b/lib/arm/asm/arch_gicv3.h
> @@ -16,6 +16,7 @@
>  
>  #define ICC_PMR				__ACCESS_CP15(c4, 0, c6, 0)
>  #define ICC_SGI1R			__ACCESS_CP15_64(0, c12)
> +#define ICC_IAR0			__ACCESS_CP15(c12, 0,  c8, 0)
>  #define ICC_IAR1			__ACCESS_CP15(c12, 0, c12, 0)
>  #define ICC_EOIR1			__ACCESS_CP15(c12, 0, c12, 1)
>  #define ICC_IGRPEN1			__ACCESS_CP15(c12, 0, c12, 7)
> @@ -30,9 +31,15 @@ static inline void gicv3_write_sgi1r(u64 val)
>  	write_sysreg(val, ICC_SGI1R);
>  }
>  
> -static inline u32 gicv3_read_iar(void)
> +static inline u32 gicv3_read_iar(int group)
>  {
> -	u32 irqstat = read_sysreg(ICC_IAR1);
> +	u32 irqstat;
> +
> +	if (group == 0)
> +		irqstat = read_sysreg(ICC_IAR0);
> +	else
> +		irqstat = read_sysreg(ICC_IAR1);
> +
>  	dsb(sy);
>  	return irqstat;
>  }
> diff --git a/lib/arm/asm/gic-v2.h b/lib/arm/asm/gic-v2.h
> index 1fcfd43..d50c610 100644
> --- a/lib/arm/asm/gic-v2.h
> +++ b/lib/arm/asm/gic-v2.h
> @@ -32,7 +32,7 @@ extern struct gicv2_data gicv2_data;
>  
>  extern int gicv2_init(void);
>  extern void gicv2_enable_defaults(void);
> -extern u32 gicv2_read_iar(void);
> +extern u32 gicv2_read_iar(int group);
>  extern u32 gicv2_iar_irqnr(u32 iar);
>  extern void gicv2_write_eoir(u32 irqstat);
>  extern void gicv2_ipi_send_single(int irq, int cpu);
> diff --git a/lib/arm/asm/gic-v3.h b/lib/arm/asm/gic-v3.h
> index 0a29610..ca19110 100644
> --- a/lib/arm/asm/gic-v3.h
> +++ b/lib/arm/asm/gic-v3.h
> @@ -69,7 +69,7 @@ extern struct gicv3_data gicv3_data;
>  
>  extern int gicv3_init(void);
>  extern void gicv3_enable_defaults(void);
> -extern u32 gicv3_read_iar(void);
> +extern u32 gicv3_read_iar(int group);
>  extern u32 gicv3_iar_irqnr(u32 iar);
>  extern void gicv3_write_eoir(u32 irqstat);
>  extern void gicv3_ipi_send_single(int irq, int cpu);
> diff --git a/lib/arm/asm/gic.h b/lib/arm/asm/gic.h
> index 21cdb58..09663e7 100644
> --- a/lib/arm/asm/gic.h
> +++ b/lib/arm/asm/gic.h
> @@ -68,7 +68,7 @@ extern void gic_enable_defaults(void);
>   * below will work with any supported gic version.
>   */
>  extern int gic_version(void);
> -extern u32 gic_read_iar(void);
> +extern u32 gic_read_iar(int group);
>  extern u32 gic_iar_irqnr(u32 iar);
>  extern void gic_write_eoir(u32 irqstat);
>  extern void gic_ipi_send_single(int irq, int cpu);
> diff --git a/lib/arm/gic-v2.c b/lib/arm/gic-v2.c
> index dc6a97c..b60967e 100644
> --- a/lib/arm/gic-v2.c
> +++ b/lib/arm/gic-v2.c
> @@ -26,8 +26,9 @@ void gicv2_enable_defaults(void)
>  	writel(GICC_ENABLE, cpu_base + GICC_CTLR);
>  }
>  
> -u32 gicv2_read_iar(void)
> +u32 gicv2_read_iar(int group)
>  {
> +	/* GICv2 acks both group0 and group1 IRQs with the same register. */
>  	return readl(gicv2_cpu_base() + GICC_IAR);
>  }
>  
> diff --git a/lib/arm/gic.c b/lib/arm/gic.c
> index cf4e811..b51eff5 100644
> --- a/lib/arm/gic.c
> +++ b/lib/arm/gic.c
> @@ -12,7 +12,7 @@ struct gicv3_data gicv3_data;
>  
>  struct gic_common_ops {
>  	void (*enable_defaults)(void);
> -	u32 (*read_iar)(void);
> +	u32 (*read_iar)(int group);
>  	u32 (*iar_irqnr)(u32 iar);
>  	void (*write_eoir)(u32 irqstat);
>  	void (*ipi_send_single)(int irq, int cpu);
> @@ -117,10 +117,10 @@ void gic_enable_defaults(void)
>  	gic_common_ops->enable_defaults();
>  }
>  
> -u32 gic_read_iar(void)
> +u32 gic_read_iar(int group)
>  {
>  	assert(gic_common_ops && gic_common_ops->read_iar);
> -	return gic_common_ops->read_iar();
> +	return gic_common_ops->read_iar(group);
>  }
>  
>  u32 gic_iar_irqnr(u32 iar)
> diff --git a/lib/arm64/asm/arch_gicv3.h b/lib/arm64/asm/arch_gicv3.h
> index a7994ec..876e1fc 100644
> --- a/lib/arm64/asm/arch_gicv3.h
> +++ b/lib/arm64/asm/arch_gicv3.h
> @@ -11,6 +11,7 @@
>  #include <asm/sysreg.h>
>  
>  #define ICC_PMR_EL1			sys_reg(3, 0, 4, 6, 0)
> +#define ICC_IAR0_EL1			sys_reg(3, 0, 12, 8, 0)
>  #define ICC_SGI1R_EL1			sys_reg(3, 0, 12, 11, 5)
>  #define ICC_IAR1_EL1			sys_reg(3, 0, 12, 12, 0)
>  #define ICC_EOIR1_EL1			sys_reg(3, 0, 12, 12, 1)
> @@ -38,10 +39,15 @@ static inline void gicv3_write_sgi1r(u64 val)
>  	asm volatile("msr_s " xstr(ICC_SGI1R_EL1) ", %0" : : "r" (val));
>  }
>  
> -static inline u32 gicv3_read_iar(void)
> +static inline u32 gicv3_read_iar(int group)
>  {
>  	u64 irqstat;
> -	asm volatile("mrs_s %0, " xstr(ICC_IAR1_EL1) : "=r" (irqstat));
> +
> +	if (group == 0)
> +		asm volatile("mrs_s %0, " xstr(ICC_IAR0_EL1) : "=r" (irqstat));
> +	else
> +		asm volatile("mrs_s %0, " xstr(ICC_IAR1_EL1) : "=r" (irqstat));
> +
>  	dsb(sy);
>  	return (u64)irqstat;
>  }

I'm not sure this is the best approach. Now every test that happens to use the gic
has to know about interrupt groups. Have you considered implementing the functions
that you need for the test in arm/gic.c? Andrew, what do you think?

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

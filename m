Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4FA1DA47F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 00:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGkKn4bGCdRnOQG9Ks9qwisa1x0OZiYpntlCsVVjnio=; b=EaASugI77WyzxZ
	naOCiC4xE6RxoifiWiKhacTj5mwBhO4MfOUpOYA55CpE2yx1wDk359XG7XFqOYBvmryhDzneeGkbq
	mXUzF6vpylhHrNAL8DBZ8kjYwesGzyX8Y9mvuJcTFIsHC6B6Y89Hn7qwXJSLvanHbqVnBn96E6COX
	fcO6mpX7SF9iFSR1qFutQcLGcWUkthVTr5GEs0fNfG4vs+ffAowbLghOtWhCg+GUX6XXyxrimlHMx
	r8Yyhy+tG8jv7hmhar/L0KFyEoKI82NBV8DDgE0sCtS24i8G5rSXmoKvXB2l9kvf8lTsA2Xqqt9H2
	JRyAXq3R7PESWTe4irbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbAfo-0007NT-7w; Tue, 19 May 2020 22:25:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbAfU-00068A-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 22:25:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GgP5zC47SHT+qNcVV1uheWiy+wsRUbO+ZR1apmeNXlo=; b=swZTGhpN+zvTVqTS4ZD59GZFW
 hHzA3m9p87R9Y+j/mTdvD3P7jI5pKBmdGW9/k/CnSKJpxrkOiQI9PdWFP89hbJeDjPoJAC8rySbKP
 OUgH0N8tlMdbOUqw0TB1eCZ2kHGJvOLVZHzgJA/cHNghCTEnxJnfbZnjrg3dMUUFeQJHgqGNycE5O
 tXd7LGW9JkzKYzSsCMjXPvkMG++XmGisuR2RCBd569gTtboXVQKd/n956PH4W4hRDhFQ0tknWC02D
 f6hFylVEa/nfaWFqpZFCskIpJbsXrbi24Uy6B6rR6Enw2c4CER7j4SKylTX6bPMaKRa6NKMfCCYjF
 6AyIbng5Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34354)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbAfL-0006VH-6a; Tue, 19 May 2020 23:24:51 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbAfH-000661-5J; Tue, 19 May 2020 23:24:47 +0100
Date: Tue, 19 May 2020 23:24:47 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 04/11] ARM: Allow IPIs to be handled as normal interrupts
Message-ID: <20200519222447.GJ1551@shell.armlinux.org.uk>
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-5-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519161755.209565-5-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_152504_462015_80DE2128 
X-CRM114-Status: GOOD (  27.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 05:17:48PM +0100, Marc Zyngier wrote:
> In order to deal with IPIs as normal interrupts, let's add
> a new way to register them with the architecture code.
> 
> set_smp_ipi_range() takes a range of interrupts, and allows
> the arch code to request them as if the were normal interrupts.
> A standard handler is then called by the core IRQ code to deal
> with the IPI.
> 
> This means that we don't need to call irq_enter/irq_exit, and
> that we don't need to deal with set_irq_regs either. So let's
> move the dispatcher into its own function, and leave handle_IPI()
> as a compatibility function.
> 
> On the sending side, let's make use of ipi_send_mask, which
> already exists for this purpose.

You say nothing about the nesting of irq_enter() and irq_exit()
for scheduler_ipi().

Given that lockdep introduced the requirement that hard IRQs can't
be nested, are we sure that calling irq_exit() twice is safe?

Looking at irqtime_account_irq(), it seems that will cause double-
accounting of in-interrupt time, since we will increment
irq_start_time by just over twice the the period spent handling
the IPI.

I think the rest of irq_exit() should be safe, but still, this
behaviour should be documented at the very least, if not avoided.

> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm/Kconfig           |  1 +
>  arch/arm/include/asm/smp.h |  5 ++
>  arch/arm/kernel/smp.c      | 97 ++++++++++++++++++++++++++++++++------
>  3 files changed, 88 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index c77c93c485a0..0caaba9bf880 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -48,6 +48,7 @@ config ARM
>  	select GENERIC_ARCH_TOPOLOGY if ARM_CPU_TOPOLOGY
>  	select GENERIC_ATOMIC64 if CPU_V7M || CPU_V6 || !CPU_32v6K || !AEABI
>  	select GENERIC_CLOCKEVENTS_BROADCAST if SMP
> +	select GENERIC_IRQ_IPI if SMP
>  	select GENERIC_CPU_AUTOPROBE
>  	select GENERIC_EARLY_IOREMAP
>  	select GENERIC_IDLE_POLL_SETUP
> diff --git a/arch/arm/include/asm/smp.h b/arch/arm/include/asm/smp.h
> index a91f21e3c5b5..0e29730295ca 100644
> --- a/arch/arm/include/asm/smp.h
> +++ b/arch/arm/include/asm/smp.h
> @@ -45,6 +45,11 @@ extern void smp_init_cpus(void);
>   */
>  extern void set_smp_cross_call(void (*)(const struct cpumask *, unsigned int));
>  
> +/*
> + * Register IPI interrupts with the arch SMP code
> + */
> +extern void set_smp_ipi_range(int ipi_base, int nr_ipi);
> +
>  /*
>   * Called from platform specific assembly code, this is the
>   * secondary CPU entry point.
> diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
> index 46e1be9e57a8..618641978a5b 100644
> --- a/arch/arm/kernel/smp.c
> +++ b/arch/arm/kernel/smp.c
> @@ -79,10 +79,19 @@ enum ipi_msg_type {
>  	 */
>  };
>  
> +static int ipi_irq_base;
> +static int nr_ipi = NR_IPI;
> +static struct irq_desc *ipi_desc[NR_IPI];
> +
> +static void ipi_setup(int cpu);
> +static void ipi_teardown(int cpu);
> +
>  static DECLARE_COMPLETION(cpu_running);
>  
>  static struct smp_operations smp_ops __ro_after_init;
>  
> +static void ipi_setup(int cpu);
> +
>  void __init smp_set_ops(const struct smp_operations *ops)
>  {
>  	if (ops)
> @@ -308,6 +317,8 @@ void arch_cpu_idle_dead(void)
>  
>  	local_irq_disable();
>  
> +	ipi_teardown(cpu);
> +
>  	/*
>  	 * Flush the data out of the L1 cache for this CPU.  This must be
>  	 * before the completion to ensure that data is safely written out
> @@ -424,6 +435,8 @@ asmlinkage void secondary_start_kernel(void)
>  
>  	notify_cpu_starting(cpu);
>  
> +	ipi_setup(cpu);
> +
>  	calibrate_delay();
>  
>  	smp_store_cpu_info(cpu);
> @@ -629,10 +642,9 @@ asmlinkage void __exception_irq_entry do_IPI(int ipinr, struct pt_regs *regs)
>  	handle_IPI(ipinr, regs);
>  }
>  
> -void handle_IPI(int ipinr, struct pt_regs *regs)
> +static void do_handle_IPI(int ipinr)
>  {
>  	unsigned int cpu = smp_processor_id();
> -	struct pt_regs *old_regs = set_irq_regs(regs);
>  
>  	if ((unsigned)ipinr < NR_IPI) {
>  		trace_ipi_entry_rcuidle(ipi_types[ipinr]);
> @@ -645,9 +657,7 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
>  
>  #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
>  	case IPI_TIMER:
> -		irq_enter();
>  		tick_receive_broadcast();
> -		irq_exit();
>  		break;
>  #endif
>  
> @@ -656,36 +666,26 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
>  		break;
>  
>  	case IPI_CALL_FUNC:
> -		irq_enter();
>  		generic_smp_call_function_interrupt();
> -		irq_exit();
>  		break;
>  
>  	case IPI_CPU_STOP:
> -		irq_enter();
>  		ipi_cpu_stop(cpu);
> -		irq_exit();
>  		break;
>  
>  #ifdef CONFIG_IRQ_WORK
>  	case IPI_IRQ_WORK:
> -		irq_enter();
>  		irq_work_run();
> -		irq_exit();
>  		break;
>  #endif
>  
>  	case IPI_COMPLETION:
> -		irq_enter();
>  		ipi_complete(cpu);
> -		irq_exit();
>  		break;
>  
>  	case IPI_CPU_BACKTRACE:
>  		printk_nmi_enter();
> -		irq_enter();
> -		nmi_cpu_backtrace(regs);
> -		irq_exit();
> +		nmi_cpu_backtrace(get_irq_regs());
>  		printk_nmi_exit();
>  		break;
>  
> @@ -697,9 +697,76 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
>  
>  	if ((unsigned)ipinr < NR_IPI)
>  		trace_ipi_exit_rcuidle(ipi_types[ipinr]);
> +}
> +
> +/* Legacy version, should go away once all irqchips have been converted */
> +void handle_IPI(int ipinr, struct pt_regs *regs)
> +{
> +	struct pt_regs *old_regs = set_irq_regs(regs);
> +
> +	irq_enter();
> +	do_handle_IPI(ipinr);
> +	irq_exit();
> +
>  	set_irq_regs(old_regs);
>  }
>  
> +static irqreturn_t ipi_handler(int irq, void *data)
> +{
> +	do_handle_IPI(irq - ipi_irq_base);
> +	return IRQ_HANDLED;
> +}
> +
> +static void ipi_send(const struct cpumask *target, unsigned int ipi)
> +{
> +	__ipi_send_mask(ipi_desc[ipi], target);
> +}
> +
> +static void ipi_setup(int cpu)
> +{
> +	if (ipi_irq_base) {
> +		int i;
> +
> +		for (i = 0; i < nr_ipi; i++)
> +			enable_percpu_irq(ipi_irq_base + i, 0);
> +	}
> +}
> +
> +static void ipi_teardown(int cpu)
> +{
> +	if (ipi_irq_base) {
> +		int i;
> +
> +		for (i = 0; i < nr_ipi; i++)
> +			disable_percpu_irq(ipi_irq_base + i);
> +	}
> +}
> +
> +void __init set_smp_ipi_range(int ipi_base, int n)
> +{
> +	int i;
> +
> +	WARN_ON(n < NR_IPI);
> +	nr_ipi = min(n, NR_IPI);
> +
> +	for (i = 0; i < nr_ipi; i++) {
> +		int err;
> +
> +		err = request_percpu_irq(ipi_base + i, ipi_handler,
> +					 "IPI", &irq_stat);
> +		WARN_ON(err);
> +
> +		ipi_desc[i] = irq_to_desc(ipi_base + i);
> +		irq_set_status_flags(ipi_base + i, IRQ_NO_ACCOUNTING);
> +	}
> +
> +	ipi_irq_base = ipi_base;
> +	set_smp_cross_call(ipi_send);
> +
> +	/* Setup the boot CPU immediately */
> +	ipi_setup(smp_processor_id());
> +}
> +
>  void smp_send_reschedule(int cpu)
>  {
>  	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
> -- 
> 2.26.2
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

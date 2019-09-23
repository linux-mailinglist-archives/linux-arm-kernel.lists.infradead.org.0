Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C082ABB689
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jggV6SkcQo1DMjx0G9vlujkO0CX9aY1Xza7PVmBGliA=; b=o0obuuvAmeTZDX
	ci2kkLUx5Zl3WnnVD/L/6EPTvNaKMR3wuM11dCmp0UncW9urhkOq6Y9IaoMxlXKKLbZW7rYDXCpbm
	viXK0CtXfOM2cMokcAAf+5eprW0SxoZan1UEDAulYKvwJhEvBNia8woa3sVk/d2Vgf3D1/ERMo3KQ
	xTgDY+33ICXpbHrEYYYXU92eD0qQhhQPf7LOZeq1eVOGkYqx06Xt7196/AJNhKo2DAdWIy1L9nyIg
	NeRC8N6GfNXsg+pv1P6M60amyq3ks9HFcQX1aNpy5J+oaDLaP0k8+QUfzPBETcO05mylAHF2RQ0wn
	ndAz/T+BIVuwNNJ22XAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPCf-0001Bz-P2; Mon, 23 Sep 2019 14:20:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPCU-0001AC-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 14:20:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9C161000;
 Mon, 23 Sep 2019 07:20:16 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8091C3F59C;
 Mon, 23 Sep 2019 07:20:14 -0700 (PDT)
Subject: Re: [RFC PATCH v2 01/12] smp: add generic SMP-stop support to common
 code
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
References: <20190913181953.45748-1-cristian.marussi@arm.com>
 <20190913181953.45748-2-cristian.marussi@arm.com>
Message-ID: <1d7e90b7-71d8-3c12-9c1b-7049a1d7e32f@arm.com>
Date: Mon, 23 Sep 2019 15:20:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913181953.45748-2-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_072026_295366_560BA527 
X-CRM114-Status: GOOD (  31.59  )
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux@armlinux.org.uk, davem@davemloft.net, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/2019 19:19, Cristian Marussi wrote:
> There was a lot of code duplication across architectures regarding the
> SMP stop procedures' logic; moreover some of this duplicated code logic
> happened to be similarly faulty across a few architectures: while fixing
> such logic, move such generic logic as much as possible inside common
> code.
> 
> Collect all the common logic related to SMP stop operations into the
> common SMP code; any architecture willing to use such centralized logic
> can select CONFIG_ARCH_USE_COMMON_STOP=y and provide the related
> arch-specific helpers: in such a scenario, those architectures will
> transparently start using the common code provided by smp_send_stop()
> common function.
> 
> On the other side, Architectures not willing to use common code SMP stop
> logic will simply leave CONFIG_ARCH_USE_COMMON_STOP undefined and carry
> on executing their local arch-specific smp_send_stop() as before.
> 
> Suggested-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v1 --> v2
> - moved related Kconfig to common code inside arch/Kconfig
> - introduced additional CONFIG_USE_COMMON_STOP selected by
>   CONFIG_ARCH_USE_COMMON_STOP
> - introduced helpers to let architectures optionally alter
>   the default common code behaviour while waiting for CPUs:
>   change timeout or wait for ever. (will be needed by x86)
> ---
>  arch/Kconfig        |  7 +++++
>  include/linux/smp.h | 55 +++++++++++++++++++++++++++++++++++++
>  kernel/smp.c        | 67 +++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 129 insertions(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index a7b57dd42c26..89766e6c0ac8 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -166,6 +166,13 @@ config ARCH_USE_BUILTIN_BSWAP
>  	 instructions should set this. And it shouldn't hurt to set it
>  	 on architectures that don't have such instructions.
>  
> +config ARCH_USE_COMMON_SMP_STOP
> +       def_bool n
> +
> +config USE_COMMON_SMP_STOP
> +       depends on SMP && ARCH_USE_COMMON_SMP_STOP
> +       def_bool y
> +
>  config KRETPROBES
>  	def_bool y
>  	depends on KPROBES && HAVE_KRETPROBES
> diff --git a/include/linux/smp.h b/include/linux/smp.h
> index 6fc856c9eda5..381a14bfcd96 100644
> --- a/include/linux/smp.h
> +++ b/include/linux/smp.h
> @@ -77,6 +77,61 @@ int smp_call_function_single_async(int cpu, call_single_data_t *csd);
>   */
>  extern void smp_send_stop(void);
>  
> +#ifdef CONFIG_USE_COMMON_SMP_STOP
> +static atomic_t wait_forever;
> +static atomic_t wait_timeout = ATOMIC_INIT(USEC_PER_SEC);
> +
> +/*
> + * An Architecture can optionally decide to use this helper to change the
> + * waiting behaviour of common STOP logic, forcing to wait forever for
> + * all CPUs to be stopped.
> + */
> +static inline void smp_stop_set_wait_forever(int wait)
> +{
> +	atomic_set(&wait_forever, wait);
> +	/* ensure wait atomic-op is visible */
> +	smp_mb__after_atomic();
> +}
> +

These new helpers I added in V2 to let x86 configure wait/timeout SMP common stop behavior
are in fact deadly broken as of now since based on underlying static header-globals.
I'll fix in V3.

Cheers

Cristian


> +/*
> + * An Architecture can optionally decide to use this helper to change the
> + * waiting timeout of common STOP logic. A ZERO timeout means no timeout
> + * at all as long as wait_forever was not previously set.
> + *
> + * Note that wait_forever and timeout must remain individually selectable:
> + * so you can temporarily request wait_forever while keeping the same timeout
> + * settings.
> + */
> +static inline void smp_stop_set_wait_timeout_us(unsigned long timeout)
> +{
> +	atomic_set(&wait_timeout, timeout);
> +	/* ensure timeout atomic-op is visible */
> +	smp_mb__after_atomic();
> +}
> +
> +/* Retrieve the current wait settings. */
> +static inline bool smp_stop_get_wait_timeout_us(unsigned long *timeout)
> +{
> +	if (timeout)
> +		*timeout = atomic_read(&wait_timeout);
> +	return atomic_read(&wait_forever);
> +}
> +
> +/*
> + * Any Architecture willing to use STOP common logic implementation
> + * MUST at least provide the arch_smp_stop_call() helper which is in
> + * charge of its own arch-specific CPU-stop mechanism.
> + */
> +extern void arch_smp_stop_call(cpumask_t *cpus);
> +
> +/*
> + * An Architecture CAN also provide the arch_smp_cpus_stop_complete()
> + * dedicated helper, to perform any final arch-specific operation on
> + * the local CPU once the other CPUs have been successfully stopped.
> + */
> +void arch_smp_cpus_stop_complete(void);
> +#endif
> +
>  /*
>   * sends a 'reschedule' event to another CPU:
>   */
> diff --git a/kernel/smp.c b/kernel/smp.c
> index 7dbcb402c2fc..72f99bf13fd0 100644
> --- a/kernel/smp.c
> +++ b/kernel/smp.c
> @@ -20,6 +20,7 @@
>  #include <linux/sched.h>
>  #include <linux/sched/idle.h>
>  #include <linux/hypervisor.h>
> +#include <linux/delay.h>
>  
>  #include "smpboot.h"
>  
> @@ -817,3 +818,69 @@ int smp_call_on_cpu(unsigned int cpu, int (*func)(void *), void *par, bool phys)
>  	return sscs.ret;
>  }
>  EXPORT_SYMBOL_GPL(smp_call_on_cpu);
> +
> +#ifdef CONFIG_USE_COMMON_SMP_STOP
> +void __weak arch_smp_cpus_stop_complete(void) { }
> +
> +static inline bool any_other_cpus_online(cpumask_t *mask,
> +					 unsigned int this_cpu_id)
> +{
> +	cpumask_copy(mask, cpu_online_mask);
> +	cpumask_clear_cpu(this_cpu_id, mask);
> +
> +	return !cpumask_empty(mask);
> +}
> +
> +/*
> + * This centralizes the common logic to:
> + *
> + *  - evaluate which CPUs are online and needs to be notified for stop,
> + *    while considering properly the status of the calling CPU
> + *
> + *  - call the arch-specific helpers to request the effective stop
> + *
> + *  - wait for the stop operation to be completed across all involved CPUs
> + *    monitoring the cpu_online_mask
> + */
> +void smp_send_stop(void)
> +{
> +	unsigned int this_cpu_id;
> +	cpumask_t mask;
> +
> +	this_cpu_id = smp_processor_id();
> +	if (any_other_cpus_online(&mask, this_cpu_id)) {
> +		bool wait;
> +		unsigned long timeout;
> +		unsigned int this_cpu_online = cpu_online(this_cpu_id);
> +
> +		if (system_state <= SYSTEM_RUNNING)
> +			pr_crit("stopping secondary CPUs\n");
> +		arch_smp_stop_call(&mask);
> +
> +		/*
> +		 * Defaults to wait up to one second for other CPUs to stop;
> +		 * architectures can modify the default timeout or request
> +		 * to wait forever.
> +		 *
> +		 * Here we rely simply on cpu_online_mask to sync with
> +		 * arch-specific stop code without bloating the code with an
> +		 * additional atomic_t ad-hoc counter.
> +		 *
> +		 * As a consequence we'll need proper explicit memory barriers
> +		 * in case the other CPUs running the arch-specific stop-code
> +		 * would need to commit to memory some data (like saved_regs).
> +		 */
> +		wait = smp_stop_get_wait_timeout_us(&timeout);
> +		while (num_online_cpus() > this_cpu_online &&
> +		       (wait || timeout--))
> +			udelay(1);
> +		/* ensure any stopping-CPUs memory access is made visible */
> +		smp_rmb();
> +		if (num_online_cpus() > this_cpu_online)
> +			pr_warn("failed to stop secondary CPUs %*pbl\n",
> +				cpumask_pr_args(cpu_online_mask));
> +	}
> +	/* Perform final (possibly arch-specific) work on this CPU */
> +	arch_smp_cpus_stop_complete();
> +}
> +#endif
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

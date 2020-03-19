Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7749018C06E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U52Jj5hb9pME3vsy0nOD+m60M9aGMQrb6kG6+GVJs/k=; b=lOfhZ3VHGQgTcq
	2P7aedRABFxamAjQai0mma3uRzxMeiYe9Ww27EYPyQB7iNQfcldsJKhqqdZWYXESSd0YkgcwW0D8e
	ASKkp/Zs/0QT1g87I2twsZi96N8P5P0H4ncBlHau/YB/LUKjQ8VCP/VjnoaMRWqfHjOnHLmGVhx9I
	3sCi5HqRTR4Pb3vR5Mfm5DaJ5ZUeU25mCIryoStAJlueIC2DjckIe7waozrzHf6QyR+RfL/tSuDfe
	qMIulx+wUM+pzNuKWAbQEzyslu08Y9XwHidSpkTS3v1l3z9moztydUAdvo5iMigtYP7OQl76jJYJz
	vGmjsaS93jbbkvcbfzsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF0tR-0003Br-Dj; Thu, 19 Mar 2020 19:31:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF0tI-0003BI-Kc
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:31:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E11AF1FB;
 Thu, 19 Mar 2020 12:31:38 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C57E23F85E;
 Thu, 19 Mar 2020 12:31:37 -0700 (PDT)
Date: Thu, 19 Mar 2020 19:31:35 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v5 3/4] arm64: Introduce get_cpu_ops() helper function
Message-ID: <20200319193135.GD4876@lakrids.cambridge.arm.com>
References: <20200318230145.72097-1-gshan@redhat.com>
 <20200318230145.72097-4-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318230145.72097-4-gshan@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_123140_778628_ACA7F4BC 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 10:01:44AM +1100, Gavin Shan wrote:
> This introduces get_cpu_ops() to return the CPU operations according to
> the given CPU index. For now, it simply returns the @cpu_ops[cpu] as
> before. Also, helper function __cpu_try_die() is introduced to be shared
> by cpu_die() and ipi_cpu_crash_stop(). So it shouldn't introduce any
> functional changes.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

I think this makes the code easier to read, and the addition of a few
lines is worthwhile, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/cpu_ops.h |  2 +-
>  arch/arm64/kernel/cpu_ops.c      |  7 +++-
>  arch/arm64/kernel/cpuidle.c      |  9 ++--
>  arch/arm64/kernel/setup.c        |  6 ++-
>  arch/arm64/kernel/smp.c          | 70 +++++++++++++++++++++-----------
>  5 files changed, 62 insertions(+), 32 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpu_ops.h b/arch/arm64/include/asm/cpu_ops.h
> index baa13b5db2ca..d28e8f37d3b4 100644
> --- a/arch/arm64/include/asm/cpu_ops.h
> +++ b/arch/arm64/include/asm/cpu_ops.h
> @@ -55,8 +55,8 @@ struct cpu_operations {
>  #endif
>  };
>  
> -extern const struct cpu_operations *cpu_ops[NR_CPUS];
>  int __init init_cpu_ops(int cpu);
> +extern const struct cpu_operations *get_cpu_ops(int cpu);
>  
>  static inline void __init init_bootcpu_ops(void)
>  {
> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
> index a6c3c816b618..e133011f64b5 100644
> --- a/arch/arm64/kernel/cpu_ops.c
> +++ b/arch/arm64/kernel/cpu_ops.c
> @@ -20,7 +20,7 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
>  #endif
>  extern const struct cpu_operations cpu_psci_ops;
>  
> -const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
> +static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
>  
>  static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
>  	&smp_spin_table_ops,
> @@ -111,3 +111,8 @@ int __init init_cpu_ops(int cpu)
>  
>  	return 0;
>  }
> +
> +const struct cpu_operations *get_cpu_ops(int cpu)
> +{
> +	return cpu_ops[cpu];
> +}
> diff --git a/arch/arm64/kernel/cpuidle.c b/arch/arm64/kernel/cpuidle.c
> index e4d6af2fdec7..b512b5503f6e 100644
> --- a/arch/arm64/kernel/cpuidle.c
> +++ b/arch/arm64/kernel/cpuidle.c
> @@ -18,11 +18,11 @@
>  
>  int arm_cpuidle_init(unsigned int cpu)
>  {
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
>  	int ret = -EOPNOTSUPP;
>  
> -	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_suspend &&
> -			cpu_ops[cpu]->cpu_init_idle)
> -		ret = cpu_ops[cpu]->cpu_init_idle(cpu);
> +	if (ops && ops->cpu_suspend && ops->cpu_init_idle)
> +		ret = ops->cpu_init_idle(cpu);
>  
>  	return ret;
>  }
> @@ -37,8 +37,9 @@ int arm_cpuidle_init(unsigned int cpu)
>  int arm_cpuidle_suspend(int index)
>  {
>  	int cpu = smp_processor_id();
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
>  
> -	return cpu_ops[cpu]->cpu_suspend(index);
> +	return ops->cpu_suspend(index);
>  }
>  
>  #ifdef CONFIG_ACPI
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index f66bd260cce8..3fd2c11c09fc 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -371,8 +371,10 @@ void __init setup_arch(char **cmdline_p)
>  static inline bool cpu_can_disable(unsigned int cpu)
>  {
>  #ifdef CONFIG_HOTPLUG_CPU
> -	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_can_disable)
> -		return cpu_ops[cpu]->cpu_can_disable(cpu);
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
> +
> +	if (ops && ops->cpu_can_disable)
> +		return ops->cpu_can_disable(cpu);
>  #endif
>  	return false;
>  }
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 6f8477d7f3be..e5c9862c271b 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -93,8 +93,10 @@ static inline int op_cpu_kill(unsigned int cpu)
>   */
>  static int boot_secondary(unsigned int cpu, struct task_struct *idle)
>  {
> -	if (cpu_ops[cpu]->cpu_boot)
> -		return cpu_ops[cpu]->cpu_boot(cpu);
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
> +
> +	if (ops->cpu_boot)
> +		return ops->cpu_boot(cpu);
>  
>  	return -EOPNOTSUPP;
>  }
> @@ -196,6 +198,7 @@ asmlinkage notrace void secondary_start_kernel(void)
>  {
>  	u64 mpidr = read_cpuid_mpidr() & MPIDR_HWID_BITMASK;
>  	struct mm_struct *mm = &init_mm;
> +	const struct cpu_operations *ops;
>  	unsigned int cpu;
>  
>  	cpu = task_cpu(current);
> @@ -227,8 +230,9 @@ asmlinkage notrace void secondary_start_kernel(void)
>  	 */
>  	check_local_cpu_capabilities();
>  
> -	if (cpu_ops[cpu]->cpu_postboot)
> -		cpu_ops[cpu]->cpu_postboot();
> +	ops = get_cpu_ops(cpu);
> +	if (ops->cpu_postboot)
> +		ops->cpu_postboot();
>  
>  	/*
>  	 * Log the CPU info before it is marked online and might get read.
> @@ -266,19 +270,21 @@ asmlinkage notrace void secondary_start_kernel(void)
>  #ifdef CONFIG_HOTPLUG_CPU
>  static int op_cpu_disable(unsigned int cpu)
>  {
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
> +
>  	/*
>  	 * If we don't have a cpu_die method, abort before we reach the point
>  	 * of no return. CPU0 may not have an cpu_ops, so test for it.
>  	 */
> -	if (!cpu_ops[cpu] || !cpu_ops[cpu]->cpu_die)
> +	if (!ops || !ops->cpu_die)
>  		return -EOPNOTSUPP;
>  
>  	/*
>  	 * We may need to abort a hot unplug for some other mechanism-specific
>  	 * reason.
>  	 */
> -	if (cpu_ops[cpu]->cpu_disable)
> -		return cpu_ops[cpu]->cpu_disable(cpu);
> +	if (ops->cpu_disable)
> +		return ops->cpu_disable(cpu);
>  
>  	return 0;
>  }
> @@ -314,15 +320,17 @@ int __cpu_disable(void)
>  
>  static int op_cpu_kill(unsigned int cpu)
>  {
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
> +
>  	/*
>  	 * If we have no means of synchronising with the dying CPU, then assume
>  	 * that it is really dead. We can only wait for an arbitrary length of
>  	 * time and hope that it's dead, so let's skip the wait and just hope.
>  	 */
> -	if (!cpu_ops[cpu]->cpu_kill)
> +	if (!ops->cpu_kill)
>  		return 0;
>  
> -	return cpu_ops[cpu]->cpu_kill(cpu);
> +	return ops->cpu_kill(cpu);
>  }
>  
>  /*
> @@ -357,6 +365,7 @@ void __cpu_die(unsigned int cpu)
>  void cpu_die(void)
>  {
>  	unsigned int cpu = smp_processor_id();
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
>  
>  	idle_task_exit();
>  
> @@ -370,12 +379,22 @@ void cpu_die(void)
>  	 * mechanism must perform all required cache maintenance to ensure that
>  	 * no dirty lines are lost in the process of shutting down the CPU.
>  	 */
> -	cpu_ops[cpu]->cpu_die(cpu);
> +	ops->cpu_die(cpu);
>  
>  	BUG();
>  }
>  #endif
>  
> +static void __cpu_try_die(int cpu)
> +{
> +#ifdef CONFIG_HOTPLUG_CPU
> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
> +
> +	if (ops && ops->cpu_die)
> +		ops->cpu_die(cpu);
> +#endif
> +}
> +
>  /*
>   * Kill the calling secondary CPU, early in bringup before it is turned
>   * online.
> @@ -389,12 +408,11 @@ void cpu_die_early(void)
>  	/* Mark this CPU absent */
>  	set_cpu_present(cpu, 0);
>  
> -#ifdef CONFIG_HOTPLUG_CPU
> -	update_cpu_boot_status(CPU_KILL_ME);
> -	/* Check if we can park ourselves */
> -	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
> -		cpu_ops[cpu]->cpu_die(cpu);
> -#endif
> +	if (IS_ENABLED(CONFIG_HOTPLUG_CPU)) {
> +		update_cpu_boot_status(CPU_KILL_ME);
> +		__cpu_try_die(cpu);
> +	}
> +
>  	update_cpu_boot_status(CPU_STUCK_IN_KERNEL);
>  
>  	cpu_park_loop();
> @@ -488,10 +506,13 @@ static bool __init is_mpidr_duplicate(unsigned int cpu, u64 hwid)
>   */
>  static int __init smp_cpu_setup(int cpu)
>  {
> +	const struct cpu_operations *ops;
> +
>  	if (init_cpu_ops(cpu))
>  		return -ENODEV;
>  
> -	if (cpu_ops[cpu]->cpu_init(cpu))
> +	ops = get_cpu_ops(cpu);
> +	if (ops->cpu_init(cpu))
>  		return -ENODEV;
>  
>  	set_cpu_possible(cpu, true);
> @@ -714,6 +735,7 @@ void __init smp_init_cpus(void)
>  
>  void __init smp_prepare_cpus(unsigned int max_cpus)
>  {
> +	const struct cpu_operations *ops;
>  	int err;
>  	unsigned int cpu;
>  	unsigned int this_cpu;
> @@ -744,10 +766,11 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
>  		if (cpu == smp_processor_id())
>  			continue;
>  
> -		if (!cpu_ops[cpu])
> +		ops = get_cpu_ops(cpu);
> +		if (!ops)
>  			continue;
>  
> -		err = cpu_ops[cpu]->cpu_prepare(cpu);
> +		err = ops->cpu_prepare(cpu);
>  		if (err)
>  			continue;
>  
> @@ -863,10 +886,8 @@ static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
>  	local_irq_disable();
>  	sdei_mask_local_cpu();
>  
> -#ifdef CONFIG_HOTPLUG_CPU
> -	if (cpu_ops[cpu]->cpu_die)
> -		cpu_ops[cpu]->cpu_die(cpu);
> -#endif
> +	if (IS_ENABLED(CONFIG_HOTPLUG_CPU))
> +		__cpu_try_die(cpu);
>  
>  	/* just in case */
>  	cpu_park_loop();
> @@ -1044,8 +1065,9 @@ static bool have_cpu_die(void)
>  {
>  #ifdef CONFIG_HOTPLUG_CPU
>  	int any_cpu = raw_smp_processor_id();
> +	const struct cpu_operations *ops = get_cpu_ops(any_cpu);
>  
> -	if (cpu_ops[any_cpu] && cpu_ops[any_cpu]->cpu_die)
> +	if (ops && ops->cpu_die)
>  		return true;
>  #endif
>  	return false;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

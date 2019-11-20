Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C75103843
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onXOF7+sMWXQUK3kVkz0oiMwQtB+8qdvBmYiHg2DReg=; b=OHYgn/G7j1+kGI
	Z34tAZhsfw3jNTmrMk/0e1CAmkzv5WT8v8/tD1Tv9hBHA3V63FXXrke+Lyf8CgpRAz0EHQKdRewFj
	JAVcr/YCDX7waMZJpz6jZq+a+FY0Y9kRfv6Pmm8ca4B8uNOjr967EpXEt4TcCKnW9uK3ko2bEKn/H
	CCpWiI1duttWk7sdv3hrrPEI+NEB/nKnxN+TvaiNysfUVfRCupKPdlsP2JiJLBaW/v9dO0/KTq8Vi
	fmarikr+AeWTYqom8OwsZEKMclX/nZoDv6lX69hMm8Bg2RW3L/Yc9/FqVbd1XqNOftzz6xrXEHkWQ
	4dGmRRLgIrkDryGEj7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNrZ-0004li-Ch; Wed, 20 Nov 2019 11:09:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNrQ-0004kq-O6
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:09:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4AEDE31B;
 Wed, 20 Nov 2019 03:09:22 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F7273F6C4;
 Wed, 20 Nov 2019 03:09:21 -0800 (PST)
Date: Wed, 20 Nov 2019 11:09:11 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
Message-ID: <20191120110911.GA31600@bogus>
References: <20191120104212.14791-1-dietmar.eggemann@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120104212.14791-1-dietmar.eggemann@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_030924_875447_CB24B06D 
X-CRM114-Status: GOOD (  22.58  )
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
Cc: linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dietmar, Lukasz,

Thanks for digging this bug and fixing it.

On Wed, Nov 20, 2019 at 10:42:12AM +0000, Dietmar Eggemann wrote:
> Commit ca74b316df96 ("arm: Use common cpu_topology structure and
> functions.") changed cpu_coregroup_mask() from the ARM32 specific
> implementation in arch/arm/include/asm/topology.h to the one shared
> with ARM64 and RISCV in drivers/base/arch_topology.c.
>
> Currently on Arm32 (TC2 w/ CONFIG_SCHED_MC) the task scheduler setup
> code (w/ CONFIG_SCHED_DEBUG) shows this during CPU hotplug:
>
>   ERROR: groups don't span domain->span
>
> It happens to CPUs of the cluster of the CPU which gets hot-plugged
> out on scheduler domain MC.
>
> Turns out that the shared cpu_coregroup_mask() requires that the
> hot-plugged CPU is removed from the core_sibling mask via
> remove_cpu_topology(). Otherwise the 'is core_sibling subset of
> cpumask_of_node()' doesn't work. In this case the task scheduler has to
> deal with cpumask_of_node instead of core_sibling which is wrong on
> scheduler domain MC.
>
> e.g. CPU3 hot-plugged out on TC2 [cluster0: 0,3-4 cluster1: 1-2]:
>
>   cpu_coregroup_mask(): CPU3 cpumask_of_node=0-2,4 core_sibling=0,3-4
>                                                                   ^
> should be:
>
>   cpu_coregroup_mask(): CPU3 cpumask_of_node=0-2,4 core_sibling=0,4
>
> Add remove_cpu_topology() to __cpu_disable() to remove the CPU from the
> topology masks in case of a CPU hotplug out operation.
>
> At the same time tweak store_cpu_topology() slightly so it will call
> update_siblings_masks() in case of CPU hotplug in operation via
> secondary_start_kernel()->smp_store_cpu_info().
>
> This aligns the Arm32 implementation with the Arm64 one.
>
> Fixes: ca74b316df96 ("arm: Use common cpu_topology structure and functions")

Apart from the minor nit below,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

> Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
> ---
>  arch/arm/kernel/smp.c      |  2 ++
>  arch/arm/kernel/topology.c | 15 +++++++--------
>  2 files changed, 9 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
> index 4b0bab2607e4..139c0d98fa29 100644
> --- a/arch/arm/kernel/smp.c
> +++ b/arch/arm/kernel/smp.c
> @@ -240,6 +240,8 @@ int __cpu_disable(void)
>  	if (ret)
>  		return ret;
>
> +	remove_cpu_topology(cpu);
> +
>  	/*
>  	 * Take this CPU offline.  Once we clear this, we can't return,
>  	 * and we must not schedule until we're ready to give up the cpu.
> diff --git a/arch/arm/kernel/topology.c b/arch/arm/kernel/topology.c
> index 5b9faba03afb..b37b0a340991 100644
> --- a/arch/arm/kernel/topology.c
> +++ b/arch/arm/kernel/topology.c
> @@ -196,9 +196,8 @@ void store_cpu_topology(unsigned int cpuid)
>  	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
>  	unsigned int mpidr;
>
> -	/* If the cpu topology has been already set, just return */
> -	if (cpuid_topo->core_id != -1)
> -		return;
> +	if (cpuid_topo->package_id != -1)
> +		goto topology_populated;
>
>  	mpidr = read_cpuid_mpidr();
>
> @@ -231,14 +230,14 @@ void store_cpu_topology(unsigned int cpuid)
>  		cpuid_topo->package_id = -1;
>  	}
>
> -	update_siblings_masks(cpuid);
> -
>  	update_cpu_capacity(cpuid);
>
>  	pr_info("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
> -		cpuid, cpu_topology[cpuid].thread_id,
> -		cpu_topology[cpuid].core_id,
> -		cpu_topology[cpuid].package_id, mpidr);
> +		cpuid, cpuid_topo->thread_id, cpuid_topo->core_id,
> +		cpuid_topo->package_id, mpidr);
> +

[nit] The above is a clearly cosmetic cleanup and shouldn't be part of
this fix as they will be backported automatically. So I prefer to drop
this or make it separate patch if required.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

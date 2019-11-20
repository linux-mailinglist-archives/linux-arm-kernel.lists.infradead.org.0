Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BB9103872
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JrqUeiu7McAyFLt2176zuSuyE9jZT+1PEQM0gXd3Bi0=; b=IS5kE2JjNCq9vtFuNjCzhZoHD
	LvUYfpmuP5KAx4hgYrKM9gC/eQMbR54WPjRpJHlwWyiLDAvj4yw5IOjYSgK//v1Nz3da1RHMEtT6C
	CO47IHDabcp3OQFx28f5IGnTVOWpKU5AAO3BtVlGgv1LWUr6ZcpZtFzH3cMOHB2SczIOlx9rgO603
	XLZ+0udNrGalk8rV9HTFjVn+PiQCsVnM+w2KNzxYNc6atOAcq+gSAcbIppNTP66XFLRCKYydiW1yB
	kR/wgA0egx9Dnxi6QOvhpWl+q476W/4+HvthMEA7Jvk91xdWnk0HWSapQHjPK+KptsZZhnLltuCkm
	t1Ax4tr/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNyY-00018e-Gt; Wed, 20 Nov 2019 11:16:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNyO-00017a-U8
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:16:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3BB431B;
 Wed, 20 Nov 2019 03:16:34 -0800 (PST)
Received: from [10.1.28.170] (e123648.cambridge.arm.com [10.1.28.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C2023F6C4;
 Wed, 20 Nov 2019 03:16:32 -0800 (PST)
Subject: Re: [PATCH] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
To: Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Atish Patra <atish.patra@wdc.com>, Russell King <linux@armlinux.org.uk>
References: <20191120104212.14791-1-dietmar.eggemann@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <e912ce24-6941-ea3b-f84f-a5cf3881ba98@arm.com>
Date: Wed, 20 Nov 2019 11:16:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120104212.14791-1-dietmar.eggemann@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_031637_057823_285FA596 
X-CRM114-Status: GOOD (  23.24  )
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
Cc: linux-kernel@vger.kernel.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dietmar,

On 11/20/19 10:42 AM, Dietmar Eggemann wrote:
> Commit ca74b316df96 ("arm: Use common cpu_topology structure and
> functions.") changed cpu_coregroup_mask() from the ARM32 specific
> implementation in arch/arm/include/asm/topology.h to the one shared
> with ARM64 and RISCV in drivers/base/arch_topology.c.
> 
> Currently on Arm32 (TC2 w/ CONFIG_SCHED_MC) the task scheduler setup
> code (w/ CONFIG_SCHED_DEBUG) shows this during CPU hotplug:
> 
>    ERROR: groups don't span domain->span
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
>    cpu_coregroup_mask(): CPU3 cpumask_of_node=0-2,4 core_sibling=0,3-4
>                                                                    ^
> should be:
> 
>    cpu_coregroup_mask(): CPU3 cpumask_of_node=0-2,4 core_sibling=0,4
> 
> Add remove_cpu_topology() to __cpu_disable() to remove the CPU from the
> topology masks in case of a CPU hotplug out operation.
> 
> At the same time tweak store_cpu_topology() slightly so it will call
> update_siblings_masks() in case of CPU hotplug in operation via
> secondary_start_kernel()->smp_store_cpu_info().
> 
> This aligns the Arm32 implementation with the Arm64 one.

Looks good to me.

Tested-and-Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>

> 
> Fixes: ca74b316df96 ("arm: Use common cpu_topology structure and functions")
> Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
> ---
>   arch/arm/kernel/smp.c      |  2 ++
>   arch/arm/kernel/topology.c | 15 +++++++--------
>   2 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
> index 4b0bab2607e4..139c0d98fa29 100644
> --- a/arch/arm/kernel/smp.c
> +++ b/arch/arm/kernel/smp.c
> @@ -240,6 +240,8 @@ int __cpu_disable(void)
>   	if (ret)
>   		return ret;
>   
> +	remove_cpu_topology(cpu);
> +
>   	/*
>   	 * Take this CPU offline.  Once we clear this, we can't return,
>   	 * and we must not schedule until we're ready to give up the cpu.
> diff --git a/arch/arm/kernel/topology.c b/arch/arm/kernel/topology.c
> index 5b9faba03afb..b37b0a340991 100644
> --- a/arch/arm/kernel/topology.c
> +++ b/arch/arm/kernel/topology.c
> @@ -196,9 +196,8 @@ void store_cpu_topology(unsigned int cpuid)
>   	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
>   	unsigned int mpidr;
>   
> -	/* If the cpu topology has been already set, just return */
> -	if (cpuid_topo->core_id != -1)
> -		return;
> +	if (cpuid_topo->package_id != -1)
> +		goto topology_populated;
>   
>   	mpidr = read_cpuid_mpidr();
>   
> @@ -231,14 +230,14 @@ void store_cpu_topology(unsigned int cpuid)
>   		cpuid_topo->package_id = -1;
>   	}
>   
> -	update_siblings_masks(cpuid);
> -
>   	update_cpu_capacity(cpuid);
>   
>   	pr_info("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
> -		cpuid, cpu_topology[cpuid].thread_id,
> -		cpu_topology[cpuid].core_id,
> -		cpu_topology[cpuid].package_id, mpidr);
> +		cpuid, cpuid_topo->thread_id, cpuid_topo->core_id,
> +		cpuid_topo->package_id, mpidr);
> +
> +topology_populated:
> +	update_siblings_masks(cpuid);
>   }
>   
>   static inline int cpu_corepower_flags(void)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

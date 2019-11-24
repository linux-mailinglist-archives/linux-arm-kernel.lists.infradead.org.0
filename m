Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A043F108524
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 22:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CA1uDv8NDMoM4PnG4jMcZ6VD+8/0IqYgtUpk1c5+pdQ=; b=owiA7YU2W0TXjj
	U4SmCYYNUAzasyqBvAEOZSjH1e47Tk3510gK2gUK4vVgIFMSs5o6IJGTX2yRAa1Wz7A4TQNEcAjnF
	mF1Up1PZ5NVOCOQ7GJXnKGb2pqb0ZQas8jgeh7ITEUZWvkE4JDlO1geaa1HimRQkevlZzRhwQiwRa
	99FHWD8lDtrljcFOHqFKZF2sFMF8kDm6GtUyrYFa8rxEcEnyQb90GMhShl03ozPj4pKjf1P7QaFpY
	QohpNpfN+nlkh+xJC+QR+VXXE0653rmNT6TfpBcg45kTQLV/it3VVXcLX+KPlJoniiXqgJwqrRx/s
	jd5bHaGscKlfIybvsXvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYzjk-0007iH-Ci; Sun, 24 Nov 2019 21:48:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYzjb-0007hP-Gb
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 21:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574632074; bh=IZEcZzNojMW/keCmXCxQjtc5wyYGsTDFt5MlSAapC9Y=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=GfglRue7uwETC5CEbDlnWahlk/AUN4eTE7nLtpf0IuOh33AfEKARxnkypN0af2yIj
 Re7qhtsBfEv/Zc2myJau1cflWVw8vp3Ary4XdGFRyaGTgWimQyiW2rcCPpg1aGxRSV
 6b+33oHdlmZbliFx/iQ4TceQrVS16J/7J2z1/PWc=
Date: Sun, 24 Nov 2019 22:47:53 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
Message-ID: <20191124214753.m6lwcdemnddltctw@core.my.home>
Mail-Followup-To: Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Atish Patra <atish.patra@wdc.com>,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20191120104212.14791-1-dietmar.eggemann@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120104212.14791-1-dietmar.eggemann@arm.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_134759_877971_6BF48CEA 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

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
> Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>

This fixes CPU hotplug and correspondent suspend to ram/resume failures (that
disables and re-enables non-boot CPUs) on A83T SoC, that I've seen since
5.4-rc1.

Tested-by: Ondrej Jirman <megous@megous.com>

thanks,
	o.

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
> +topology_populated:
> +	update_siblings_masks(cpuid);
>  }
>  
>  static inline int cpu_corepower_flags(void)
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

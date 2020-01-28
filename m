Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C1814BEAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:36:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxqkZxTSAp9HD8Hl92YMcHrZ+i76kmH7HpV8BeEwCl8=; b=fyimXKJYvXXyhq
	4ZjpJZkjm2FCxpB7IdVNN0GwQU8GefM7vEB9nINVKaE+ofwIukX5+KEhkk3XxGlXKBeoExOj4ciDv
	0LuQg1RN0UL0DDdHlr9JjoxtwJH5lkUsBehozvZzsssAkBjmF7apMAMWS4P02S5/PrmyIuHd/dslu
	My6+GIPMlmIpL2JqNWvFotJUxclYD3WeWg6qSmeZl/l4IWp2VOGGwbheu+uBBe4TUhfAjb4V0UD85
	nwJ/PtJFOx/19eEbqDYNg7tAFWZ2JSwypFp5EgvkrAC9Rmwmg+wdcI/613pwS06YTxaLMkuihCaop
	tCiY/pWBhKQ9Nvzulslw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUmn-0006VT-Rh; Tue, 28 Jan 2020 17:36:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUmd-0006UQ-SQ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 17:36:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DCFF328;
 Tue, 28 Jan 2020 09:36:15 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10B243F52E;
 Tue, 28 Jan 2020 09:36:14 -0800 (PST)
Date: Tue, 28 Jan 2020 17:36:13 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200128173613.GB16417@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
 <0ca05a2d-918b-0c70-6dc6-ef1f5f58f388@arm.com>
 <20200123170716.GA28719@arm.com>
 <bddfdb83-c6cb-a809-8781-80e1117a2d6c@arm.com>
 <20200124131134.GA15164@arm.com>
 <d541c4ae-8419-0204-f399-7f0f0a18eb38@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d541c4ae-8419-0204-f399-7f0f0a18eb38@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_093616_006803_374D29CD 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukasz,

On Friday 24 Jan 2020 at 15:17:48 (+0000), Lukasz Luba wrote:
[..]
> > >   static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
> > >   {
> > > +	u64 core_cnt, const_cnt;
> > > +
> > >   	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
> > >   		pr_info("detected CPU%d: Activity Monitors Unit (AMU)\n",
> > >   			smp_processor_id());
> > > -		this_cpu_write(amu_feat, 1);
> > > +		core_cnt = read_sysreg_s(SYS_AMEVCNTR0_CORE_EL0);
> > > +		const_cnt = read_sysreg_s(SYS_AMEVCNTR0_CONST_EL0);
> > > +
> > > +		this_cpu_write(arch_core_cycles_prev, core_cnt);
> > > +		this_cpu_write(arch_const_cycles_prev, const_cnt);
> > > +
> > > +		this_cpu_write(amu_scale_freq, 1);
> > > +	} else {
> > > +		this_cpu_write(amu_scale_freq, 2);
> > >   	}
> > >   }
> > 
> > 
> > Yes, functionally this can be done here (it would need some extra checks
> > on the initial values of core_cnt and const_cnt), but what I was saying
> > in my previous comment is that I don't want to mix generic feature
> > detection, which should happen here, with counter validation for
> > frequency invariance. As you see, this would already bring here per-cpu
> > variables for counters and amu_scale_freq flag, and I only see this
> > getting more messy with the future use of more counters. I don't believe
> > this code belongs here.
> > 
> > Looking a bit more over the code and checking against the new frequency
> > invariance code for x86, there is a case of either doing this CPU
> > validation in smp_prepare_cpus (separately for arm64 and x86) or calling
> > an arch_init_freq_invariance() maybe in sched_init_smp to be defined with
> > the proper frequency invariance counter initialisation code separately
> > for x86 and arm64. I'll have to look more over the details to make sure
> > this is feasible.
> 
> I have found that we could simply draw on from Mark's solution to
> similar problem. In commit:
> 
> commit df857416a13734ed9356f6e4f0152d55e4fb748a
> Author: Mark Rutland <mark.rutland@arm.com>
> Date:   Wed Jul 16 16:32:44 2014 +0100
> 
>     arm64: cpuinfo: record cpu system register values
> 
>     Several kernel subsystems need to know details about CPU system register
>     values, sometimes for CPUs other than that they are executing on. Rather
>     than hard-coding system register accesses and cross-calls for these
>     cases, this patch adds logic to record various system register values at
>     boot-time. This may be used for feature reporting, firmware bug
>     detection, etc.
> 
>     Separate hooks are added for the boot and hotplug paths to enable
>     one-time intialisation and cold/warm boot value mismatch detection in
>     later patches.
> 
>     Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>     Reviewed-by: Will Deacon <will.deacon@arm.com>
>     Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
>     Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> 
> He added cpuinfo_store_cpu() call in secondary_start_kernel()
> [in arm64 smp.c]. Please check the file:
> arch/arm64/kernel/cpuinfo.c
> 
> We can probably add our read-amu-regs-and-setup-invariance call
> just below his cpuinfo_store_cpu.
> 
> Then the arm64 cpufeature.c would be clean, we will be called for
> each cpu, late_initcal() will finish setup with edge case policy
> check like in the init_amu_feature() code below.
> 

Yes, this should work: calling a AMU per_cpu validation function in
setup_processor for the boot CPU and in secondary_start_kernel for
secondary and hotplugged CPUs.

I would still like to bring this closer to the scheduler
(sched_init_smp) as frequency invariance is a functionality needed by
the scheduler and its initialisation should be part of scheduler init
code. But this together with needed interfaces for other architectures
can be done in a separate patchset that is not so AMU/arm64 specific.

[..]
> > 
> > Yes, with the design I mentioned above, this CPU policy validation could
> > move to a late_initcall and I could drop the workqueues and the extra
> > data structure. Thanks for this!
> > 
> > Let me know what you think!
> > 
> 
> One think is still open, the file drivers/base/arch_topology.c and
> #ifdef in function arch_set_freq_scale().
> 
> Generally, if there is such need, it's better to put such stuff into the
> header and make dual implementation not polluting generic code with:
> #if defined(CONFIG_ARM64_XZY)
> #endif
> #if defined(CONFIG_POWERPC_ABC)
> #endif
> #if defined(CONFIG_x86_QAZ)
> #endif
> ...
> 
> 
> In our case we would need i.e. linux/topology.h because it includes
> asm/topology.h, which might provide a needed symbol. At the end of
> linux/topology.h we can have:
> 
> #ifndef arch_cpu_auto_scaling
> static __always_inline
> bool arch_cpu_auto_scaling(void) { return False; }
> #endif
> 
> Then, when the symbol was missing and we got the default one,
> it should be easily optimized by the compiler.
> 
> We could have a much cleaner function arch_set_freq_scale()
> in drivers/base/ and all architecture will deal with specific
> #ifdef CONFIG in their <asm/topology.h> implementations or
> use default.
> 
> Example:
> arch_set_freq_scale()
> {
> 	unsigned long scale;
> 	int i;
> 	
> 	if (arch_cpu_auto_scaling(cpu))
> 		return;
> 
> 	scale = (cur_freq << SCHED_CAPACITY_SHIFT) / max_freq;
> 	for_each_cpu(i, cpus)
> 		per_cpu(freq_scale, i) = scale;
> }
> 
> Regards,
> Lukasz
>

Okay, it does look nice and clean. Let me give this a try in v3.

Thank you very much,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

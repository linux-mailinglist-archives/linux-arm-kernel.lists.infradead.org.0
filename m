Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F3F14BE18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:53:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbGhX9tnkMGKzBKJmC4P0227ihNBqahA4SFbBUZySgE=; b=p2eH7eBCDqiKUk
	FzriJQeUzHb1BTdf8grLkobztEvijk3u4K2/NIuuFWF5Pipfakp284YXOX1+rhPBvAFOHNx3Tet/W
	y3rZhn+Xc9TrTxipf3ygZTAKFinL4D8pxdyewb8ntwA6mnSg9O90T36mqKyA+t4sdEm0Z3jDyGMBR
	wCFaSRSe2GGP2jQhl5dRT3FeDH1pErzeB4nKiU07xEk3ry20e7tvtzIQER18ep+iTpS5Snzd8Ge0a
	MxtbjJN/e/FT/P0md44jj4t82u5/jtwUhugqxbDImWxrzpy05eKCohLiu1oaYJxCoCUwyVtQHJ/Y+
	ezr5MXwv/NLqA81/pAsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwU7a-0003Xi-4v; Tue, 28 Jan 2020 16:53:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwU7O-0003Tc-58
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 16:53:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E615A328;
 Tue, 28 Jan 2020 08:53:36 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8709A3F52E;
 Tue, 28 Jan 2020 08:53:36 -0800 (PST)
Date: Tue, 28 Jan 2020 16:53:35 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 4/6] Documentation: arm64: document support for the
 AMU extension
Message-ID: <20200128165325.GA16417@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-5-ionela.voinescu@arm.com>
 <b63b6f10-22c8-79be-cc97-08484874bd62@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b63b6f10-22c8-79be-cc97-08484874bd62@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_085338_289078_01E479AA 
X-CRM114-Status: GOOD (  34.23  )
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
 sudeep.holla@arm.com, Jonathan Corbet <corbet@lwn.net>, will@kernel.org,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 27 Jan 2020 at 16:47:29 (+0000), Valentin Schneider wrote:
> On 18/12/2019 18:26, Ionela Voinescu wrote:
> > +Basic support
> > +-------------
> > +
> > +The kernel can safely run a mix of CPUs with and without support for the
> > +activity monitors extension. Therefore, when CONFIG_ARM64_AMU_EXTN is
> > +selected we unconditionally enable the capability to allow any late CPU
> > +(secondary or hotplugged) to detect and use the feature.
> > +
> > +When the feature is detected on a CPU, a per-CPU variable (amu_feat) is
> > +set, but this does not guarantee the correct functionality of the
> > +counters, only the presence of the extension.
> > +
> > +Firmware (code running at higher exception levels, e.g. arm-tf) support is
> > +needed to:
> > + - Enable access for lower exception levels (EL2 and EL1) to the AMU
> > +   registers.
> > + - Enable the counters. If not enabled these will read as 0.
> 
> Just to make sure I understand - if AMUs are physically present but not
> enabled by FW, we'll still
> - see them as implemented in ID_AA64PFR0_EL1.AMU

Yes, this feature register only shows the physical presence on the unit
in hardware.

> - see some counters as available with e.g. AMCGCR_ELO.CG0NC > 0
> 

Yes, the same as above, this only shows their physical presence. For
AMUv1 - AMCGCR_ELO.CG0NC: the value of this field is set to 4.
AMCGCR_ELO.CG1NC will show the number of auxiliary counters implemented
in hardware.

> But reading some AMEVCNTR<g><n> will return 0?

Or you won't be able to access them at all. Lacking firmware support
accesses to AMU registers could be trapped in EL3. If access for EL1 and
EL2 is enabled from EL3, it's still possible that the counters
themselves are not enabled - that means they are not enabled to count
the events they are designed to be counting. That's why in this case the
event counter register could read 0.

But if we read 0, it does not necessarily mean that the counter is
disabled. It could also mean that the events is meant to count did not
happen yet.

> 
> > + - Save/restore the counters before/after the CPU is being put/brought up
> > +   from the 'off' power state.
> > +
> > +When using kernels that have this configuration enabled but boot with
> > +broken firmware the user may experience panics or lockups when accessing
> > +the counter registers.
> 
> Yikes
> 
> > Even if these symptoms are not observed, the
> > +values returned by the register reads might not correctly reflect reality.
> > +Most commonly, the counters will read as 0, indicating that they are not
> > +enabled. If proper support is not provided in firmware it's best to disable
> > +CONFIG_ARM64_AMU_EXTN.
> > +
> 
> I haven't seen something that would try to catch this on the kernel side.
> Can we try to detect that (e.g. at least one counter returns > 0) in
> cpu_amu_enable() and thus not write to the CPU-local 'amu_feat'?
> 

I'm reluctant to do this especially given that platforms might choose to
keep some counters disabled while enabling some counters that might not
have counted any events by the time we reach cpu_enable. We would end up
mistakenly disabling the feature. I would rather leave the validation of
the counters to be done at the location and for the purpose of their
use: see patch 6/6 - the use of counters for frequency invariance.

> While we're on the topic of detecting broken stuff, what if some CPUs
> implement some auxiliary counters that some others don't?
> 

I think it should be up to the user of that counter to decide if the
usecase is at CPU level or system level. My intention of this base
support was to keep it simple and allow users of some counters to
decide on their own how to validate and make use of either architected
or auxiliary counters.

For example, in the case of frequency invariance, given a platform that
does not support cpufreq based invariance, I would validate all CPUs for
the use of AMU core and constant counters. If it happens that some CPUs
do not support those counters or they are not enabled, we'd have to
disable frequency invariance at system level.

For some other scenarios only partial support is needed - only a subset
of CPUs need to support the counters for their use to be feasible.

But I believe only the user of the counters can decide, whether this is
happening in architecture code, driver code, generic code.

> > +The fixed counters of AMUv1 are accessible though the following system
> > +register definitions:
> > + - SYS_AMEVCNTR0_CORE_EL0
> > + - SYS_AMEVCNTR0_CONST_EL0
> > + - SYS_AMEVCNTR0_INST_RET_EL0
> > + - SYS_AMEVCNTR0_MEM_STALL_EL0
> > +
> > +Auxiliary platform specific counters can be accessed using
> > +SYS_AMEVCNTR1_EL0(n), where n is a value between 0 and 15.
> > +
> > +Details can be found in: arch/arm64/include/asm/sysreg.h.
> > +
> > diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
> > index 5d78a6f5b0ae..a3f1a47b6f1c 100644
> > --- a/Documentation/arm64/booting.rst
> > +++ b/Documentation/arm64/booting.rst
> > @@ -248,6 +248,20 @@ Before jumping into the kernel, the following conditions must be met:
> >      - HCR_EL2.APK (bit 40) must be initialised to 0b1
> >      - HCR_EL2.API (bit 41) must be initialised to 0b1
> >  
> > +  For CPUs with Activity Monitors Unit v1 (AMUv1) extension present:
> > +  - If EL3 is present:
> > +    CPTR_EL3.TAM (bit 30) must be initialised to 0b0
> > +    CPTR_EL2.TAM (bit 30) must be initialised to 0b0
> > +    AMCNTENSET0_EL0 must be initialised to 0b1111
> 
> Nit: Or be a superset of the above, right? AIUI v1 only mandates the lower
> 4 bits to be set. Probably doesn't matter that much...
> 

Right! This is more of a guideline: it can be a subset as well, if
platforms don't want some counters enabled. It can set the lower 4 bits
for enablement of all 4 architecture counters for v1, or more for future
versions with more architected counters.

Thanks,
Ionela.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E45712A0FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGMKAC2p1la6rlaR+8tvvMNuu3/J7ssD7r3kPFO/dFI=; b=o/u5NxYDN2qJKY
	Rag0uwPGGzLbroH0P508s0Te96Ivy2CV0X98wyftdnKsgYGCvWoqIoCd1AbWexJg8IY2Acdf/aFlW
	6qAMZKvGfAHyD7ryzgzMEOeodP3FwK2lLQUtLWEW2v9DvoeWKVI+ZUoIqeDlUHknHNTaeGR/dkvj0
	tlNpQDC3WAV2X/GuLPM26cBjLAmoxJ6IDKPb3dczARVqo1odg3ydQashwhCoSqOxr0rMZIqmeNfLx
	uJ8z3p9BYSPeLw2uouraq0JkV3bVooukrfYyzxb8q6M+B7ldWw+x0Ex1B8eCwee5+DG5sSAuhclLT
	75+4tKO5r+CItjURi1gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijisu-0005Vd-FM; Tue, 24 Dec 2019 12:01:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijisj-0005Uq-J7
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:01:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A6A61FB;
 Tue, 24 Dec 2019 04:01:43 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92BDB3F534;
 Tue, 24 Dec 2019 04:01:42 -0800 (PST)
Date: Tue, 24 Dec 2019 12:01:40 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 03/18] arm64: KVM: define SPE data structure for each
 vcpu
Message-ID: <20191224120140.GH42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-4-andrew.murray@arm.com>
 <20191221131936.21fa2dfa@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191221131936.21fa2dfa@why>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_040145_718766_07B50779 
X-CRM114-Status: GOOD (  27.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 21, 2019 at 01:19:36PM +0000, Marc Zyngier wrote:
> On Fri, 20 Dec 2019 14:30:10 +0000
> Andrew Murray <andrew.murray@arm.com> wrote:
> 
> > From: Sudeep Holla <sudeep.holla@arm.com>
> > 
> > In order to support virtual SPE for guest, so define some basic structs.
> > This features depends on host having hardware with SPE support.
> > 
> > Since we can support this only on ARM64, add a separate config symbol
> > for the same.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > [ Add irq_level, rename irq to irq_num for kvm_spe ]
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  arch/arm64/include/asm/kvm_host.h |  2 ++
> >  arch/arm64/kvm/Kconfig            |  7 +++++++
> >  include/kvm/arm_spe.h             | 19 +++++++++++++++++++
> >  3 files changed, 28 insertions(+)
> >  create mode 100644 include/kvm/arm_spe.h
> > 
> > diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> > index c61260cf63c5..f5dcff912645 100644
> > --- a/arch/arm64/include/asm/kvm_host.h
> > +++ b/arch/arm64/include/asm/kvm_host.h
> > @@ -35,6 +35,7 @@
> >  #include <kvm/arm_vgic.h>
> >  #include <kvm/arm_arch_timer.h>
> >  #include <kvm/arm_pmu.h>
> > +#include <kvm/arm_spe.h>
> >  
> >  #define KVM_MAX_VCPUS VGIC_V3_MAX_CPUS
> >  
> > @@ -302,6 +303,7 @@ struct kvm_vcpu_arch {
> >  	struct vgic_cpu vgic_cpu;
> >  	struct arch_timer_cpu timer_cpu;
> >  	struct kvm_pmu pmu;
> > +	struct kvm_spe spe;
> >  
> >  	/*
> >  	 * Anything that is not used directly from assembly code goes
> > diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
> > index a475c68cbfec..af5be2c57dcb 100644
> > --- a/arch/arm64/kvm/Kconfig
> > +++ b/arch/arm64/kvm/Kconfig
> > @@ -35,6 +35,7 @@ config KVM
> >  	select HAVE_KVM_EVENTFD
> >  	select HAVE_KVM_IRQFD
> >  	select KVM_ARM_PMU if HW_PERF_EVENTS
> > +	select KVM_ARM_SPE if (HW_PERF_EVENTS && ARM_SPE_PMU)
> >  	select HAVE_KVM_MSI
> >  	select HAVE_KVM_IRQCHIP
> >  	select HAVE_KVM_IRQ_ROUTING
> > @@ -61,6 +62,12 @@ config KVM_ARM_PMU
> >  	  Adds support for a virtual Performance Monitoring Unit (PMU) in
> >  	  virtual machines.
> >  
> > +config KVM_ARM_SPE
> > +	bool
> > +	---help---
> > +	  Adds support for a virtual Statistical Profiling Extension(SPE) in
> > +	  virtual machines.
> > +
> >  config KVM_INDIRECT_VECTORS
> >         def_bool KVM && (HARDEN_BRANCH_PREDICTOR || HARDEN_EL2_VECTORS)
> >  
> > diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
> > new file mode 100644
> > index 000000000000..48d118fdb174
> > --- /dev/null
> > +++ b/include/kvm/arm_spe.h
> > @@ -0,0 +1,19 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 ARM Ltd.
> > + */
> > +
> > +#ifndef __ASM_ARM_KVM_SPE_H
> > +#define __ASM_ARM_KVM_SPE_H
> > +
> > +#include <uapi/linux/kvm.h>
> > +#include <linux/kvm_host.h>
> 
> I don't believe these are required at this stage.
> 
> > +
> > +struct kvm_spe {
> > +	int irq_num;
> 
> 'irq' was the right name *if* this represents a Linux irq. If this
> instead represents a guest PPI, then it should be named 'intid'.
> 
> In either case, please document what this represents.
> 
> > +	bool ready; /* indicates that SPE KVM instance is ready for use */
> > +	bool created; /* SPE KVM instance is created, may not be ready yet */
> > +	bool irq_level;
> 
> What does this represent? The state of the interrupt on the host? The
> guest? Something else? Also, please consider grouping related fields
> together.

It should be the state of the interrupt on the guest.

> 
> > +};
> 
> If you've added a config option that controls the selection of the SPE
> feature, why doesn't this result in an empty structure when it isn't
> selected?

OK, all noted.

Andrew Murray

> 
> > +
> > +#endif /* __ASM_ARM_KVM_SPE_H */
> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E646C12A15C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyvqi0bxWITOCHA5U7CK66WzXUIU5Q22OVUwOs+Bp5s=; b=Uddl+rbCFC+syc
	hBUsqHUl4gasKrojcJoLWTsEVO9b28Y3aeUOwb7oDwyP4LIjtfe4hQrGiVkZETZZ+AAJsxygbk2z2
	kKxtDj6m7/y82gFULDtp+QhT+k/fg2Ces6aGgj7q4YTPbkbSuqGmagV2ASe1+XAdCcq/MJyU7bQ5n
	CQS4bg6B4Qs3FAb7CfgcSwVj7/Ky1AHwasbX6ELTUSH49NesYw4hRmByITjnxiMIH3pMzn+KFQp/e
	UKpN1F0fErrqkWmGLzrMNY9zdFEyelY/ZPnzPOCueH+VdjhtBPJ2htGrc10QixOcM4A6dPMKY5N5+
	gLzJu8R3WWxZCAoE3DAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijjQ0-0002SY-VG; Tue, 24 Dec 2019 12:36:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijjPq-0002S6-Dg
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:35:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C6A51FB;
 Tue, 24 Dec 2019 04:35:57 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7BE13F534;
 Tue, 24 Dec 2019 04:35:56 -0800 (PST)
Date: Tue, 24 Dec 2019 12:35:55 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 13/18] perf: arm_spe: Add KVM structure for obtaining
 IRQ info
Message-ID: <20191224123554.GK42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-14-andrew.murray@arm.com>
 <868sn4iowy.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <868sn4iowy.wl-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_043558_549135_D90FD229 
X-CRM114-Status: GOOD (  24.50  )
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
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 22, 2019 at 11:24:13AM +0000, Marc Zyngier wrote:
> On Fri, 20 Dec 2019 14:30:20 +0000,
> Andrew Murray <andrew.murray@arm.com> wrote:
> > 
> > KVM requires knowledge of the physical SPE IRQ number such that it can
> > associate it with any virtual IRQ for guests that require SPE emulation.
> 
> This is at best extremely odd. The only reason for KVM to obtain this
> IRQ number is if it has exclusive access to the device.  This
> obviously isn't the case, as this device is shared between host and
> guest.

This was an attempt to set the interrupt as active such that host SPE driver
doesn't get spurious interrupts due to guest SPE activity. Though let's save
the discussion to patch 14.


> 
> > Let's create a structure to hold this information and an accessor that
> > KVM can use to retrieve this information.
> > 
> > We expect that each SPE device will have the same physical PPI number
> > and thus will warn when this is not the case.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  drivers/perf/arm_spe_pmu.c | 23 +++++++++++++++++++++++
> >  include/kvm/arm_spe.h      |  6 ++++++
> >  2 files changed, 29 insertions(+)
> > 
> > diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
> > index 4e4984a55cd1..2d24af4cfcab 100644
> > --- a/drivers/perf/arm_spe_pmu.c
> > +++ b/drivers/perf/arm_spe_pmu.c
> > @@ -34,6 +34,9 @@
> >  #include <linux/smp.h>
> >  #include <linux/vmalloc.h>
> >  
> > +#include <linux/kvm_host.h>
> > +#include <kvm/arm_spe.h>
> > +
> >  #include <asm/barrier.h>
> >  #include <asm/cpufeature.h>
> >  #include <asm/mmu.h>
> > @@ -1127,6 +1130,24 @@ static void arm_spe_pmu_dev_teardown(struct arm_spe_pmu *spe_pmu)
> >  	free_percpu_irq(spe_pmu->irq, spe_pmu->handle);
> >  }
> >  
> > +#ifdef CONFIG_KVM_ARM_SPE
> > +static struct arm_spe_kvm_info arm_spe_kvm_info;
> > +
> > +struct arm_spe_kvm_info *arm_spe_get_kvm_info(void)
> > +{
> > +	return &arm_spe_kvm_info;
> > +}
> 
> How does this work when SPE is built as a module?
> 
> > +
> > +static void arm_spe_populate_kvm_info(struct arm_spe_pmu *spe_pmu)
> > +{
> > +	WARN_ON_ONCE(arm_spe_kvm_info.physical_irq != 0 &&
> > +		     arm_spe_kvm_info.physical_irq != spe_pmu->irq);
> > +	arm_spe_kvm_info.physical_irq = spe_pmu->irq;
> 
> What does 'physical' means here? It's an IRQ in the Linux sense, so
> it's already some random number that bears no relation to anything
> 'physical'.

It's some random number relating to the SPE device as opposed to the virtual
SPE device.

Thanks,

Andrew Murray

> 
> > +}
> > +#else
> > +static void arm_spe_populate_kvm_info(struct arm_spe_pmu *spe_pmu) {}
> > +#endif
> > +
> >  /* Driver and device probing */
> >  static int arm_spe_pmu_irq_probe(struct arm_spe_pmu *spe_pmu)
> >  {
> > @@ -1149,6 +1170,8 @@ static int arm_spe_pmu_irq_probe(struct arm_spe_pmu *spe_pmu)
> >  	}
> >  
> >  	spe_pmu->irq = irq;
> > +	arm_spe_populate_kvm_info(spe_pmu);
> > +
> >  	return 0;
> >  }
> >  
> > diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
> > index d1f3c564dfd0..9c65130d726d 100644
> > --- a/include/kvm/arm_spe.h
> > +++ b/include/kvm/arm_spe.h
> > @@ -17,6 +17,12 @@ struct kvm_spe {
> >  	bool irq_level;
> >  };
> >  
> > +struct arm_spe_kvm_info {
> > +	int physical_irq;
> > +};
> > +
> > +struct arm_spe_kvm_info *arm_spe_get_kvm_info(void);
> > +
> >  #ifdef CONFIG_KVM_ARM_SPE
> >  #define kvm_arm_spe_v1_ready(v)		((v)->arch.spe.ready)
> >  #define kvm_arm_spe_irq_initialized(v)		\
> 
> 	M.
> 
> -- 
> Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75629F19CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:20:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIqGLKwxJIkCf97eBDalAz3pYqnTX6SlDIPTIZJzLGY=; b=R+uoXwhkmS86FK
	dbr0r7IyTXdH9SHFGfy9EjSswkKo6DXsFALuq8Ryut71RxO/DbYi+R4YpgLUF094odhhqa9BIhhVM
	iGTXHRh23e7e1jd13XbrdVu1MSlpd26MUGcT/nbpdGqwRk05tAfHjIv8rWhtVxllpVJRy3wYEyO7G
	Ua/b4ramamw+ZmwDpbcan383pByUJkEActiWpqRQIyoOwbw+KOygpPm2U4KRpNbZn48Xjbhz9zpm+
	Wlr+Aoj0l25haMntF/f51egEt50q9kf6q8C1SX0ludapIeZMTq0we92hvie6YAXi9j8cVKagtSdTE
	F2zfBZw1Jv9AQJc59/GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSN76-00009n-6D; Wed, 06 Nov 2019 15:20:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSN6x-000090-82
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:20:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 24FB646A;
 Wed,  6 Nov 2019 07:20:40 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB1603F71A;
 Wed,  6 Nov 2019 07:20:39 -0800 (PST)
Date: Wed, 6 Nov 2019 16:20:38 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH v2] KVM: arm64: Don't set HCR_EL2.TVM when S2FWB is
 supported
Message-ID: <20191106152038.GA30659@e113682-lin.lund.arm.com>
References: <20191028130541.30536-1-christoffer.dall@arm.com>
 <7d3a2fe0-1bf3-0fee-deb6-fa6e0940586a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d3a2fe0-1bf3-0fee-deb6-fa6e0940586a@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_072043_384978_99F6C6D7 
X-CRM114-Status: GOOD (  38.55  )
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandru,

On Wed, Nov 06, 2019 at 01:02:21PM +0000, Alexandru Elisei wrote:
> 
> On 10/28/19 1:05 PM, Christoffer Dall wrote:
> > On CPUs that support S2FWB (Armv8.4+), KVM configures the stage 2 page
> > tables to override the memory attributes of memory accesses, regardless
> > of the stage 1 page table configurations, and also when the stage 1 MMU
> > is turned off.  This results in all memory accesses to RAM being
> > cacheable, including during early boot of the guest.
> >
> > On CPUs without this feature, memory accesses were non-cacheable during
> > boot until the guest turned on the stage 1 MMU, and we had to detect
> > when the guest turned on the MMU, such that we could invalidate all cache
> > entries and ensure a consistent view of memory with the MMU turned on.
> > When the guest turned on the caches, we would call stage2_flush_vm()
> > from kvm_toggle_cache().
> >
> > However, stage2_flush_vm() walks all the stage 2 tables, and calls
> > __kvm_flush-dcache_pte, which on a system with S2FWD does ... absolutely
> > nothing.
> >
> > We can avoid that whole song and dance, and simply not set TVM when
> > creating a VM on a system that has S2FWB.
> >
> > Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > ---
> > I was only able to test this on the model with cache modeling enabled,
> > but even removing TVM from HCR_EL2 without having FWB also worked with
> > that setup, so the testing of this has been light.  It seems like it
> > should obviously work, but it would be good if someone with access to
> > appropriate hardware could give this a spin.
> >
> >  arch/arm64/include/asm/kvm_arm.h     |  3 +--
> >  arch/arm64/include/asm/kvm_emulate.h | 12 +++++++++++-
> >  2 files changed, 12 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
> > index ddf9d762ac62..6e5d839f42b5 100644
> > --- a/arch/arm64/include/asm/kvm_arm.h
> > +++ b/arch/arm64/include/asm/kvm_arm.h
> > @@ -61,7 +61,6 @@
> >   * RW:		64bit by default, can be overridden for 32bit VMs
> >   * TAC:		Trap ACTLR
> >   * TSC:		Trap SMC
> > - * TVM:		Trap VM ops (until M+C set in SCTLR_EL1)
> >   * TSW:		Trap cache operations by set/way
> >   * TWE:		Trap WFE
> >   * TWI:		Trap WFI
> > @@ -74,7 +73,7 @@
> >   * SWIO:	Turn set/way invalidates into set/way clean+invalidate
> >   */
> >  #define HCR_GUEST_FLAGS (HCR_TSC | HCR_TSW | HCR_TWE | HCR_TWI | HCR_VM | \
> > -			 HCR_TVM | HCR_BSU_IS | HCR_FB | HCR_TAC | \
> > +			 HCR_BSU_IS | HCR_FB | HCR_TAC | \
> >  			 HCR_AMO | HCR_SWIO | HCR_TIDCP | HCR_RW | HCR_TLOR | \
> >  			 HCR_FMO | HCR_IMO)
> >  #define HCR_VIRT_EXCP_MASK (HCR_VSE | HCR_VI | HCR_VF)
> > diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> > index d69c1efc63e7..70509799a2a9 100644
> > --- a/arch/arm64/include/asm/kvm_emulate.h
> > +++ b/arch/arm64/include/asm/kvm_emulate.h
> > @@ -53,8 +53,18 @@ static inline void vcpu_reset_hcr(struct kvm_vcpu *vcpu)
> >  		/* trap error record accesses */
> >  		vcpu->arch.hcr_el2 |= HCR_TERR;
> >  	}
> > -	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
> > +
> > +	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB)) {
> >  		vcpu->arch.hcr_el2 |= HCR_FWB;
> > +	} else {
> > +		/*
> > +		 * For non-FWB CPUs, we trap VM ops (HCR_EL2.TVM) until M+C
> > +		 * get set in SCTLR_EL1 such that we can detect when the guest
> > +		 * MMU gets turned off and do the necessary cache maintenance
> > +		 * then.
> > +		 */
> > +		vcpu->arch.hcr_el2 &= ~HCR_TVM;
> > +	}
> >  
> >  	if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features))
> >  		vcpu->arch.hcr_el2 &= ~HCR_RW;
> 
> This patch makes sense to me: when FWB is available, the guest memory is cacheable
> even when the stage 1 MMU is disabled, which means it's now impossible to have a
> situation where the data in memory is newer than the data in the cache.
> 
> I tested the patch with the fix suggested by Marc by doing a linux boot and then a
> 'ls -R /', and by running kvm-unit-tests in a loop a couple dozen times. For what
> it's worth:
> 
> Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
> 
> I do need to point out that I haven't been able to make a guest misbehave when FWB
> is not enabled *and* KVM doesn't do a stage2_flush_vm when the stage 1 MMU is
> enabled. I tried to write two different tests in kvm-unit-tests:
> 
> 1. With the MMU never enabled, the test tells the host to read a value from memory
> (so a cache line is allocated), writes another value to the same memory location,
> and then enables the MMU and reads the memory back. I always got the latest value
> that was written while the MMU was off.
> 
> 2. One thread tells the host to read the memory location in a loop (to make sure
> that the cache line doesn't get evicted), while the other thread writes a value
> with the MMU off, enables the MMU and reads the memory back. I still got the
> latest value written with the MMU off.
> 
> I can share the source code for the tests, if anyone is interested; I'm also open
> to other suggestions.
> 

Thanks for the thoroughness here.  I also wasn't able to produce an
error on the model, so I think we can conclude that it's at least no
worse than the original code, and since we all agree that this should be
correct, then I think it's fair that Marc has merged the patch.

It can't hurt to post the code you wrote for the test; someone might
pick that up in the future to test something similar.


Thanks,

    Christoffer


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8747AE7299
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqwfUHQ7P+HRF+/YZNKHdxDZbFWEhunUtvd1gpjeafM=; b=C5+Einv6lu0FaF
	wuPI9JoTi2h7qeeb0xXNwlpgkSrqGRf6O0rh9TGtDLhvD/2GOesWB+kMds848LNxCT231VNnTgTCj
	RpLo1WM4zl4wM5mfhz2YW/rHzXZxEhpL+wvhceBPEZ8GgSjy2DBrIBfGfdZ3v3z7yAuEnZDLShn1F
	nDkk1NcL5gv7LRovIJUTOijgUWLRlbYcXkFXX1H6fuHFqMTPmg/2ToX3kjulb5WquYmOEArY3ylMH
	Kw0UhC8+EDEd21wO2Akok629qH/TsJ+18Fqg8+Ahx077YLAsKyfa0CXaEl7k7+1Hmsd5piE0eegYP
	G+18KwTnIs6E5BMVUmxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP54W-00039O-Dh; Mon, 28 Oct 2019 13:28:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP54M-00038i-15
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:28:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34C7C1F1;
 Mon, 28 Oct 2019 06:28:24 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8349B3F6C4;
 Mon, 28 Oct 2019 06:28:23 -0700 (PDT)
Date: Mon, 28 Oct 2019 13:28:21 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Christoffer Dall <christoffer.dall@arm.com>
Subject: Re: [PATCH v2] KVM: arm64: Don't set HCR_EL2.TVM when S2FWB is
 supported
Message-ID: <20191028132820.GB48742@lakrids.cambridge.arm.com>
References: <20191028130541.30536-1-christoffer.dall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028130541.30536-1-christoffer.dall@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_062826_159494_31F4BB04 
X-CRM114-Status: GOOD (  26.48  )
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 02:05:41PM +0100, Christoffer Dall wrote:
> On CPUs that support S2FWB (Armv8.4+), KVM configures the stage 2 page
> tables to override the memory attributes of memory accesses, regardless
> of the stage 1 page table configurations, and also when the stage 1 MMU
> is turned off.  This results in all memory accesses to RAM being
> cacheable, including during early boot of the guest.
> 
> On CPUs without this feature, memory accesses were non-cacheable during
> boot until the guest turned on the stage 1 MMU, and we had to detect
> when the guest turned on the MMU, such that we could invalidate all cache
> entries and ensure a consistent view of memory with the MMU turned on.
> When the guest turned on the caches, we would call stage2_flush_vm()
> from kvm_toggle_cache().
> 
> However, stage2_flush_vm() walks all the stage 2 tables, and calls
> __kvm_flush-dcache_pte, which on a system with S2FWD does ... absolutely
> nothing.
> 
> We can avoid that whole song and dance, and simply not set TVM when
> creating a VM on a system that has S2FWB.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
> I was only able to test this on the model with cache modeling enabled,
> but even removing TVM from HCR_EL2 without having FWB also worked with
> that setup, so the testing of this has been light.  It seems like it
> should obviously work, but it would be good if someone with access to
> appropriate hardware could give this a spin.
> 
>  arch/arm64/include/asm/kvm_arm.h     |  3 +--
>  arch/arm64/include/asm/kvm_emulate.h | 12 +++++++++++-
>  2 files changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
> index ddf9d762ac62..6e5d839f42b5 100644
> --- a/arch/arm64/include/asm/kvm_arm.h
> +++ b/arch/arm64/include/asm/kvm_arm.h
> @@ -61,7 +61,6 @@
>   * RW:		64bit by default, can be overridden for 32bit VMs
>   * TAC:		Trap ACTLR
>   * TSC:		Trap SMC
> - * TVM:		Trap VM ops (until M+C set in SCTLR_EL1)
>   * TSW:		Trap cache operations by set/way
>   * TWE:		Trap WFE
>   * TWI:		Trap WFI
> @@ -74,7 +73,7 @@
>   * SWIO:	Turn set/way invalidates into set/way clean+invalidate
>   */
>  #define HCR_GUEST_FLAGS (HCR_TSC | HCR_TSW | HCR_TWE | HCR_TWI | HCR_VM | \
> -			 HCR_TVM | HCR_BSU_IS | HCR_FB | HCR_TAC | \
> +			 HCR_BSU_IS | HCR_FB | HCR_TAC | \
>  			 HCR_AMO | HCR_SWIO | HCR_TIDCP | HCR_RW | HCR_TLOR | \
>  			 HCR_FMO | HCR_IMO)
>  #define HCR_VIRT_EXCP_MASK (HCR_VSE | HCR_VI | HCR_VF)
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index d69c1efc63e7..70509799a2a9 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -53,8 +53,18 @@ static inline void vcpu_reset_hcr(struct kvm_vcpu *vcpu)
>  		/* trap error record accesses */
>  		vcpu->arch.hcr_el2 |= HCR_TERR;
>  	}
> -	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
> +
> +	if (cpus_have_const_cap(ARM64_HAS_STAGE2_FWB)) {
>  		vcpu->arch.hcr_el2 |= HCR_FWB;
> +	} else {
> +		/*
> +		 * For non-FWB CPUs, we trap VM ops (HCR_EL2.TVM) until M+C
> +		 * get set in SCTLR_EL1 such that we can detect when the guest
> +		 * MMU gets turned off and do the necessary cache maintenance

Typo: s/off/on/ -- this is to make sure the accesses made when the MMU
was off (which aren't cacheable) are visible once the MMU is turned on
(e.g. not shadowed by stale clean cache lines).

Otherwise, this looks goot to me, and my R-B stands.

Thanks,
Mark.

> +		 * then.
> +		 */
> +		vcpu->arch.hcr_el2 &= ~HCR_TVM;
> +	}
>  
>  	if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features))
>  		vcpu->arch.hcr_el2 &= ~HCR_RW;
> -- 
> 2.18.0
> 
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

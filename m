Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31935B643
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLjFtbvR6IPJWIr+PiU3tCIZPH5d7+hvWwnRUvrGzS8=; b=t85Lo8WX41108A
	RsQBP9gTMnaERtYd9ljy4SVT9b4mhjurErAaZ2jIdthv94Y4ECJqXrm6OIy3yuo1M+iBBfAwpt+yV
	Fi6WNNDMxKXNjowEWJR3bpSMlBytpngwwapLnL1gSdasvjePcIW9+giESab9113homLwW4lLAd0r4
	HYMPCHrltE4cyDJX6YBIMloyrWiN5gm+SDa59zONdzSjkvlciQMQEGQZTa5tZSkTF5W/1fxF/eu56
	IJ50L0uX/utzBcPWB076sjQja6Zoo2jrnjy2pCLvwcFh8fH5V4Q34aGVKIiHW+pRumDTzJfaYhBeK
	IQ3YSQOWR/IOZ9FQSlvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrHc-0006a5-6W; Mon, 01 Jul 2019 08:03:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrHN-0006ZG-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:03:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41CA72B;
 Mon,  1 Jul 2019 01:03:11 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECB0D3F718;
 Mon,  1 Jul 2019 01:03:09 -0700 (PDT)
Subject: Re: [PATCH 38/59] KVM: arm64: nv: Unmap/flush shadow stage 2 page
 tables
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-39-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <d17216b4-59c7-5993-85d0-6ee7aa532852@arm.com>
Date: Mon, 1 Jul 2019 09:03:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-39-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_010313_788044_6735B2AB 
X-CRM114-Status: GOOD (  21.46  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 21/06/2019 10:38, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@linaro.org>
> 
> Unmap/flush shadow stage 2 page tables for the nested VMs as well as the
> stage 2 page table for the guest hypervisor.
> 
> Note: A bunch of the code in mmu.c relating to MMU notifiers is
> currently dealt with in an extremely abrupt way, for example by clearing
> out an entire shadow stage-2 table. This will be handled in a more
> efficient way using the reverse mapping feature in a later version of
> the patch series.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/kvm_mmu.h    |  3 +++
>  arch/arm64/include/asm/kvm_nested.h |  3 +++
>  arch/arm64/kvm/nested.c             | 39 +++++++++++++++++++++++++++
>  virt/kvm/arm/arm.c                  |  4 ++-
>  virt/kvm/arm/mmu.c                  | 42 +++++++++++++++++++++++------
>  5 files changed, 82 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
> index 32bcaa1845dc..f4c5ac5eb95f 100644
> --- a/arch/arm64/include/asm/kvm_mmu.h
> +++ b/arch/arm64/include/asm/kvm_mmu.h
> @@ -163,6 +163,8 @@ int create_hyp_io_mappings(phys_addr_t phys_addr, size_t size,
>  			   void __iomem **haddr);
>  int create_hyp_exec_mappings(phys_addr_t phys_addr, size_t size,
>  			     void **haddr);
> +void kvm_stage2_flush_range(struct kvm_s2_mmu *mmu,
> +			    phys_addr_t addr, phys_addr_t end);
>  void free_hyp_pgds(void);
>  
>  void kvm_unmap_stage2_range(struct kvm_s2_mmu *mmu, phys_addr_t start, u64 size);
> @@ -171,6 +173,7 @@ int kvm_alloc_stage2_pgd(struct kvm_s2_mmu *mmu);
>  void kvm_free_stage2_pgd(struct kvm_s2_mmu *mmu);
>  int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
>  			  phys_addr_t pa, unsigned long size, bool writable);
> +void kvm_stage2_wp_range(struct kvm_s2_mmu *mmu, phys_addr_t addr, phys_addr_t end);
>  
>  int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run);
>  
> diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
> index 052d46d96201..3b415bc76ced 100644
> --- a/arch/arm64/include/asm/kvm_nested.h
> +++ b/arch/arm64/include/asm/kvm_nested.h
> @@ -48,6 +48,9 @@ extern int kvm_walk_nested_s2(struct kvm_vcpu *vcpu, phys_addr_t gipa,
>  extern int kvm_s2_handle_perm_fault(struct kvm_vcpu *vcpu,
>  				    struct kvm_s2_trans *trans);
>  extern int kvm_inject_s2_fault(struct kvm_vcpu *vcpu, u64 esr_el2);
> +extern void kvm_nested_s2_wp(struct kvm *kvm);
> +extern void kvm_nested_s2_clear(struct kvm *kvm);
> +extern void kvm_nested_s2_flush(struct kvm *kvm);
>  int handle_wfx_nested(struct kvm_vcpu *vcpu, bool is_wfe);
>  extern bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit);
>  extern bool forward_nv_traps(struct kvm_vcpu *vcpu);
> diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
> index 023027fa2db5..8880033fb6e0 100644
> --- a/arch/arm64/kvm/nested.c
> +++ b/arch/arm64/kvm/nested.c
> @@ -456,6 +456,45 @@ int kvm_inject_s2_fault(struct kvm_vcpu *vcpu, u64 esr_el2)
>  	return kvm_inject_nested_sync(vcpu, esr_el2);
>  }
>  
> +/* expects kvm->mmu_lock to be held */
> +void kvm_nested_s2_wp(struct kvm *kvm)
> +{
> +	int i;
> +
> +	for (i = 0; i < kvm->arch.nested_mmus_size; i++) {
> +		struct kvm_s2_mmu *mmu = &kvm->arch.nested_mmus[i];
> +
> +		if (kvm_s2_mmu_valid(mmu))
> +			kvm_stage2_wp_range(mmu, 0, kvm_phys_size(kvm));
> +	}
> +}
> +
> +/* expects kvm->mmu_lock to be held */
> +void kvm_nested_s2_clear(struct kvm *kvm)
> +{
> +	int i;
> +
> +	for (i = 0; i < kvm->arch.nested_mmus_size; i++) {
> +		struct kvm_s2_mmu *mmu = &kvm->arch.nested_mmus[i];
> +
> +		if (kvm_s2_mmu_valid(mmu))
> +			kvm_unmap_stage2_range(mmu, 0, kvm_phys_size(kvm));
> +	}
> +}
> +
> +/* expects kvm->mmu_lock to be held */
> +void kvm_nested_s2_flush(struct kvm *kvm)
> +{
> +	int i;
> +
> +	for (i = 0; i < kvm->arch.nested_mmus_size; i++) {
> +		struct kvm_s2_mmu *mmu = &kvm->arch.nested_mmus[i];
> +
> +		if (kvm_s2_mmu_valid(mmu))
> +			kvm_stage2_flush_range(mmu, 0, kvm_phys_size(kvm));
> +	}
> +}
> +
>  /*
>   * Inject wfx to the virtual EL2 if this is not from the virtual EL2 and
>   * the virtual HCR_EL2.TWX is set. Otherwise, let the host hypervisor
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 4e3cbfa1ecbe..bcca27d5c481 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -1005,8 +1005,10 @@ static int kvm_arch_vcpu_ioctl_vcpu_init(struct kvm_vcpu *vcpu,
>  	 * Ensure a rebooted VM will fault in RAM pages and detect if the
>  	 * guest MMU is turned off and flush the caches as needed.
>  	 */
> -	if (vcpu->arch.has_run_once)
> +	if (vcpu->arch.has_run_once) {
>  		stage2_unmap_vm(vcpu->kvm);
> +		kvm_nested_s2_clear(vcpu->kvm);

The comment above kvm_nested_s2_clear() states that kvm->mmu_lock needs
to be taken, but in this state it isn't (stage2_unmap_vm() acquies the
lock and releases it).

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C92511DF75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEicAqLZGp6tDFX0UUFfghiD52k6fy5odTzL15vIq4Y=; b=cXxJsjmK9bjPz/
	ppu0Fo7N0XEhu6xp0o+zTdEFbEkbwLjK9BNh27YDgWc5RR4XfKkktN4lu5aaqmbPHvIgQ0+kMlvZd
	EmhX+4Cg4aOSQpuSpyV9SURAaPhCgpSEFlPMtpICBFDPlx8pdWsIIgTOwZ0pZxyBeEA6jYmBzP5iu
	MWP2C6G342sehSVe4WXE73ynepY/GqNeYsdKPDcLAhoN9x3cfcuAsL28yg2peJ4i9qVQPV6Mvijxw
	xuF0h4gYwNzgXOJAliL3olj4He+4Q8+mDZFXcZP6+JXU1fzcihBnu1ct806c61kzIeL4PbYg+8BSE
	YA/9MMVzndYeqAngMmJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgKO-0006r3-6a; Fri, 13 Dec 2019 08:29:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgKD-0006q2-F3
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 08:29:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11AF8328;
 Fri, 13 Dec 2019 00:29:22 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75CA43F52E;
 Fri, 13 Dec 2019 00:32:35 -0800 (PST)
Date: Fri, 13 Dec 2019 09:29:20 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/3] KVM: arm/arm64: Properly handle faulting of device
 mappings
Message-ID: <20191213082920.GA28840@e113682-lin.lund.arm.com>
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-2-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211165651.7889-2-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_002925_587922_3DD42F7D 
X-CRM114-Status: GOOD (  25.63  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Wed, Dec 11, 2019 at 04:56:48PM +0000, Marc Zyngier wrote:
> A device mapping is normally always mapped at Stage-2, since there
> is very little gain in having it faulted in.

It is actually becoming less clear to me what the real benefits of
pre-populating the stage 2 page table are, especially given that we can
provoke a situation where they're faulted in anyhow.  Do you recall if
we had any specific case that motivated us to pre-fault in the pages?

> 
> Nonetheless, it is possible to end-up in a situation where the device
> mapping has been removed from Stage-2 (userspace munmaped the VFIO
> region, and the MMU notifier did its job), but present in a userspace
> mapping (userpace has mapped it back at the same address). In such
> a situation, the device mapping will be demand-paged as the guest
> performs memory accesses.
> 
> This requires to be careful when dealing with mapping size, cache
> management, and to handle potential execution of a device mapping.
> 
> Cc: stable@vger.kernel.org
> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/mmu.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index a48994af70b8..0b32a904a1bb 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -38,6 +38,11 @@ static unsigned long io_map_base;
>  #define KVM_S2PTE_FLAG_IS_IOMAP		(1UL << 0)
>  #define KVM_S2_FLAG_LOGGING_ACTIVE	(1UL << 1)
>  
> +static bool is_iomap(unsigned long flags)
> +{
> +	return flags & KVM_S2PTE_FLAG_IS_IOMAP;
> +}
> +

nit: I'm not really sure this indirection makes the code more readable,
but I guess that's a matter of taste.

>  static bool memslot_is_logging(struct kvm_memory_slot *memslot)
>  {
>  	return memslot->dirty_bitmap && !(memslot->flags & KVM_MEM_READONLY);
> @@ -1698,6 +1703,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  
>  	vma_pagesize = vma_kernel_pagesize(vma);
>  	if (logging_active ||
> +	    (vma->vm_flags & VM_PFNMAP) ||

WHat is actually the rationale for this?

Why is a huge mapping not permitted to device memory?

Are we guaranteed that VM_PFNMAP on the vma results in device mappings?
I'm not convinced this is the case, and it would be better if we can
stick to a single primitive (either kvm_is_device_pfn, or VM_PFNMAP) to
detect device mappings.

As a subsequent patch, I'd like to make sure that at the very least our
memslot prepare function follows the exact same logic for mapping device
memory as a fault-in approach does, or that we simply always fault pages
in.

>  	    !fault_supports_stage2_huge_mapping(memslot, hva, vma_pagesize)) {
>  		force_pte = true;
>  		vma_pagesize = PAGE_SIZE;
> @@ -1760,6 +1766,9 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  			writable = false;
>  	}
>  
> +	if (exec_fault && is_iomap(flags))
> +		return -ENOEXEC;
> +

nit: why don't you just do this when checking kvm_is_device_pfn() and
avoid having logic in two places to deal with this case?

>  	spin_lock(&kvm->mmu_lock);
>  	if (mmu_notifier_retry(kvm, mmu_seq))
>  		goto out_unlock;
> @@ -1781,7 +1790,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  	if (writable)
>  		kvm_set_pfn_dirty(pfn);
>  
> -	if (fault_status != FSC_PERM)
> +	if (fault_status != FSC_PERM && !is_iomap(flags))
>  		clean_dcache_guest_page(pfn, vma_pagesize);
>  
>  	if (exec_fault)
> @@ -1948,9 +1957,8 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  	if (kvm_is_error_hva(hva) || (write_fault && !writable)) {
>  		if (is_iabt) {
>  			/* Prefetch Abort on I/O address */
> -			kvm_inject_pabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> -			ret = 1;
> -			goto out_unlock;
> +			ret = -ENOEXEC;
> +			goto out;
>  		}
>  
>  		/*
> @@ -1992,6 +2000,11 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  	ret = user_mem_abort(vcpu, fault_ipa, memslot, hva, fault_status);
>  	if (ret == 0)
>  		ret = 1;
> +out:
> +	if (ret == -ENOEXEC) {
> +		kvm_inject_pabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> +		ret = 1;
> +	}
>  out_unlock:
>  	srcu_read_unlock(&vcpu->kvm->srcu, idx);
>  	return ret;
> -- 
> 2.20.1
> 

I can't seem to decide for myself if I think there's a sematic
difference between trying to execute from somewhere the VMM has
explicitly told us is device memory and from somewhere which we happen
to have mapped with VM_PFNMAP from user space.  But I also can't seem to
really fault it (pun intended).  Thoughts?


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

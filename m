Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3535011BAAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9vYom3FbErT7sQHHOVA4zqPql7zSDCapSGdhcxBICU=; b=bjBxd+todAnVw8
	ieYLJQSh/EjT+oUcu0PhMgq3BFMu808aS4kZEAYbBfDwk8O41ZVRUqOZRKlNEe1FSmFJt4lRoDcSO
	3HTDPeyd1zJiPJ+Rhy5JmEiWBZo7PwERk0seT6ZXV80mflx5rqHKIXwJzeV78bBZDvPhQ9d2jVK5i
	9bl59PWJJafh1cdo7xiTcGxhi1DDbq29bz9q/SGquWI9BTx4VG4ODZw+oTOJEls/NdYU1xXeK0XYx
	g54IIgDRJlK1LTUe5Ehcu1eCc/6wSuvYD59VI2uOW3x0ZFCLBx23YtwPYmkVsjSUjY7SaPoXTdQEV
	f+97ZPPTrASFm0oaAh9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6Aw-0005gm-Uu; Wed, 11 Dec 2019 17:53:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6Ap-0005fl-1R
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:53:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B24331B;
 Wed, 11 Dec 2019 09:53:16 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 446DE3F6CF;
 Wed, 11 Dec 2019 09:53:15 -0800 (PST)
Subject: Re: [PATCH 1/3] KVM: arm/arm64: Properly handle faulting of device
 mappings
To: Marc Zyngier <maz@kernel.org>, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-2-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <a8dbd580-ed09-8d46-6ec5-a54bac3a6695@arm.com>
Date: Wed, 11 Dec 2019 17:53:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211165651.7889-2-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_095319_173070_6F97C68D 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/11/19 4:56 PM, Marc Zyngier wrote:
> A device mapping is normally always mapped at Stage-2, since there
> is very little gain in having it faulted in.
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
>  static bool memslot_is_logging(struct kvm_memory_slot *memslot)
>  {
>  	return memslot->dirty_bitmap && !(memslot->flags & KVM_MEM_READONLY);
> @@ -1698,6 +1703,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  
>  	vma_pagesize = vma_kernel_pagesize(vma);
>  	if (logging_active ||
> +	    (vma->vm_flags & VM_PFNMAP) ||
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

I've tested this patch using the scenario that you described in the commit
message. I've also tested it with the following scenarios:

- The region is mmap'ed as backed by a VFIO device fd and the memslot is created,
it is munmap'ed, then mmap'ed as anonymous.
- The region is mmap'ed as anonymous and the memslot is created, it is munmap'ed,
then mmap'ed as backed by a VFIO device fd.

Everything worked as expected, so:

Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>

Just a nitpick, but stage2_set_pte has a local variable iomap which can be
replaced with a call to is_iomap.

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

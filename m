Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AADFA124BDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+64KM+XL25nDKBNRyV2W1I/LZqUpbeyJyniOoRSAds=; b=jPTDGmw+eMcxNH
	57IDcfa2fbrAhu/1kW6oupF0bkRy2aMga9CmM8wk2FsAO4uX0ZiN9e8pqkVkmqVD2QNS3+ypt9xe1
	Cog4/c4GZqapaglC3grAWFIrQWDwPkeX6TLmukA4eT06ULA6yWzHs5SNgF0q6lOZceyF306AP6F7o
	uv4sxkv8IK3kJxd/QtiDCSIFQCJ+e7+vU7Oxe8g6BZLFcsTWr1QD8UvfSoXkN5Nnm0Mmbm5YeAgHx
	fx0q2siwnTu7SgR10tkll0r+D/JdWWqfHyIRihXKIO2WG1cAJv/JNDLEmCtBs6FruMpRfUi98cYRW
	UvRN7WEFE85UycCaU8Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbPp-0003xI-MI; Wed, 18 Dec 2019 15:39:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbPh-0003wN-H4
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:39:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DECE430E;
 Wed, 18 Dec 2019 07:39:00 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 732DD3F719;
 Wed, 18 Dec 2019 07:39:00 -0800 (PST)
Date: Wed, 18 Dec 2019 16:38:59 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2] KVM: arm/arm64: Re-check VMA on detecting a poisoned
 page
Message-ID: <20191218153859.GB25857@e113682-lin.lund.arm.com>
References: <20191217123809.197392-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217123809.197392-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_073901_604644_401F87FD 
X-CRM114-Status: GOOD (  16.87  )
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
Cc: Marc Zyngier <maz@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:38:09PM +0000, James Morse wrote:
> When we check for a poisoned page, we use the VMA to tell userspace
> about the looming disaster. But we pass a pointer to this VMA
> after having released the mmap_sem, which isn't a good idea.
> 
> Instead, stash the shift value that goes with this pfn while
> we are holding the mmap_sem.
> 
> Reported-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> 
> Based on Marc's patch:
> Link: lore.kernel.org/r/20191211165651.7889-3-maz@kernel.org
> 
>  virt/kvm/arm/mmu.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
> 
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 38b4c910b6c3..bb0f8d648678 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -1591,16 +1591,8 @@ static void invalidate_icache_guest_page(kvm_pfn_t pfn, unsigned long size)
>  	__invalidate_icache_guest_page(pfn, size);
>  }
>  
> -static void kvm_send_hwpoison_signal(unsigned long address,
> -				     struct vm_area_struct *vma)
> +static void kvm_send_hwpoison_signal(unsigned long address, short lsb)
>  {
> -	short lsb;
> -
> -	if (is_vm_hugetlb_page(vma))
> -		lsb = huge_page_shift(hstate_vma(vma));
> -	else
> -		lsb = PAGE_SHIFT;
> -
>  	send_sig_mceerr(BUS_MCEERR_AR, (void __user *)address, lsb, current);
>  }
>  
> @@ -1673,6 +1665,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  	struct kvm *kvm = vcpu->kvm;
>  	struct kvm_mmu_memory_cache *memcache = &vcpu->arch.mmu_page_cache;
>  	struct vm_area_struct *vma;
> +	short vma_shift;
>  	kvm_pfn_t pfn;
>  	pgprot_t mem_type = PAGE_S2;
>  	bool logging_active = memslot_is_logging(memslot);
> @@ -1696,7 +1689,12 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  		return -EFAULT;
>  	}
>  
> -	vma_pagesize = vma_kernel_pagesize(vma);
> +	if (is_vm_hugetlb_page(vma))
> +		vma_shift = huge_page_shift(hstate_vma(vma));
> +	else
> +		vma_shift = PAGE_SHIFT;
> +
> +	vma_pagesize = 1ULL << vma_shift;
>  	if (logging_active ||
>  	    !fault_supports_stage2_huge_mapping(memslot, hva, vma_pagesize)) {
>  		force_pte = true;
> @@ -1735,7 +1733,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  
>  	pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
>  	if (pfn == KVM_PFN_ERR_HWPOISON) {
> -		kvm_send_hwpoison_signal(hva, vma);
> +		kvm_send_hwpoison_signal(hva, vma_shift);
>  		return 0;
>  	}
>  	if (is_error_noslot_pfn(pfn))
> -- 
> 2.24.0
> 
> 
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

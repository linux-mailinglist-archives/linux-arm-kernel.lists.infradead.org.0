Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9403E11E07D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2zXdEdQMWbx2w2NPn2l9IMDvBBPqWoUoR8W+wpa3WY=; b=lu7msrmYZvoBRP
	h/LT66CkU+LDBpi2bXpyXqoGthPZqHA9F0YUFoUzoK0bs2RSYESNqOrgqNAMHIw4I6Qv1uo7gcW67
	urZhSotyizRr01R4tfRwnwytUpxws3s+uaTAEqYGpX6rqg+Dj4Po6nAp3ACdU1upFYbasrYdb/dan
	U9RBZZ8eT71o+ogxAnQGkvGom7vgyviVWXPOWK9m//r/HCyQRAzijA7X5+LO9udHyBy2xf17kNO4J
	6KW6jvXhzloyBIoPregu72Gn/10cdAYHQbAOnf/7xkOJp2GDPG2TFlKIivePh2+U5udM9rEi4VXLD
	WtomjPgMzchfu0sTLL/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifh9v-0004Ud-VY; Fri, 13 Dec 2019 09:22:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifh9n-0004U0-0i
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:22:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90D2E1FB;
 Fri, 13 Dec 2019 01:22:41 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 255743F52E;
 Fri, 13 Dec 2019 01:22:41 -0800 (PST)
Date: Fri, 13 Dec 2019 10:22:39 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 2/3] KVM: arm/arm64: Re-check VMA on detecting a poisoned
 page
Message-ID: <20191213092239.GB28840@e113682-lin.lund.arm.com>
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-3-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211165651.7889-3-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_012243_150731_471801AF 
X-CRM114-Status: GOOD (  25.00  )
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
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:56:49PM +0000, Marc Zyngier wrote:
> When we check for a poisoned page, we use the VMA to tell userspace
> about the looming disaster. But we pass a pointer to this VMA
> after having released the mmap_sem, which isn't a good idea.
> 
> Instead, re-check that we have still have a VMA, and that this
> VMA still points to a poisoned page. If the VMA isn't there,
> userspace is playing with our nerves, so lety's give it a -EFAULT
> (it deserves it). If the PFN isn't poisoned anymore, let's restart
> from the top and handle the fault again.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/mmu.c | 25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 0b32a904a1bb..f73393f5ddb7 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -1741,9 +1741,30 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>  
>  	pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
>  	if (pfn == KVM_PFN_ERR_HWPOISON) {
> -		kvm_send_hwpoison_signal(hva, vma);
> -		return 0;
> +		/*
> +		 * Search for the VMA again, as it may have been
> +		 * removed in the interval...
> +		 */
> +		down_read(&current->mm->mmap_sem);
> +		vma = find_vma_intersection(current->mm, hva, hva + 1);
> +		if (vma) {
> +			/*
> +			 * Recheck for a poisoned page. If something changed
> +			 * behind our back, don't do a thing and take the
> +			 * fault again.
> +			 */
> +			pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
> +			if (pfn == KVM_PFN_ERR_HWPOISON)
> +				kvm_send_hwpoison_signal(hva, vma);
> +
> +			ret = 0;
> +		} else {
> +			ret = -EFAULT;
> +		}
> +		up_read(&current->mm->mmap_sem);
> +		return ret;
>  	}
> +
>  	if (is_error_noslot_pfn(pfn))
>  		return -EFAULT;
>  
> -- 
> 2.20.1
> 

If I read this code correctly, then all we use the VMA for is to find
the page size used by the MMU to back the VMA, which we've already
established in the vma_pagesize (and possibly adjusted to something more
accurate based on our constraints in stage 2 which generated the error),
so all we need is the size and a way to convert that into a shift.

Not being 100% confident about the semantics of the lsb bit we pass to
user space (is it indicating the size of the mapping which caused the
error or the size of the mapping where user space could potentially
trigger an error?), or wheter we care enough at that level, could we
consider something like the following instead?

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 38b4c910b6c3..2509d9dec42d 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1592,15 +1592,9 @@ static void invalidate_icache_guest_page(kvm_pfn_t pfn, unsigned long size)
 }
 
 static void kvm_send_hwpoison_signal(unsigned long address,
-				     struct vm_area_struct *vma)
+				     unsigned long vma_pagesize)
 {
-	short lsb;
-
-	if (is_vm_hugetlb_page(vma))
-		lsb = huge_page_shift(hstate_vma(vma));
-	else
-		lsb = PAGE_SHIFT;
-
+	short lsb = __ffs(vma_pagesize);
 	send_sig_mceerr(BUS_MCEERR_AR, (void __user *)address, lsb, current);
 }
 
@@ -1735,7 +1729,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 
 	pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
 	if (pfn == KVM_PFN_ERR_HWPOISON) {
-		kvm_send_hwpoison_signal(hva, vma);
+		kvm_send_hwpoison_signal(hva, vma_pagesize);
 		return 0;
 	}
 	if (is_error_noslot_pfn(pfn))


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

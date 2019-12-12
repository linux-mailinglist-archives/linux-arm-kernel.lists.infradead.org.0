Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299FE11CC47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MY6ydAAFaXx7FmuMTOKrHdGa1xsNXkaNbgBC6LcGM8=; b=hfLPIwX0iqK0T8
	wFeytNfljXmnZVL+T80OP4LyQMxUaHzDvnoCU4Z/7sMMkr+eub0HiS0hKTJTGxQ/A/WWUr42BCqjE
	3cd5HAjKNrFre1apxmuFLISLrEEzH9GJOJCe1jcbnupeSGCJFaEf9Zuax3kF7G3uwPW8D0jxfCykh
	OB4/iHTSQfenXxYAiirh3AH7exIii7qALAnz8SFiCS7r6Ek3CnpRRURswl/HqsciK+KKv5t/Isgzo
	sXgeWbDS3i34n+lFfw3vogEYUisYNbsWt1k2y+YneiZSgJNFoddgtYL8PbVMa2ObvZ13IdNe7Z969
	rONU9ZtiXMkVmyOV0e0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMj4-0001LU-MB; Thu, 12 Dec 2019 11:33:46 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMis-0001KR-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 11:33:36 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifMio-0000Lx-CN; Thu, 12 Dec 2019 12:33:30 +0100
To: <kvm@vger.kernel.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-arm-kernel@lists.infradead.org>, <james.morse@arm.com>
Subject: Re: [PATCH 2/3] KVM: arm/arm64: Re-check VMA on detecting a poisoned
 page
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 12 Dec 2019 11:33:30 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191211165651.7889-3-maz@kernel.org>
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-3-maz@kernel.org>
Message-ID: <88f65ab4ac87f53534fbbfd2410d1cc5@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_033334_906253_276C518F 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-11 16:56, Marc Zyngier wrote:
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
> @@ -1741,9 +1741,30 @@ static int user_mem_abort(struct kvm_vcpu
> *vcpu, phys_addr_t fault_ipa,
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

Revisiting this, I wonder if we're not better off just holding the 
mmap_sem
for a bit longer. Something like:

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 0b32a904a1bb..87d416d000c6 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1719,13 +1719,13 @@ static int user_mem_abort(struct kvm_vcpu 
*vcpu, phys_addr_t fault_ipa,
  	if (vma_pagesize == PMD_SIZE ||
  	    (vma_pagesize == PUD_SIZE && kvm_stage2_has_pmd(kvm)))
  		gfn = (fault_ipa & huge_page_mask(hstate_vma(vma))) >> PAGE_SHIFT;
-	up_read(&current->mm->mmap_sem);
-
  	/* We need minimum second+third level pages */
  	ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm),
  				     KVM_NR_MEM_OBJS);
-	if (ret)
+	if (ret) {
+		up_read(&current->mm->mmap_sem);
  		return ret;
+	}

  	mmu_seq = vcpu->kvm->mmu_notifier_seq;
  	/*
@@ -1742,8 +1742,12 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, 
phys_addr_t fault_ipa,
  	pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
  	if (pfn == KVM_PFN_ERR_HWPOISON) {
  		kvm_send_hwpoison_signal(hva, vma);
+		up_read(&current->mm->mmap_sem);
  		return 0;
  	}
+
+	up_read(&current->mm->mmap_sem);
+
  	if (is_error_noslot_pfn(pfn))
  		return -EFAULT;


James, what do you think?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5C611E089
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v28NfMmk8glelCsaj6Z0jXrKjAS64hKDvhyPbCsjpHg=; b=ie8KFqN75I5Ch6
	CYAmyNOCA8NVfRfwBv+zYKt0Q/Mu1nb3cC2FXa8cEk7oBdl1fkeVvvpHa3oJuGCyZZ6qakzF+bO1i
	Yqf17Z/ntKRvXu+PsRnkFhmyD+Z0fdhsA1KdarZOhevbD/NMNs7uTMmV1Uunx4NWq813v52UT0vhx
	uyVSyOJXO+0n5gFHL93by7DiK589Kg5Re/tSOfhAvzPpu5P4K/PqqjblVAoQTC/9+/YJHI8ITovmn
	1Pv7YDKvPvDkayygu/b+yd+fq1Yo/imWZRG6EyeFECxE2OT5NR+5fjt3RKYH8z17HIhioNYBC8+n3
	NZSxIpljMQW6GOu3su7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhD2-0006HL-3G; Fri, 13 Dec 2019 09:26:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhCt-0006Gt-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:25:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94A801FB;
 Fri, 13 Dec 2019 01:25:54 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 289AE3F52E;
 Fri, 13 Dec 2019 01:25:54 -0800 (PST)
Date: Fri, 13 Dec 2019 10:25:52 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/3] KVM: arm/arm64: Re-check VMA on detecting a poisoned
 page
Message-ID: <20191213092552.GC28840@e113682-lin.lund.arm.com>
References: <20191211165651.7889-1-maz@kernel.org>
 <20191211165651.7889-3-maz@kernel.org>
 <88f65ab4ac87f53534fbbfd2410d1cc5@www.loen.fr>
 <b0a2b074-b80f-84ee-bfaa-f81ab345b8c2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0a2b074-b80f-84ee-bfaa-f81ab345b8c2@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_012555_616292_3EEE1340 
X-CRM114-Status: GOOD (  22.10  )
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Thu, Dec 12, 2019 at 03:34:31PM +0000, James Morse wrote:
> Hi Marc,
> 
> On 12/12/2019 11:33, Marc Zyngier wrote:
> > On 2019-12-11 16:56, Marc Zyngier wrote:

[...]

> 
> (allocating from a kmemcache while holding current's mmap_sem. I don't want to think about
> it!)
> 
> Can we be lazier? We want the VMA to get the size of the poisoned mapping correct in the
> signal. The bug is that this could change when we drop the lock, before queuing the
> signal, so we report hwpoison on old-vmas:pfn with new-vmas:size.
> 
> Can't it equally change when we drop the lock after queuing the signal? Any time before
> the thread returns to user-space to take the signal gives us a stale value.
> 
> I think all that matters is the size goes with the pfn that was poisoned. If we look the
> vma up by hva again, we have to check if the pfn has changed too... (which you are doing)
> 
> Can we stash the size in the existing mmap_sem region, and use that in
> kvm_send_hwpoison_signal()? We know it matches the pfn we saw as poisoned.
> 
> The vma could be changed before/after we send the signal, but user-space can't know which.
> This is user-spaces' problem for messing with the memslots while a vpcu is running.
> 

(I should clearly have expanded this thread before I replied to the
original patch...)

> 
> How about (untested):
> -------------------------%<-------------------------
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 38b4c910b6c3..80212d4935bd 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -1591,16 +1591,8 @@ static void invalidate_icache_guest_page(kvm_pfn_t pfn, unsigned
> long size)
>         __invalidate_icache_guest_page(pfn, size);
>  }
> 
> -static void kvm_send_hwpoison_signal(unsigned long address,
> -                                    struct vm_area_struct *vma)
> +static void kvm_send_hwpoison_signal(unsigned long address, short lsb)
>  {
> -       short lsb;
> -
> -       if (is_vm_hugetlb_page(vma))
> -               lsb = huge_page_shift(hstate_vma(vma));
> -       else
> -               lsb = PAGE_SHIFT;
> -
>         send_sig_mceerr(BUS_MCEERR_AR, (void __user *)address, lsb, current);
>  }
> 
> @@ -1673,6 +1665,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>         struct kvm *kvm = vcpu->kvm;
>         struct kvm_mmu_memory_cache *memcache = &vcpu->arch.mmu_page_cache;
>         struct vm_area_struct *vma;
> +       short stage1_vma_size;
>         kvm_pfn_t pfn;
>         pgprot_t mem_type = PAGE_S2;
>         bool logging_active = memslot_is_logging(memslot);
> 
> @@ -1703,6 +1696,12 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
>                 vma_pagesize = PAGE_SIZE;
>         }
> 
> +       /* For signals due to hwpoison, we need to use the stage1 size */
> +       if (is_vm_hugetlb_page(vma))
> +               stage1_vma_size = huge_page_shift(hstate_vma(vma));
> +       else
> +               stage1_vma_size = PAGE_SHIFT;
> +

But (see my patch) as far as I can tell, this is already what we have in
vma_pagesize, and do we really have to provide the stage 1 size to user
space if the fault happened within a smaller boundary?  Isn't that just
providing more precise information to the user?


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

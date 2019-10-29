Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B596E87CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:12:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VpndUxhyA0JKmVcdb2Pvy1kv5H7hfaYMjQ/uysGVao=; b=D5jitKcz0kdJgh
	Q0AYp4l5m+xo3/01i5exMOx99PAyflWoAzmZ9sTNx+DRZkQD+9MI9gbsQjzTn7bH0jgMG38UX0t7Y
	EcBgHP0acDg4aE8PafxaybjPOSIWHYQso3AiU48UCA0/8AMaj+teKZEQj9/OoS8csUTouCmyHc3fb
	Eb9UwjewcNVhZhEaLVXIQVeAQM4TrbVeRZ7OL2QeQLQlktdddFkS2gDkw8luPafVGX7OygP62DA+P
	SA0CGoR/YplrvdZ+1byv1w8gzkr3S06S8TwuQMDuSj8Cu1Me21oGDydPq4rNz3ZvhWHUlqZg3bDi3
	vwnEVU7U5ZEhJxNWVkxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQM5-0004cq-UL; Tue, 29 Oct 2019 12:12:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQLw-0004bp-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:12:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FB561F1;
 Tue, 29 Oct 2019 05:11:57 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7A1033F6C4; Tue, 29 Oct 2019 05:11:56 -0700 (PDT)
Date: Tue, 29 Oct 2019 12:11:54 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: FF <figure1802@126.com>
Subject: Re: Re: about the ptep_set_access_flags() for hardware AF/DBM
Message-ID: <20191029121153.GB11440@arrakis.emea.arm.com>
References: <22add3c1.16c1.16e0ca535d4.Coremail.figure1802@126.com>
 <20191028184303.GB6619@arrakis.emea.arm.com>
 <1b0920d5.c4b.16e1501ef37.Coremail.figure1802@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b0920d5.c4b.16e1501ef37.Coremail.figure1802@126.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_051200_687371_A8B95BA9 
X-CRM114-Status: GOOD (  25.65  )
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
Cc: mark.rutland@arm.com, steve.capper@arm.com, runninglinuxkernel@126.com,
 will.deacon@arm.com, julien.grall@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ben,

On Tue, Oct 29, 2019 at 08:54:38AM +0800, FF wrote:
> >On Sun, Oct 27, 2019 at 05:56:24PM +0800, FF wrote:
> >> Here is the scenario:
> >> A more complex situation is possible when all CPUs support hardware
> >>    AF/DBM:
> >> 
> >>    a) Initial state: shareable + writable vma and pte_none(pte)
> >>    b) Read fault taken by two threads of the same process on different
> >>       CPUs
> >>    c) CPU0 takes the mmap_sem and proceeds to handling the fault. It
> >>       eventually reaches do_set_pte() which sets a writable + clean pte.
> >>       CPU0 releases the mmap_sem
> >>    d) CPU1 acquires the mmap_sem and proceeds to handle_pte_fault(). The
> >>       pte entry it reads is present, writable and clean and it continues
> >>       to pte_mkyoung()
> >>    e) CPU1 calls ptep_set_access_flags()
> >> 
> >>    If between (d) and (e) the hardware (another CPU) updates the dirty
> >>    state (clears PTE_RDONLY), CPU1 will override the PTR_RDONLY bit
> >>    marking the entry clean again.
[...]
> i want to elaborate the scenario, i saw the first patch to fix the
> ptep_set_access_flags() for hardware AF/DBM is on Linux 4.7-rc1.
> commit id "66dbd6e6" ,arm64: Implement ptep_set_access_flags() for
> hardware AF/DBM

What are you trying to solve? ptep_set_access_flags() being atomic is
not any worse. Do you think we wouldn't need this patch?

> i think you have issue on Linux 4.6, let's  assume that we are look at
> Linux 4.6 source code.
> 
> 1. initial phase: we want to create a sharable+writable file mapping
>    by mmap() API, the filesyste is:ext4

See more below but I think we may need shm instead of a file mapping to
trigger the race (which, BTW, is rather theoretical; I haven't seen it
in practice).

>    in do_mmap(), the vm_flags should be set VM_READ | VM_WRITE | VM_SHARED.
>    in mmap_region()->vma_set_page_prot(), it will let the some shared
>    mappigns will want the pages marked read-only to track write
>    events, so it will clear the VM_SHARED. so it will get the pte
>    attribute from protection_map[] is __P011.
>    
>    In Linux 4.6, __P011 is PAGE_COPY:
>    #define PAGE_COPY		__pgprot(_PAGE_DEFAULT | PTE_USER | PTE_NG | PTE_PXN | PTE_UXN)
>    
>    for PAGE_COPY, the PTE_RDONLY and PTE_WRITE(DMB) are zero.
>    so the vm_flags is: VM_READ | VM_WRITE

While you are right that PAGE_COPY has PTE_RDONLY and PTE_WRITE zero,
set_pte_at() in 4.6 sets PTE_RDONLY if !PTE_WRITE. So the resulting
mapping in the page table is read-only.

Anyway I think with vma_wants_writenotify() we can't trigger this race
since it's a purely read-only fault (requires kernel notification). What
we need is to end up with a writable+clean entry which means VM_SHARED
set leading to PAGE_SHARED attributes which have PTE_WRITE/DBM set. Note
that set_pte_at() in 4.6 would mark the page as PTE_RDONLY since
pte_sw_dirty() is false.

> 2. Thread 1 on CPU0 want to write this page, page_fault will be trigger.
>    in handle_pte_fault->do_fault->do_shared_fault(), it will allocate
>    a new page cache, and in do_set_pte(), it will call:
>    "maybe_mkwrite(pte_mkdirty(entry), vma)" to set the pte entry. so
>    the pte attribute should be: PTE_DIRTY | PTE_WRITE.

Yes but the scenario I had in mind was a read fault here rather than
write which would set a PAGE_SHARED attributes ending up with
PTE_WRITE|PTE_RDONLY (PTE_WRITE is the PTE_DBM bit).

> 3. Thread 2 on CPU1 also want to read this page but this pte has not
>    create by Thread 1, so page_fault happen. in pte_offset_map(), it
>    found that the pte is created by Thread 1, so it will directly
>    call:
>    
>    entry = pte_mkyoung(entry);
>    ptep_set_access_flags()
>    
>    in ptep_set_access_flags, it will call set_pte_at() to set pte.
>    but in set_pte_at() function:
>    
>    	if (pte_present(pte)) {
> 		if (pte_sw_dirty(pte) && pte_write(pte))
> 			pte_val(pte) &= ~PTE_RDONLY;
> 		else
> 			pte_val(pte) |= PTE_RDONLY;
> 		if (pte_user(pte) && pte_exec(pte) && !pte_special(pte))
> 			__sync_icache_dcache(pte, addr);
> 	}
> 	
> 	it will clean the PTE_RDONLY bit, because the PTE_DIRTY |
> 	PTE_WRITE is set in our scenario. otherwise, anyone clean the
> 	PTE_DIRTY bit, who will clean this PTE_DIRTY bit?

Correct for your scenario but not if point 2 is a read.

> so i am very confusing the patch "arm64: Implement
> ptep_set_access_flags() for hardware AF/DBM" commit log's scenrio.
> would you like point out what i am missing?

If point 2 is a read fault, that goes via do_read_fault() and the pte
ends up as clean with PTE_WRITE|PTE_RDONLY is set since it's not
pte_sw_dirty() (checked by set_pte_at()).

Thread 2 on CPU1 would end up calling ptep_set_access_flags() on a
read-only pte with DBM set because it took a read fault (same as Thread
1).

The problem appears if a Thread 3 on CPU2 performs a write access in
parallel with point 3 above. CPU2 sees the pte as valid, RDONLY and DBM
set, and proceeds to clearing the RDONLY bit in hardware. CPU1 then
overrides the PTE_RDONLY bit if ptep_set_access_flags() is not atomic.

Now you need to find a vm_operations_struct that allows shared, writable
and clean mappings and does not set .page_mkwrite (shm_vm_ops is one).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4FA103925
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:52:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GPKs3y3vzWZMASWSAxgmajv1HKd1gRT+IajYVChVg0=; b=HMwG3GffGMy4BT
	EY0Jh1/Wecu0ioczRatYZLhwV5PJ7hjvISa96OE2wZb+iQY1YCtULLWA8ITUNCtBvJn2NRd3erDKk
	80pFwhu/WQhrcch9vpKcZ0wR4cW5wlKvrw+G8fFMNDFteWiZGG0+6fEcPI4FtkRQ3aaumEwGslYlS
	ypHlnGV2wlYnwyCsdAXALBJf9aByMBuw2bnsU3fEYBZFYVVwJQrd4vAlEuQydvtd4awAMk3ojusMn
	xRnPzF2C7FADdSCSxKPf3K4icJXI0RhyzkSX86CY9c/6ztBoeBfhRN3s7el6I+2FcTy/Ea55pbTaI
	MN9XAfwLVfbdWIQykg/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOX8-0007lK-SU; Wed, 20 Nov 2019 11:52:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOWz-0007ke-Kv
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:52:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D83C328;
 Wed, 20 Nov 2019 03:52:18 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4E603F703;
 Wed, 20 Nov 2019 03:52:17 -0800 (PST)
Date: Wed, 20 Nov 2019 12:52:16 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: Memory regions and VMAs across architectures
Message-ID: <20191120115216.GL8317@e113682-lin.lund.arm.com>
References: <20191108111920.GD17608@e113682-lin.lund.arm.com>
 <20191120034448.GC25890@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120034448.GC25890@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035221_776097_38BBCCB0 
X-CRM114-Status: GOOD (  29.45  )
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
Cc: kvm@vger.kernel.org, Marc Zyngier <maz@kernel.org>, borntraeger@de.ibm.com,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 07:44:48PM -0800, Sean Christopherson wrote:
> On Fri, Nov 08, 2019 at 12:19:20PM +0100, Christoffer Dall wrote:
> > Hi,
> > 
> > I had a look at our relatively complicated logic in
> > kvm_arch_prepare_memory_region(), and was wondering if there was room to
> > unify some of this handling between architectures.
> > 
> > (If you haven't seen our implementation, you can find it in
> > virt/kvm/arm/mmu.c, and it has lovely ASCII art!)
> > 
> > I then had a look at the x86 code, but that doesn't actually do anything
> > when creating memory regions, which makes me wonder why the arhitectures
> > differ in this aspect.
> > 
> > The reason we added the logic that we have for arm/arm64 is that we
> > don't really want to take faults for I/O accesses.  I'm not actually
> > sure if this is a corretness thing, or an optimization effort, and the
> > original commit message doesn't really explain.  Ard, you wrote that
> > code, do you recall the details?
> > 
> > In any case, what we do is to check for each VMA backing a memslot, we
> > check if the memslot flags and vma flags are a reasonable match, and we
> > try to detect I/O mappings by looking for the VM_PFNMAP flag on the VMA
> > and pre-populate stage 2 page tables (our equivalent of EPT/NPT/...).
> > However, there are some things which are not clear to me:
> > 
> > First, what prevents user space from messing around with the VMAs after
> > kvm_arch_prepare_memory_region() completes?  If nothing, then what is
> > the value of the cheks we perform wrt. to VMAs?
> 
> Arm's prepare_memory_region() holds mmap_sem and mmu_lock while processing
> the VMAs and populating the stage 2 page tables.  Holding mmap_sem prevents
> the VMAs from being invalidated while the stage 2 tables are populated,
> e.g. prevents racing with the mmu notifier.  The VMAs could be modified
> after prepare_memory_region(), but the mmu notifier will ensure they are
> unmapped from stage2 prior the the host change taking effect.  So I think
> you're safe (famous last words).
> 

So we for example check:

	writeable = !(memslot->falgs & KVM_MEM_READONLY);
	if (writeable && !(vma->vm_flags & VM_WRITE))
		return -EPERM;

And yes, user space can then unmap the VMAs and MMU notifiers will
unmap the stage 2 entries, but user space can then create a new
read-only VMA covering the area of the memslot and the fault-handling
path will have to deal with this same check later.  Only, the fault
handling path, via gfn_to_pfn_prot(), returns an address based on an
entirely different set of mechanics, than our prepare_memory_region,
which I think indicates we are doing something wrong somewhere, and we
should have a common path for faulting things in, for I/O, both if we do
this up-front or if we do this at fault time.


> > Second, why would arm/arm64 need special handling for I/O mappings
> > compared to other architectures, and how is this dealt with for
> > x86/s390/power/... ?
> 
> As Ard mentioned, it looks like an optimization.  The "passthrough"
> part from the changelog implies that VM_PFNMAP memory regions are exclusive
> to the guest.  Mapping the entire thing would be a nice boot optimization
> as it would save taking page faults on every page of the MMIO region.
> 
> As for how this is different from other archs... at least on x86, VM_PFNMAP
> isn't guaranteed to be passthrough or even MMIO, e.g. prefaulting the
> pages may actually trigger allocation, and remapping the addresses could be
> flat out wrong.

What does VM_PFNMAP mean on x86?  I didn't think we were relying on
anything architecture specific in their meaning in the arm code, and I
thought the VM_PFNMAP was a generic mm flag with generic mm meaning,
but I could be wrong here?

Is there any valid semantics for creating a memslot backed by a
VM_PFNMAP on x86, and if so, what are those?

Similarly, if you do map a device region straight to the guest on x86,
how is that handled?  (A pointer to the right place in the myriad of EPT
and shadow code in x86 would be much appreciated.)


Thanks!

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

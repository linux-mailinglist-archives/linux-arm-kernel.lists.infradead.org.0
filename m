Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC9103E57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ks0mrxpQGxkUkTdl+Aye8MFlm2RvT5L+V4Y60p/Uszw=; b=hOmyUBksLAacmW
	/eN2j8M4cbp6XQhOzdSTHfQhlrTpyN4/a2Cn0zVFkuH/R8KrjovlFXNRCoXHYxczcrPSyrdI++F2V
	o/36INkVFD5ndFwX2IR8z3vCQn1Ghwwhoj/EDEBwhKhzNeW7++NR9WddH+ZG8KZihvXJgYgKT80eg
	Xxwu7roJD0ERP6+D7x8k2peS+WA9rLcJ3H+RYGQPrLFLWP2Zc46i9A+wC6ADddXjfUcKibmWrNcYX
	1+FVKETiebwzQBymiUXuCRbqVFMUyu+IO22EtFZhVPcpvjP742K4YqKrHTvzHPLc1iHpBLUYe2/38
	PLCh2bzROA3pu0Q6Gz0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRtx-0008Q4-NP; Wed, 20 Nov 2019 15:28:17 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRto-0008PD-Hf
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:28:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 07:28:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="237773796"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by fmsmga002.fm.intel.com with ESMTP; 20 Nov 2019 07:28:07 -0800
Date: Wed, 20 Nov 2019 07:28:07 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Christoffer Dall <christoffer.dall@arm.com>
Subject: Re: Memory regions and VMAs across architectures
Message-ID: <20191120152807.GA32572@linux.intel.com>
References: <20191108111920.GD17608@e113682-lin.lund.arm.com>
 <20191120034448.GC25890@linux.intel.com>
 <20191120115216.GL8317@e113682-lin.lund.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120115216.GL8317@e113682-lin.lund.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072808_598835_2FF64341 
X-CRM114-Status: GOOD (  29.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

On Wed, Nov 20, 2019 at 12:52:16PM +0100, Christoffer Dall wrote:
> On Tue, Nov 19, 2019 at 07:44:48PM -0800, Sean Christopherson wrote:
> > On Fri, Nov 08, 2019 at 12:19:20PM +0100, Christoffer Dall wrote:
> > > First, what prevents user space from messing around with the VMAs after
> > > kvm_arch_prepare_memory_region() completes?  If nothing, then what is
> > > the value of the cheks we perform wrt. to VMAs?
> > 
> > Arm's prepare_memory_region() holds mmap_sem and mmu_lock while processing
> > the VMAs and populating the stage 2 page tables.  Holding mmap_sem prevents
> > the VMAs from being invalidated while the stage 2 tables are populated,
> > e.g. prevents racing with the mmu notifier.  The VMAs could be modified
> > after prepare_memory_region(), but the mmu notifier will ensure they are
> > unmapped from stage2 prior the the host change taking effect.  So I think
> > you're safe (famous last words).
> > 
> 
> So we for example check:
> 
> 	writeable = !(memslot->falgs & KVM_MEM_READONLY);
> 	if (writeable && !(vma->vm_flags & VM_WRITE))
> 		return -EPERM;
> 
> And yes, user space can then unmap the VMAs and MMU notifiers will
> unmap the stage 2 entries, but user space can then create a new
> read-only VMA covering the area of the memslot and the fault-handling
> path will have to deal with this same check later.Only, the fault
> handling path, via gfn_to_pfn_prot(), returns an address based on an
> entirely different set of mechanics, than our prepare_memory_region,
> which I think indicates we are doing something wrong somewhere, and we
> should have a common path for faulting things in, for I/O, both if we do
> this up-front or if we do this at fault time.

Unconditionally interpreting vm_pgoff as a physical address does not seem
correct.  There are cases where that might be correct, e.g. if the backing
(virtual) file is a flat representation of the address space, which appears
to be the case on some architectures, e.g. for PCI handling.  But even then
there should be some confirmation that the VMA is actually associated with
such a file, otherwise KVM is at the mercy of userspace to do the right
thing (unless there are other guarantees on arm I am unaware of).

> > > Second, why would arm/arm64 need special handling for I/O mappings
> > > compared to other architectures, and how is this dealt with for
> > > x86/s390/power/... ?
> > 
> > As Ard mentioned, it looks like an optimization.  The "passthrough"
> > part from the changelog implies that VM_PFNMAP memory regions are exclusive
> > to the guest.  Mapping the entire thing would be a nice boot optimization
> > as it would save taking page faults on every page of the MMIO region.
> > 
> > As for how this is different from other archs... at least on x86, VM_PFNMAP
> > isn't guaranteed to be passthrough or even MMIO, e.g. prefaulting the
> > pages may actually trigger allocation, and remapping the addresses could be
> > flat out wrong.
> 
> What does VM_PFNMAP mean on x86?  I didn't think we were relying on
> anything architecture specific in their meaning in the arm code, and I
> thought the VM_PFNMAP was a generic mm flag with generic mm meaning,
> but I could be wrong here?

No, you're correct, VM_PFNMAP is a generic flag that state the VMA doesn't
have an associated struct page and is being managed directly by something
other than the core mmu.

But not having a struct page doesn't guarantee that the PFN is backed by
MMIO, or that it is exclusive to the guest (although in practice this is
probably the case 99.9999% of the time).  E.g. x86 supports having guest
memory backed by regular ram that is hidden from the host kernel via
'mem=', which will show up as VM_PFNMAP.

> Is there any valid semantics for creating a memslot backed by a
> VM_PFNMAP on x86, and if so, what are those?
> 
> Similarly, if you do map a device region straight to the guest on x86,
> how is that handled?  (A pointer to the right place in the myriad of EPT
> and shadow code in x86 would be much appreciated.)

There is no special handling in x86 for VM_PFNMAP memory, we rely on KVM's
generic __gfn_to_pfn_memslot() to retrieve the PFN on demand, and use
mmu_notifier_seq to ensure the stale PFNs (invalidated in the host) aren't
inserted into the guest page tables.  Effectively the same thing arm does,
sans the prepare_memory_region() shenanigans.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

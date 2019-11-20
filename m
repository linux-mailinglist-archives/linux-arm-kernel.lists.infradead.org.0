Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AD110321C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:45:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLgI95YOd3C4u2iQf4x3fOyemmu+PmqaUNnE/LM7wDE=; b=QyiN8Rhg5jqLZE
	YdppTv2JwLxRYXZfJaUJPfg2bUc36U3Ef1hfRsOCawFarQO7DqvSyvB24w7sULNQvZe29x0wQKbz+
	8tCb3EeD6QOtCjKdvHmRBoFIRfKqLREoKeIw4htzRplT6RvKY3fkjPGlYtUzUW+6rTq4b1qg/SBH3
	vgRGZgLcUTkAopZuv9O+Y3ks4vo6GSFIrQdJ4x5bJXQd80rkdRXPG6MDeyxbQ4XmHLs8fkPs4yEbH
	KUi9Oj42eqNE0zA7abHxfilCliMr/tzoYRBdBxuIVtHXRVycHIDmIqjszf3tirT62YV1zKH85KlMq
	aML1LPDKnknD/oE6KOSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGvM-0005yb-JJ; Wed, 20 Nov 2019 03:45:00 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGvD-0005yF-6F
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 03:44:52 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 19:44:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,220,1571727600"; d="scan'208";a="204597622"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 19 Nov 2019 19:44:48 -0800
Date: Tue, 19 Nov 2019 19:44:48 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Christoffer Dall <christoffer.dall@arm.com>
Subject: Re: Memory regions and VMAs across architectures
Message-ID: <20191120034448.GC25890@linux.intel.com>
References: <20191108111920.GD17608@e113682-lin.lund.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108111920.GD17608@e113682-lin.lund.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_194451_243006_FF834D82 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Fri, Nov 08, 2019 at 12:19:20PM +0100, Christoffer Dall wrote:
> Hi,
> 
> I had a look at our relatively complicated logic in
> kvm_arch_prepare_memory_region(), and was wondering if there was room to
> unify some of this handling between architectures.
> 
> (If you haven't seen our implementation, you can find it in
> virt/kvm/arm/mmu.c, and it has lovely ASCII art!)
> 
> I then had a look at the x86 code, but that doesn't actually do anything
> when creating memory regions, which makes me wonder why the arhitectures
> differ in this aspect.
> 
> The reason we added the logic that we have for arm/arm64 is that we
> don't really want to take faults for I/O accesses.  I'm not actually
> sure if this is a corretness thing, or an optimization effort, and the
> original commit message doesn't really explain.  Ard, you wrote that
> code, do you recall the details?
> 
> In any case, what we do is to check for each VMA backing a memslot, we
> check if the memslot flags and vma flags are a reasonable match, and we
> try to detect I/O mappings by looking for the VM_PFNMAP flag on the VMA
> and pre-populate stage 2 page tables (our equivalent of EPT/NPT/...).
> However, there are some things which are not clear to me:
> 
> First, what prevents user space from messing around with the VMAs after
> kvm_arch_prepare_memory_region() completes?  If nothing, then what is
> the value of the cheks we perform wrt. to VMAs?

Arm's prepare_memory_region() holds mmap_sem and mmu_lock while processing
the VMAs and populating the stage 2 page tables.  Holding mmap_sem prevents
the VMAs from being invalidated while the stage 2 tables are populated,
e.g. prevents racing with the mmu notifier.  The VMAs could be modified
after prepare_memory_region(), but the mmu notifier will ensure they are
unmapped from stage2 prior the the host change taking effect.  So I think
you're safe (famous last words).

> Second, why would arm/arm64 need special handling for I/O mappings
> compared to other architectures, and how is this dealt with for
> x86/s390/power/... ?

As Ard mentioned, it looks like an optimization.  The "passthrough"
part from the changelog implies that VM_PFNMAP memory regions are exclusive
to the guest.  Mapping the entire thing would be a nice boot optimization
as it would save taking page faults on every page of the MMIO region.

As for how this is different from other archs... at least on x86, VM_PFNMAP
isn't guaranteed to be passthrough or even MMIO, e.g. prefaulting the
pages may actually trigger allocation, and remapping the addresses could be
flat out wrong.


  commit 8eef91239e57d2e932e7470879c9a504d5494ebb
  Author: Ard Biesheuvel <ard.biesheuvel@linaro.org>
  Date:   Fri Oct 10 17:00:32 2014 +0200

    arm/arm64: KVM: map MMIO regions at creation time

    There is really no point in faulting in memory regions page by page
    if they are not backed by demand paged system RAM but by a linear
    passthrough mapping of a host MMIO region. So instead, detect such
    regions at setup time and install the mappings for the backing all
    at once.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E69156245
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 02:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=el/Jrj2mAd0oeXVyWFADFaauSGI3FxYlrJouFUrAcsg=; b=dwcxrGpI68uvao
	QKmn0pzCR8vuS7MAYu9VIA3USd8wh6sUT8bZf11Rk7BpMah6zziM8SYjU55jUoayYOstWRsmwvQvq
	6WUZDwqVooHMw0ztrVQhvYXrMqUc4V1hVpGpH991U9OJhjRlFIco2JGKQUz1HZUkqTMziv5lpICA+
	YizfrF6f+o80nWsGDs/e6oxkWFFRq4DQRM/+3r1gDXufxuw+NxVmqjv+wQKiIKRqKb7wPEIFFnDvF
	xue6HpBVsRS3STjucKQP2VVHarSZq3UiK0FGJ7pEGtuJvFS+ya/7a84aCC29PmYX5qvWWO6JQAGvq
	U4HiW4ZPYO4BNaHlAGCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0EwP-0002Cq-Kw; Sat, 08 Feb 2020 01:29:49 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0EwH-0002As-CL
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 01:29:43 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 17:29:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,415,1574150400"; d="scan'208";a="280139370"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Feb 2020 17:29:38 -0800
Date: Fri, 7 Feb 2020 17:29:38 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200208012938.GC15581@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1>
 <20200206212120.GF13067@linux.intel.com>
 <20200206214106.GG700495@xz-x1>
 <20200207194532.GK2401@linux.intel.com>
 <20200208001832.GA823968@xz-x1>
 <20200208004233.GA15581@linux.intel.com>
 <20200208005334.GB823968@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208005334.GB823968@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_172941_438231_6EEB0ACE 
X-CRM114-Status: GOOD (  31.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?iso-8859-1?Q?Mathieu-Daud=E9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 07:53:34PM -0500, Peter Xu wrote:
> On Fri, Feb 07, 2020 at 04:42:33PM -0800, Sean Christopherson wrote:
> > On Fri, Feb 07, 2020 at 07:18:32PM -0500, Peter Xu wrote:
> > > On Fri, Feb 07, 2020 at 11:45:32AM -0800, Sean Christopherson wrote:
> > > > +Vitaly for HyperV
> > > > 
> > > > On Thu, Feb 06, 2020 at 04:41:06PM -0500, Peter Xu wrote:
> > > > > On Thu, Feb 06, 2020 at 01:21:20PM -0800, Sean Christopherson wrote:
> > > > > > On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
> > > > > > > But that matters to this patch because if MIPS can use
> > > > > > > kvm_flush_remote_tlbs(), then we probably don't need this
> > > > > > > arch-specific hook any more and we can directly call
> > > > > > > kvm_flush_remote_tlbs() after sync dirty log when flush==true.
> > > > > > 
> > > > > > Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
> > > > > > that prevents calling kvm_flush_remote_tlbs() directly, but I have no
> > > > > > clue as to the important of that code.
> > > > > 
> > > > > As said above I think the x86 lockdep is really not necessary, then
> > > > > considering MIPS could be the only one that will use the new hook
> > > > > introduced in this patch...  Shall we figure that out first?
> > > > 
> > > > So I prepped a follow-up patch to make kvm_arch_dirty_log_tlb_flush() a
> > > > MIPS-only hook and use kvm_flush_remote_tlbs() directly for arm and x86,
> > > > but then I realized x86 *has* a hook to do a precise remote TLB flush.
> > > > There's even an existing kvm_flush_remote_tlbs_with_address() call on a
> > > > memslot, i.e. this exact scenario.  So arguably, x86 should be using the
> > > > more precise flush and should keep kvm_arch_dirty_log_tlb_flush().
> > > > 
> > > > But, the hook is only used when KVM is running as an L1 on top of HyperV,
> > > > and I assume dirty logging isn't used much, if at all, for L1 KVM on
> > > > HyperV?
> > > > 
> > > > I see three options:
> > > > 
> > > >   1. Make kvm_arch_dirty_log_tlb_flush() MIPS-only and call
> > > >      kvm_flush_remote_tlbs() directly for arm and x86.  Add comments to
> > > >      explain when an arch should implement kvm_arch_dirty_log_tlb_flush().
> > > > 
> > > >   2. Change x86 to use kvm_flush_remote_tlbs_with_address() when flushing
> > > >      a memslot after the dirty log is grabbed by userspace.
> > > > 
> > > >   3. Keep the resulting code as is, but add a comment in x86's
> > > >      kvm_arch_dirty_log_tlb_flush() to explain why it uses
> > > >      kvm_flush_remote_tlbs() instead of the with_address() variant.
> > > > 
> > > > I strongly prefer to (2) or (3), but I'll defer to Vitaly as to which of
> > > > those is preferable.
> > > > 
> > > > I don't like (1) because (a) it requires more lines code (well comments),
> > > > to explain why kvm_flush_remote_tlbs() is the default, and (b) it would
> > > > require even more comments, which would be x86-specific in generic KVM,
> > > > to explain why x86 doesn't use its with_address() flush, or we'd lost that
> > > > info altogether.
> > > > 
> > > 
> > > I proposed the 4th solution here:
> > > 
> > > https://lore.kernel.org/kvm/20200207223520.735523-1-peterx@redhat.com/
> > > 
> > > I'm not sure whether that's acceptable, but if it can, then we can
> > > drop the kvm_arch_dirty_log_tlb_flush() hook, or even move on to
> > > per-slot tlb flushing.
> > 
> > This effectively is per-slot TLB flushing, it just has a different name.
> > I.e. s/kvm_arch_dirty_log_tlb_flush/kvm_arch_flush_remote_tlbs_memslot.
> > I'm not opposed to that name change.  And on second and third glance, I
> > probably prefer it.  That would more or less follow the naming of
> > kvm_arch_flush_shadow_all() and kvm_arch_flush_shadow_memslot().
> 
> Note that the major point of the above patchset is not about doing tlb
> flush per-memslot or globally.  It's more about whether we can provide
> a common entrance for TLB flushing.  Say, after that series, we should
> be able to flush TLB on all archs (majorly, including MIPS) as:
> 
>   kvm_flush_remote_tlbs(kvm);
> 
> And with the same idea we can also introduce the ranged version.
> 
> > 
> > I don't want to go straight to kvm_arch_flush_remote_tlb_with_address()
> > because that loses the important distinction (on x86) that slots_lock is
> > expected to be held.
> 
> Sorry I'm still puzzled on why that lockdep is so important and
> special for x86...  For example, what if we move that lockdep to the
> callers of the kvm_arch_dirty_log_tlb_flush() calls so it protects
> even more arch (where we do get/clear dirty log)?  IMHO the callers
> must be with the slots_lock held anyways no matter for x86 or not.


Following the breadcrumbs leads to the comment in
kvm_mmu_slot_remove_write_access(), which says:

        /*
         * kvm_mmu_slot_remove_write_access() and kvm_vm_ioctl_get_dirty_log()
         * which do tlb flush out of mmu-lock should be serialized by
         * kvm->slots_lock otherwise tlb flush would be missed.
         */

I.e. write-protecting a memslot and grabbing the dirty log for the memslot
need to be serialized.  It's quite obvious *now* that get_dirty_log() holds
slots_lock, but the purpose of lockdep assertions isn't just to verify the
current functionality, it's to help ensure the correctness for future code
and to document assumptions in the code.

Digging deeper, there are four functions, all related to dirty logging, in
the x86 mmu that basically open code what x86's
kvm_arch_flush_remote_tlbs_memslot() would look like if it uses the range
based flushing.

Unless it's functionally incorrect (Vitaly?), going with option (2) and
naming the hook kvm_arch_flush_remote_tlbs_memslot() seems like the obvious
choice, e.g. the final cleanup gives this diff stat:

 arch/x86/kvm/mmu/mmu.c | 34 +++++++++-------------------------
 1 file changed, 9 insertions(+), 25 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

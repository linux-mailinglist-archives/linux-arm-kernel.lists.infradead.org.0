Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D52154DD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 22:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lxZMW+zQzietPc6c5eUDqc6Ya07kYohbqOjPdtT3Rs=; b=Tz2AdRLA1XoACd
	3ZRMAaYsPFRwqVGhnnCpsLm7OdUMfQ63ihz712oshGee+XwbaXilnp6zz9ESx8uJ5ajEBlW1rXnVh
	jWehRvzz8DBJRuyNiVbEV+3N1C2qYmaEyXWtLlRhGFpwuTsU752OOqx70c9HLX69swLHRQwd8Hs2e
	uNWzbRtPTWDLcXhOorHP7Fvm9D2lhxqdSxWcT8iaZLxsShTGDclTjLgQSkf1gB0/btS5TyXHJNDDM
	QrjLExdDDXt/OQaiHkKmNnUEO4e4FcNeN4k4yVsB75U7XflqvMY+vSg7qTrCfhpEu0s1Vxv5vmpAo
	o2iAveBO4tSstvSvvxqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izoaX-0004YI-AU; Thu, 06 Feb 2020 21:21:29 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izoaR-0004XF-97
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 21:21:24 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 13:21:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,411,1574150400"; d="scan'208";a="250191235"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 06 Feb 2020 13:21:20 -0800
Date: Thu, 6 Feb 2020 13:21:20 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200206212120.GF13067@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
 <20200206200200.GC700495@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206200200.GC700495@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_132123_371025_E3E26EEA 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

On Thu, Feb 06, 2020 at 03:02:00PM -0500, Peter Xu wrote:
> On Tue, Jan 21, 2020 at 02:31:53PM -0800, Sean Christopherson wrote:
> 
> [...]
> 
> > -int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
> > +void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm,
> > +				  struct kvm_memory_slot *memslot)
> 
> If it's to flush TLB for a memslot, shall we remove the "dirty_log" in
> the name of the function, because it has nothing to do with dirty
> logging any more?  And...

I kept the "dirty_log" to allow arch code to implement logic specific to a
TLB flush during dirty logging, e.g. x86's lockdep assert on slots_lock.
And similar to the issue with MIPS below, to deter usage of the hook for
anything else, i.e. to nudge people to using kvm_flush_remote_tlbs()
directly.

> >  {
> > -	struct kvm_memslots *slots;
> > -	struct kvm_memory_slot *memslot;
> > -	bool flush = false;
> > -	int r;
> > -
> > -	mutex_lock(&kvm->slots_lock);
> > -
> > -	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
> > -
> > -	if (flush) {
> > -		slots = kvm_memslots(kvm);
> > -		memslot = id_to_memslot(slots, log->slot);
> > -
> > -		/* Let implementation handle TLB/GVA invalidation */
> > -		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
> > -	}
> > -
> > -	mutex_unlock(&kvm->slots_lock);
> > -	return r;
> > +	/* Let implementation handle TLB/GVA invalidation */
> > +	kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
> 
> ... This may not directly related to the current patch, but I'm
> confused on why MIPS cannot use kvm_flush_remote_tlbs() to flush TLBs.
> I know nothing about MIPS code, but IIUC here flush_shadow_memslot()
> is a heavier operation that will also invalidate the shadow pages.
> Seems to be an overkill here when we only changed write permission of
> the PTEs?  I tried to check the first occurance (2a31b9db15353) but I
> didn't find out any clue of it so far.
> 
> But that matters to this patch because if MIPS can use
> kvm_flush_remote_tlbs(), then we probably don't need this
> arch-specific hook any more and we can directly call
> kvm_flush_remote_tlbs() after sync dirty log when flush==true.

Ya, the asid_flush_mask in kvm_vz_flush_shadow_all() is the only thing
that prevents calling kvm_flush_remote_tlbs() directly, but I have no
clue as to the important of that code.

> >  }
> >  
> >  long kvm_arch_vm_ioctl(struct file *filp, unsigned int ioctl, unsigned long arg)
> > diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
> > index 97ce6c4f7b48..0adaf4791a6d 100644
> > --- a/arch/powerpc/kvm/book3s.c
> > +++ b/arch/powerpc/kvm/book3s.c
> > @@ -799,6 +799,11 @@ int kvmppc_core_check_requests(struct kvm_vcpu *vcpu)
> >  	return vcpu->kvm->arch.kvm_ops->check_requests(vcpu);
> >  }
> >  
> > +void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
> 
> Since at it, maybe we can start to use __weak attribute for new hooks
> especially when it's empty for most archs?
> 
> E.g., define:
> 
> void __weak kvm_arch_sync_dirty_log(...) {}
> 
> In the common code, then only define it again in arch that has
> non-empty implementation of this method?

I defer to Paolo, I'm indifferent at this stage.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

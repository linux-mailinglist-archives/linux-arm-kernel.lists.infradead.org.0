Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A6C155ADB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 16:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RjBb/Sw4eNDRuymQ/YjGx7R5X9dn0fAfncu8VsOU+U=; b=OikRTQ7EC2rRKJ
	wIKQLLq/cZ/EezPRfbYAG5pRku0HfgsVuh10+l9IFZL1a+HG1ZuyUyzZjx8grgvguCw+k/JdfhLXx
	Xa9DF2GtNW2+NxvInT5v3D6FhzIAc9VMOp7kyA99GpUmjbkEbenh3kZo7m8p8LDyCWTNHgONvcDWx
	N/zO5y+YPT65WKWNxLXreGusTjhMQIOk9bFj+bMWDTAGhdDPXM5IEpD8w1VMdVwxiUTCBTm1K3mNp
	GOhGF9Q45jjrbhek4Cn83wY5Yjnit6fjAKuuDGpHP5CrEKlTxJORRRG8+3Fl+aYwOw/d/4dNDs4V5
	WMH8sYm7/KXG/1ymV+LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j05iJ-0004vE-Sc; Fri, 07 Feb 2020 15:38:39 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j05iB-0004uL-F4
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 15:38:33 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 07:38:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="255445625"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga004.fm.intel.com with ESMTP; 07 Feb 2020 07:38:29 -0800
Date: Fri, 7 Feb 2020 07:38:29 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 18/19] KVM: Dynamically size memslot array based on
 number of used slots
Message-ID: <20200207153829.GA2401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-19-sean.j.christopherson@intel.com>
 <20200206221208.GI700495@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206221208.GI700495@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_073831_521176_C52B403C 
X-CRM114-Status: GOOD (  25.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Thu, Feb 06, 2020 at 05:12:08PM -0500, Peter Xu wrote:
> On Tue, Jan 21, 2020 at 02:31:56PM -0800, Sean Christopherson wrote:
> > Now that the memslot logic doesn't assume memslots are always non-NULL,
> > dynamically size the array of memslots instead of unconditionally
> > allocating memory for the maximum number of memslots.
> > 
> > Note, because a to-be-deleted memslot must first be invalidated, the
> > array size cannot be immediately reduced when deleting a memslot.
> > However, consecutive deletions will realize the memory savings, i.e.
> > a second deletion will trim the entry.
> > 
> > Tested-by: Christoffer Dall <christoffer.dall@arm.com>
> > Tested-by: Marc Zyngier <maz@kernel.org>
> > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > ---
> >  include/linux/kvm_host.h |  2 +-
> >  virt/kvm/kvm_main.c      | 31 ++++++++++++++++++++++++++++---
> >  2 files changed, 29 insertions(+), 4 deletions(-)
> > 
> > diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> > index 60ddfdb69378..8bb6fb127387 100644
> > --- a/include/linux/kvm_host.h
> > +++ b/include/linux/kvm_host.h
> > @@ -431,11 +431,11 @@ static inline int kvm_arch_vcpu_memslots_id(struct kvm_vcpu *vcpu)
> >   */
> >  struct kvm_memslots {
> >  	u64 generation;
> > -	struct kvm_memory_slot memslots[KVM_MEM_SLOTS_NUM];
> >  	/* The mapping table from slot id to the index in memslots[]. */
> >  	short id_to_index[KVM_MEM_SLOTS_NUM];
> >  	atomic_t lru_slot;
> >  	int used_slots;
> > +	struct kvm_memory_slot memslots[];
> 
> This patch is tested so I believe this works, however normally I need
> to do similar thing with [0] otherwise gcc might complaint.  Is there
> any trick behind to make this work?  Or is that because of different
> gcc versions?

array[] and array[0] have the same net affect, but array[] is given special
treatment by gcc to provide extra sanity checks, e.g. requires the field to
be the end of the struct.  Last I checked, gcc also doesn't allow array[]
in unions.  There are probably other restrictions.

But, it's precisely because of those restrictions that using array[] is
preferred, as it provides extra protections, e.g. if someone moved memslots
to the top of the struct it would fail to compile.
 
> >  };
> >  
> >  struct kvm {
> > diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> > index 9b614cf2ca20..ed392ce64e59 100644
> > --- a/virt/kvm/kvm_main.c
> > +++ b/virt/kvm/kvm_main.c
> > @@ -565,7 +565,7 @@ static struct kvm_memslots *kvm_alloc_memslots(void)
> >  		return NULL;
> >  
> >  	for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
> > -		slots->id_to_index[i] = slots->memslots[i].id = -1;
> > +		slots->id_to_index[i] = -1;
> >  
> >  	return slots;
> >  }
> > @@ -1077,6 +1077,32 @@ static struct kvm_memslots *install_new_memslots(struct kvm *kvm,
> >  	return old_memslots;
> >  }
> >  
> > +/*
> > + * Note, at a minimum, the current number of used slots must be allocated, even
> > + * when deleting a memslot, as we need a complete duplicate of the memslots for
> > + * use when invalidating a memslot prior to deleting/moving the memslot.
> > + */
> > +static struct kvm_memslots *kvm_dup_memslots(struct kvm_memslots *old,
> > +					     enum kvm_mr_change change)
> > +{
> > +	struct kvm_memslots *slots;
> > +	size_t old_size, new_size;
> > +
> > +	old_size = sizeof(struct kvm_memslots) +
> > +		   (sizeof(struct kvm_memory_slot) * old->used_slots);
> > +
> > +	if (change == KVM_MR_CREATE)
> > +		new_size = old_size + sizeof(struct kvm_memory_slot);
> > +	else
> > +		new_size = old_size;
> > +
> > +	slots = kvzalloc(new_size, GFP_KERNEL_ACCOUNT);
> > +	if (likely(slots))
> > +		memcpy(slots, old, old_size);
> 
> (Maybe directly copy into it?)

I don't follow, are you saying do "*slots = *old"?

@new_size and @old_size are not guaranteed to be the same.  More
specifically, slots->memslots and old->slots are now flexible arrays with
potentially different sizes.  Doing "*slots = *old" would only copy the
standard members, a memcpy() would still be needed for @memlots.

A more effecient implementation would be:

	slots = kvalloc(new_size, GFP_KERNEL_ACCOUNT);
	if (likely(slots)) {
		memcpy(slots, old, old_size);
		if (change == KVM_MR_CREATE)
			memset((void *)slots + old_size, 0, new_size - old_size);
	}

to avoid unnecessarily zeroing out the entire thing.  I opted for the
simpler implementation as this is not performance critical code, for most
cases @slots won't be all that large, and I wanted to be absolutely sure
any mixup would hit zeroed memory and not uninitialized memory.

> 
> > +
> > +	return slots;
> > +}
> > +
> >  static int kvm_set_memslot(struct kvm *kvm,
> >  			   const struct kvm_userspace_memory_region *mem,
> >  			   struct kvm_memory_slot *old,
> > @@ -1087,10 +1113,9 @@ static int kvm_set_memslot(struct kvm *kvm,
> >  	struct kvm_memslots *slots;
> >  	int r;
> >  
> > -	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
> > +	slots = kvm_dup_memslots(__kvm_memslots(kvm, as_id), change);
> >  	if (!slots)
> >  		return -ENOMEM;
> > -	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
> >  
> >  	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE) {
> >  		/*
> > -- 
> > 2.24.1
> > 
> 
> -- 
> Peter Xu
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

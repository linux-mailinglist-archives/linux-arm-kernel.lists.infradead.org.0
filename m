Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC631154DB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 22:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGUfydtygembVCZJDtNQ+nbkClhLNa8OQMHwe7H6wXg=; b=NGzakwLDICPU1S
	RsPOKegL9cMV6ed9UEzUw/7pruzD5pit9DzkWiPp0KvrLJ66Cc1E8OrhdGqdPHBKN57z5cEi9cKbw
	T9yfNpZIpANWcxHfS9meinxfFEy5LA6qK3mkyU1RLS9Z7MyB0+8aRbBf4Zlgxc6eh2QaI+gUUPi46
	X3I7nJlh3iQg5ZrpAr87ZjfzEzZ9MW2qpWufrXHhLx6nRbCxbUlT88j0ROzf945L4ADHOQC1/7ZjN
	9Hi3wLqYaaH6oseTWqeSKXIn0f0MkpN7PzWS6chcETKntjMabZUixq8bE8C3YchkFtkk/GP99WrT5
	qEBUvNGvcgcaRPmd3z2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izoPd-0008LX-Bn; Thu, 06 Feb 2020 21:10:13 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izoPO-0008Ie-7l
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 21:10:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581023396;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cd7kjPqCLkKhqQUdUNYHfJ8zgiLW4oy5uDbDynZl+tM=;
 b=BrDLXkUYu9Cnyi2onH5IATSVbAeQg7cERc+0kOJPGy+jKhVKKiV0UhxLEzXPkdDvyM5Egv
 TTfdkeTGMTv9dfKQF8/3YbGZU0NcBwEjC2l3FD+vWBPJGMebmEbWJUATKXqvaUVCuUmsSV
 eAJauOwVhJP0A5x3/AwiLxVD9u4LSxo=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-gzX6bzvxO7yRNZdfQHDloA-1; Thu, 06 Feb 2020 16:09:50 -0500
Received: by mail-qv1-f71.google.com with SMTP id z9so4516082qvo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 13:09:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vNBq/bnKVjPPERbje3lvP4o5ws3az9+Vu96gRBV7sEs=;
 b=gfg8vJbu8p2Hfrnc7mji1SXIAz5bNRz9XUws/v8PQr8NG7+6O1oAKhVtcV7eLPXVK8
 Y01om955ouzOz7GCvp5pc16snZTUwemY5b9AQBG8cayhCJ6x3izTk4sV0UQ/3TYnuMev
 ScOquKovd8ZaQUjbalpqnzxVOy2oIa0f581crDGOj6C93VZw6AS88BZUDMsgUQqcCyEN
 KczRahG/ByPvTOElmFMl8Lnk3GL6dRuZ6I4LVPNTWYkQpEo9l3Nc25YoGPY6qhSO2lG0
 CQ2SlLrtj17uU6gdU+Zs3Z89w0SZ+pAWxrQXibMiL6K1x6RT61XZeAdM8VqzRbbajv+p
 wbQw==
X-Gm-Message-State: APjAAAVBUHGSb1A+jnIZ4w7BGKlQQdWAIJpU5sjx+mPcdqepmaOsJiEb
 EMimCwtxGLqvgGOMjP8x/pxYQFGqJACwI9f4h5kwQC+VQaTPXnuklWeBroQEX1/sLvJvOUN07v2
 OQq0xMcbSZqUyTsGLZgM1uRQF/4HVoon316E=
X-Received: by 2002:a37:a914:: with SMTP id s20mr4364113qke.270.1581023389556; 
 Thu, 06 Feb 2020 13:09:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqymoEeS5+JrduirwkGw43AKWnP/Ybm0II9IqqUvKAh3lwG34jVCMmO82yKNz5WBJq4HzakLcw==
X-Received: by 2002:a37:a914:: with SMTP id s20mr4364080qke.270.1581023389034; 
 Thu, 06 Feb 2020 13:09:49 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id y21sm272755qto.15.2020.02.06.13.09.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 13:09:47 -0800 (PST)
Date: Thu, 6 Feb 2020 16:09:44 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 17/19] KVM: Terminate memslot walks via used_slots
Message-ID: <20200206210944.GD700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-18-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-18-sean.j.christopherson@intel.com>
X-MC-Unique: gzX6bzvxO7yRNZdfQHDloA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_130958_435264_BD8561FB 
X-CRM114-Status: GOOD (  27.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 02:31:55PM -0800, Sean Christopherson wrote:
> Refactor memslot handling to treat the number of used slots as the de
> facto size of the memslot array, e.g. return NULL from id_to_memslot()
> when an invalid index is provided instead of relying on npages==0 to
> detect an invalid memslot.  Rework the sorting and walking of memslots
> in advance of dynamically sizing memslots to aid bisection and debug,
> e.g. with luck, a bug in the refactoring will bisect here and/or hit a
> WARN instead of randomly corrupting memory.
> 
> Alternatively, a global null/invalid memslot could be returned, i.e. so
> callers of id_to_memslot() don't have to explicitly check for a NULL
> memslot, but that approach runs the risk of introducing difficult-to-
> debug issues, e.g. if the global null slot is modified.  Constifying
> the return from id_to_memslot() to combat such issues is possible, but
> would require a massive refactoring of arch specific code and would
> still be susceptible to casting shenanigans.
> 
> Add function comments to update_memslots() and search_memslots() to
> explicitly (and loudly) state how memslots are sorted.
> 
> No functional change intended.
> 
> Tested-by: Christoffer Dall <christoffer.dall@arm.com>
> Tested-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/powerpc/kvm/book3s_hv.c |   2 +-
>  arch/x86/kvm/x86.c           |  14 +--
>  include/linux/kvm_host.h     |  18 ++-
>  virt/kvm/arm/mmu.c           |   9 +-
>  virt/kvm/kvm_main.c          | 220 ++++++++++++++++++++++++++---------
>  5 files changed, 189 insertions(+), 74 deletions(-)
> 
> diff --git a/arch/powerpc/kvm/book3s_hv.c b/arch/powerpc/kvm/book3s_hv.c
> index 4afabedcbace..ea03cb868151 100644
> --- a/arch/powerpc/kvm/book3s_hv.c
> +++ b/arch/powerpc/kvm/book3s_hv.c
> @@ -4397,7 +4397,7 @@ static int kvm_vm_ioctl_get_dirty_log_hv(struct kvm *kvm,
>  	slots = kvm_memslots(kvm);
>  	memslot = id_to_memslot(slots, log->slot);
>  	r = -ENOENT;
> -	if (!memslot->dirty_bitmap)
> +	if (!memslot || !memslot->dirty_bitmap)
>  		goto out;
>  
>  	/*
> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> index 07f7d6458b89..53d2a86cc91e 100644
> --- a/arch/x86/kvm/x86.c
> +++ b/arch/x86/kvm/x86.c
> @@ -9630,9 +9630,9 @@ void kvm_arch_sync_events(struct kvm *kvm)
>  int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
>  {
>  	int i, r;
> -	unsigned long hva;
> +	unsigned long hva, uninitialized_var(old_npages);
>  	struct kvm_memslots *slots = kvm_memslots(kvm);
> -	struct kvm_memory_slot *slot, old;
> +	struct kvm_memory_slot *slot;
>  
>  	/* Called with kvm->slots_lock held.  */
>  	if (WARN_ON(id >= KVM_MEM_SLOTS_NUM))
> @@ -9640,7 +9640,7 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
>  
>  	slot = id_to_memslot(slots, id);
>  	if (size) {
> -		if (slot->npages)
> +		if (slot && slot->npages)
>  			return -EEXIST;
>  
>  		/*
> @@ -9652,13 +9652,13 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
>  		if (IS_ERR((void *)hva))
>  			return PTR_ERR((void *)hva);
>  	} else {
> -		if (!slot->npages)
> +		if (!slot || !slot->npages)
>  			return 0;
>  
> -		hva = 0;
> +		hva = slot->userspace_addr;

Is this intended?

> +		old_npages = slot->npages;
>  	}
>  
> -	old = *slot;
>  	for (i = 0; i < KVM_ADDRESS_SPACE_NUM; i++) {
>  		struct kvm_userspace_memory_region m;
>  
> @@ -9673,7 +9673,7 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
>  	}
>  
>  	if (!size)
> -		vm_munmap(old.userspace_addr, old.npages * PAGE_SIZE);
> +		vm_munmap(hva, old_npages * PAGE_SIZE);
>  
>  	return 0;
>  }
> diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> index f05be99dc44a..60ddfdb69378 100644
> --- a/include/linux/kvm_host.h
> +++ b/include/linux/kvm_host.h
> @@ -572,10 +572,11 @@ static inline int kvm_vcpu_get_idx(struct kvm_vcpu *vcpu)
>  	return vcpu->vcpu_idx;
>  }
>  
> -#define kvm_for_each_memslot(memslot, slots)	\
> -	for (memslot = &slots->memslots[0];	\
> -	      memslot < slots->memslots + KVM_MEM_SLOTS_NUM && memslot->npages;\
> -		memslot++)
> +#define kvm_for_each_memslot(memslot, slots)				\
> +	for (memslot = &slots->memslots[0];				\
> +	     memslot < slots->memslots + slots->used_slots; memslot++)	\
> +		if (WARN_ON_ONCE(!memslot->npages)) {			\
> +		} else
>  
>  void kvm_vcpu_destroy(struct kvm_vcpu *vcpu);
>  
> @@ -635,12 +636,15 @@ static inline struct kvm_memslots *kvm_vcpu_memslots(struct kvm_vcpu *vcpu)
>  	return __kvm_memslots(vcpu->kvm, as_id);
>  }
>  
> -static inline struct kvm_memory_slot *
> -id_to_memslot(struct kvm_memslots *slots, int id)
> +static inline
> +struct kvm_memory_slot *id_to_memslot(struct kvm_memslots *slots, int id)
>  {
>  	int index = slots->id_to_index[id];
>  	struct kvm_memory_slot *slot;
>  
> +	if (index < 0)
> +		return NULL;
> +
>  	slot = &slots->memslots[index];
>  
>  	WARN_ON(slot->id != id);
> @@ -1005,6 +1009,8 @@ bool kvm_arch_irqfd_allowed(struct kvm *kvm, struct kvm_irqfd *args);
>   * used in non-modular code in arch/powerpc/kvm/book3s_hv_rm_mmu.c.
>   * gfn_to_memslot() itself isn't here as an inline because that would
>   * bloat other code too much.
> + *
> + * IMPORTANT: Slots are sorted from highest GFN to lowest GFN!

(this confused me too..)

>   */
>  static inline struct kvm_memory_slot *
>  search_memslots(struct kvm_memslots *slots, gfn_t gfn)
> diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> index 23af65f8fd0f..a1d3813bad76 100644
> --- a/virt/kvm/arm/mmu.c
> +++ b/virt/kvm/arm/mmu.c
> @@ -1535,8 +1535,13 @@ void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot)
>  {
>  	struct kvm_memslots *slots = kvm_memslots(kvm);
>  	struct kvm_memory_slot *memslot = id_to_memslot(slots, slot);
> -	phys_addr_t start = memslot->base_gfn << PAGE_SHIFT;
> -	phys_addr_t end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
> +	phys_addr_t start, end;
> +
> +	if (WARN_ON_ONCE(!memslot))
> +		return;
> +
> +	start = memslot->base_gfn << PAGE_SHIFT;
> +	end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
>  
>  	spin_lock(&kvm->mmu_lock);
>  	stage2_wp_range(kvm, start, end);
> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index 190c065da48d..9b614cf2ca20 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -565,7 +565,7 @@ static struct kvm_memslots *kvm_alloc_memslots(void)
>  		return NULL;
>  
>  	for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
> -		slots->id_to_index[i] = slots->memslots[i].id = i;
> +		slots->id_to_index[i] = slots->memslots[i].id = -1;
>  
>  	return slots;
>  }
> @@ -869,63 +869,162 @@ static int kvm_create_dirty_bitmap(struct kvm_memory_slot *memslot)
>  }
>  
>  /*
> - * Insert memslot and re-sort memslots based on their GFN,
> - * so binary search could be used to lookup GFN.
> - * Sorting algorithm takes advantage of having initially
> - * sorted array and known changed memslot position.
> + * Delete a memslot by decrementing the number of used slots and shifting all
> + * other entries in the array forward one spot.
> + */
> +static inline void kvm_memslot_delete(struct kvm_memslots *slots,
> +				      struct kvm_memory_slot *memslot)
> +{
> +	struct kvm_memory_slot *mslots = slots->memslots;
> +	int i;
> +
> +	if (WARN_ON(slots->id_to_index[memslot->id] == -1))
> +		return;
> +
> +	slots->used_slots--;
> +
> +	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots; i++) {
> +		mslots[i] = mslots[i + 1];
> +		slots->id_to_index[mslots[i].id] = i;
> +	}
> +	mslots[i] = *memslot;
> +	slots->id_to_index[memslot->id] = -1;
> +}
> +
> +/*
> + * "Insert" a new memslot by incrementing the number of used slots.  Returns
> + * the new slot's initial index into the memslots array.
> + */
> +static inline int kvm_memslot_insert_back(struct kvm_memslots *slots)

The naming here didn't help me to understand but a bit more
confused...

How about "kvm_memslot_insert_end"?  Or even unwrap it.

> +{
> +	return slots->used_slots++;
> +}
> +
> +/*
> + * Move a changed memslot backwards in the array by shifting existing slots
> + * with a higher GFN toward the front of the array.  Note, the changed memslot
> + * itself is not preserved in the array, i.e. not swapped at this time, only
> + * its new index into the array is tracked.  Returns the changed memslot's
> + * current index into the memslots array.
> + */
> +static inline int kvm_memslot_move_backward(struct kvm_memslots *slots,
> +					    struct kvm_memory_slot *memslot)

"backward" makes me feel like it's moving towards smaller index,
instead it's moving to bigger index.  Same applies to "forward" below.
I'm not sure whether I'm the only one, though...

> +{
> +	struct kvm_memory_slot *mslots = slots->memslots;
> +	int i;
> +
> +	if (WARN_ON_ONCE(slots->id_to_index[memslot->id] == -1) ||
> +	    WARN_ON_ONCE(!slots->used_slots))
> +		return -1;
> +
> +	/*
> +	 * Move the target memslot backward in the array by shifting existing
> +	 * memslots with a higher GFN (than the target memslot) towards the
> +	 * front of the array.
> +	 */
> +	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots - 1; i++) {
> +		if (memslot->base_gfn > mslots[i + 1].base_gfn)
> +			break;
> +
> +		WARN_ON_ONCE(memslot->base_gfn == mslots[i + 1].base_gfn);

Will this trigger?  Note that in __kvm_set_memory_region() we have
already checked overlap of memslots.

> +
> +		/* Shift the next memslot forward one and update its index. */
> +		mslots[i] = mslots[i + 1];
> +		slots->id_to_index[mslots[i].id] = i;
> +	}
> +	return i;
> +}
> +
> +/*
> + * Move a changed memslot forwards in the array by shifting existing slots with
> + * a lower GFN toward the back of the array.  Note, the changed memslot itself
> + * is not preserved in the array, i.e. not swapped at this time, only its new
> + * index into the array is tracked.  Returns the changed memslot's final index
> + * into the memslots array.
> + */
> +static inline int kvm_memslot_move_forward(struct kvm_memslots *slots,
> +					   struct kvm_memory_slot *memslot,
> +					   int start)

Same question on the naming.

> +{
> +	struct kvm_memory_slot *mslots = slots->memslots;
> +	int i;
> +
> +	for (i = start; i > 0; i--) {
> +		if (memslot->base_gfn < mslots[i - 1].base_gfn)
> +			break;

(The very careful ">=" converted to "<" here, looks correct, though
 after the refactoring it should not matter any more)

> +
> +		WARN_ON_ONCE(memslot->base_gfn == mslots[i - 1].base_gfn);

Same here.

> +
> +		/* Shift the next memslot back one and update its index. */
> +		mslots[i] = mslots[i - 1];
> +		slots->id_to_index[mslots[i].id] = i;
> +	}
> +	return i;
> +}
> +
> +/*
> + * Re-sort memslots based on their GFN to account for an added, deleted, or
> + * moved memslot.  Sorting memslots by GFN allows using a binary search during
> + * memslot lookup.
> + *
> + * IMPORTANT: Slots are sorted from highest GFN to lowest GFN!  I.e. the entry
> + * at memslots[0] has the highest GFN.
> + *
> + * The sorting algorithm takes advantage of having initially sorted memslots
> + * and knowing the position of the changed memslot.  Sorting is also optimized
> + * by not swapping the updated memslot and instead only shifting other memslots
> + * and tracking the new index for the update memslot.  Only once its final
> + * index is known is the updated memslot copied into its position in the array.
> + *
> + *  - When deleting a memslot, the deleted memslot simply needs to be moved to
> + *    the end of the array.
> + *
> + *  - When creating a memslot, the algorithm "inserts" the new memslot at the
> + *    end of the array and then it forward to its correct location.
> + *
> + *  - When moving a memslot, the algorithm first moves the updated memslot
> + *    backward to handle the scenario where the memslot's GFN was changed to a
> + *    lower value.  update_memslots() then falls through and runs the same flow
> + *    as creating a memslot to move the memslot forward to handle the scenario
> + *    where its GFN was changed to a higher value.
> + *
> + * Note, slots are sorted from highest->lowest instead of lowest->highest for
> + * historical reasons.  Originally, invalid memslots where denoted by having
> + * GFN=0, thus sorting from highest->lowest naturally sorted invalid memslots
> + * to the end of the array.  The current algorithm uses dedicated logic to
> + * delete a memslot and thus does not rely on invalid memslots having GFN=0.
> + *
> + * The other historical motiviation for highest->lowest was to improve the
> + * performance of memslot lookup.  KVM originally used a linear search starting
> + * at memslots[0].  On x86, the largest memslot usually has one of the highest,
> + * if not *the* highest, GFN, as the bulk of the guest's RAM is located in a
> + * single memslot above the 4gb boundary.  As the largest memslot is also the
> + * most likely to be referenced, sorting it to the front of the array was
> + * advantageous.  The current binary search starts from the middle of the array
> + * and uses an LRU pointer to improve performance for all memslots and GFNs.
>   */
>  static void update_memslots(struct kvm_memslots *slots,
> -			    struct kvm_memory_slot *new,
> +			    struct kvm_memory_slot *memslot,
>  			    enum kvm_mr_change change)
>  {
> -	int id = new->id;
> -	int i = slots->id_to_index[id];
> -	struct kvm_memory_slot *mslots = slots->memslots;
> +	int i;
>  
> -	WARN_ON(mslots[i].id != id);
> -	switch (change) {
> -	case KVM_MR_CREATE:
> -		slots->used_slots++;
> -		WARN_ON(mslots[i].npages || !new->npages);
> -		break;
> -	case KVM_MR_DELETE:
> -		slots->used_slots--;
> -		WARN_ON(new->npages || !mslots[i].npages);
> -		break;
> -	default:
> -		break;
> -	}
> +	if (change == KVM_MR_DELETE) {
> +		kvm_memslot_delete(slots, memslot);
> +	} else {
> +		if (change == KVM_MR_CREATE)
> +			i = kvm_memslot_insert_back(slots);
> +		else
> +			i = kvm_memslot_move_backward(slots, memslot);
> +		i = kvm_memslot_move_forward(slots, memslot, i);
>  
> -	while (i < KVM_MEM_SLOTS_NUM - 1 &&
> -	       new->base_gfn <= mslots[i + 1].base_gfn) {
> -		if (!mslots[i + 1].npages)
> -			break;
> -		mslots[i] = mslots[i + 1];
> -		slots->id_to_index[mslots[i].id] = i;
> -		i++;
> +		/*
> +		 * Copy the memslot to its new position in memslots and update
> +		 * its index accordingly.
> +		 */
> +		slots->memslots[i] = *memslot;
> +		slots->id_to_index[memslot->id] = i;
>  	}
> -
> -	/*
> -	 * The ">=" is needed when creating a slot with base_gfn == 0,
> -	 * so that it moves before all those with base_gfn == npages == 0.
> -	 *
> -	 * On the other hand, if new->npages is zero, the above loop has
> -	 * already left i pointing to the beginning of the empty part of
> -	 * mslots, and the ">=" would move the hole backwards in this
> -	 * case---which is wrong.  So skip the loop when deleting a slot.
> -	 */
> -	if (new->npages) {
> -		while (i > 0 &&
> -		       new->base_gfn >= mslots[i - 1].base_gfn) {
> -			mslots[i] = mslots[i - 1];
> -			slots->id_to_index[mslots[i].id] = i;
> -			i--;
> -		}
> -	} else
> -		WARN_ON_ONCE(i != slots->used_slots);
> -
> -	mslots[i] = *new;
> -	slots->id_to_index[mslots[i].id] = i;
>  }
>  
>  static int check_memory_region_flags(const struct kvm_userspace_memory_region *mem)
> @@ -1104,8 +1203,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
>  	 * when the memslots are re-sorted by update_memslots().
>  	 */
>  	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> -	old = *tmp;
> -	tmp = NULL;

I was confused in that patch, then...

> +	if (tmp) {
> +		old = *tmp;
> +		tmp = NULL;

... now I still don't know why it needs to set to NULL?

> +	} else {
> +		memset(&old, 0, sizeof(old));
> +		old.id = id;
> +	}
>  
>  	if (!mem->memory_size)
>  		return kvm_delete_memslot(kvm, mem, &old, as_id);
> @@ -1223,7 +1327,7 @@ int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
>  
>  	slots = __kvm_memslots(kvm, as_id);
>  	*memslot = id_to_memslot(slots, id);
> -	if (!(*memslot)->dirty_bitmap)
> +	if (!(*memslot) || !(*memslot)->dirty_bitmap)
>  		return -ENOENT;
>  
>  	kvm_arch_sync_dirty_log(kvm, *memslot);
> @@ -1281,10 +1385,10 @@ static int kvm_get_dirty_log_protect(struct kvm *kvm, struct kvm_dirty_log *log)
>  
>  	slots = __kvm_memslots(kvm, as_id);
>  	memslot = id_to_memslot(slots, id);
> +	if (!memslot || !memslot->dirty_bitmap)
> +		return -ENOENT;
>  
>  	dirty_bitmap = memslot->dirty_bitmap;
> -	if (!dirty_bitmap)
> -		return -ENOENT;
>  
>  	kvm_arch_sync_dirty_log(kvm, memslot);
>  
> @@ -1392,10 +1496,10 @@ static int kvm_clear_dirty_log_protect(struct kvm *kvm,
>  
>  	slots = __kvm_memslots(kvm, as_id);
>  	memslot = id_to_memslot(slots, id);
> +	if (!memslot || !memslot->dirty_bitmap)
> +		return -ENOENT;
>  
>  	dirty_bitmap = memslot->dirty_bitmap;
> -	if (!dirty_bitmap)
> -		return -ENOENT;
>  
>  	n = ALIGN(log->num_pages, BITS_PER_LONG) / 8;
>  
> -- 
> 2.24.1
> 

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C74A4E3C25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 21:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAa8mJe3Bgy14aaIY1DipoVaho70ZkD1ad4lqq53jM8=; b=B1fGLGmaxioBP6
	ekiG4KpU+35RJ0l59opbeHxGO6rse4m1a71A3RxIoOmkGmxtqGwgXRQEuBe2CPIC+rLX66Bt7NQlH
	tIZoAklixHYGz/3msJuYWycXXVxxcbFe6KS8BCgiL7WYsUGESTULYiHIVAcROvpAKs+5Poe8CDATO
	X1KPvaxeJntK0rLX2dFuFykjJVYsjGCfCBKpkn3Xc01PRI/CDwg6Na8ZWNQxN8uXS6Amf0AKLciwI
	5ZhxVxW7b14aDhE+hj1/iNbrncs5SkHdVAs2Dhf82cUgWbl9Yy6umG0Vp6TAYeHYadkEoBcSvA13B
	+bEickZ3ieuaVRwKGIpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNiwy-0002Xy-OD; Thu, 24 Oct 2019 19:39:12 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNiwm-0002XI-0g
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 19:39:01 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 12:38:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="223680295"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by fmsmga004.fm.intel.com with ESMTP; 24 Oct 2019 12:38:56 -0700
Date: Thu, 24 Oct 2019 12:38:56 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v2 14/15] KVM: Terminate memslot walks via used_slots
Message-ID: <20191024193856.GA28043@linux.intel.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-15-sean.j.christopherson@intel.com>
 <642f73ee-9425-0149-f4f4-f56be9ae5713@redhat.com>
 <20191022152827.GC2343@linux.intel.com>
 <625e511f-bd35-3b92-0c6d-550c10fc5827@redhat.com>
 <20191022155220.GD2343@linux.intel.com>
 <5c61c094-ee32-4dcf-b3ae-092eba0159c5@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c61c094-ee32-4dcf-b3ae-092eba0159c5@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_123900_102466_E610A747 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 05:53:27PM +0200, Paolo Bonzini wrote:
> On 22/10/19 17:52, Sean Christopherson wrote:
> > 
> > Anyways, I'm not at all opposed to adding comments, just want to make sure
> > I'm not forgetting something.  If it's ok with you, I'll comment the code
> > and/or functions and reply here to refine them without having to respin
> > the whole series.
> 
> Yes, I agree this is better.

Here's what I ended up with.  I also added kvm_memslot_insert_back() to
help document the purpose of incrementing used_slots, and renamed
kvm_shift_memslots_forward()->kvm_memslot_move_backward() and
kvm_shift_memslots_backward()->kvm_memslot_move_forward() because I was
having trouble reconciling having the comments focus on the changed
memslot while the names of the functions reflected what happens to the
other memslots.



/*
 * Delete a memslot by decrementing the number of used slots and shifting all
 * other entries in the array forward one spot.
 */
static inline void kvm_memslot_delete(struct kvm_memslots *slots,
				      struct kvm_memory_slot *memslot)
{
	struct kvm_memory_slot *mslots = slots->memslots;
	int i;

	if (WARN_ON(slots->id_to_index[memslot->id] == -1))
		return;

	slots->used_slots--;

	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots; i++) {
		mslots[i] = mslots[i + 1];
		slots->id_to_index[mslots[i].id] = i;
	}
	mslots[i] = *memslot;
	slots->id_to_index[memslot->id] = -1;
}

/*
 * "Insert" a new memslot by incrementing the number of used slots.  Returns
 * the new slot's initial index into the memslots array.
 */
static inline int kvm_memslot_insert_back(struct kvm_memslots *slots)
{
	return slots->used_slots++;
}

/*
 * Move a changed memslot backwards in the array by shifting existing slots
 * with a higher GFN toward the front of the array.  Note, the changed memslot
 * itself is not preserved in the array, i.e. not swapped at this time, only
 * its new index into the array is update.  Returns the changed memslot's
 * current index into the memslots array.
 */
static inline int kvm_memslot_move_backward(struct kvm_memslots *slots,
					    struct kvm_memory_slot *memslot)
{
	struct kvm_memory_slot *mslots = slots->memslots;
	int i;

	if (WARN_ON_ONCE(slots->id_to_index[memslot->id] == -1) ||
	    WARN_ON_ONCE(!slots->used_slots))
		return -1;

	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots - 1; i++) {
		if (memslot->base_gfn > mslots[i + 1].base_gfn)
			break;

		WARN_ON_ONCE(memslot->base_gfn == mslots[i + 1].base_gfn);

		/* Shift the next memslot forward one and update its index. */
		mslots[i] = mslots[i + 1];
		slots->id_to_index[mslots[i].id] = i;
	}
	return i;
}

/*
 * Move a changed memslot forwards in the array by shifting existing slots with
 * a lower GFN toward the back of the array.  Note, the changed memslot itself
 * is not preserved in the array, i.e. not swapped at this time, only its new
 * index into the array is updated.  Returns the changed memslot's final index
 * into the memslots array.
 */
static inline int kvm_memslot_move_forward(struct kvm_memslots *slots,
					   struct kvm_memory_slot *memslot,
					   int start)
{
	struct kvm_memory_slot *mslots = slots->memslots;
	int i;

	for (i = start; i > 0; i--) {
		if (memslot->base_gfn < mslots[i - 1].base_gfn)
			break;

		WARN_ON_ONCE(memslot->base_gfn == mslots[i - 1].base_gfn);

		/* Shift the next memslot back one and update its index. */
		mslots[i] = mslots[i - 1];
		slots->id_to_index[mslots[i].id] = i;
	}
	return i;
}

/*
 * Re-sort memslots based on their GFN to account for an added, deleted, or
 * moved memslot.  Sorting memslots allows using a binary search during memslot
 * lookup.
 *
 * IMPORTANT: Slots are sorted from highest GFN to lowest GFN!  I.e. the entry
 * at memslots[0] has the highest GFN.
 *
 * The sorting algorithm takes advantage of having initially sorted memslots
 * and knowing the position of the changed memslot.  Sorting is also optimized
 * by not swapping the updated memslot and instead only shifting other memslots
 * and tracking the new index for the update memslot.  Only once its final
 * index is known is the updated memslot copied into its position in the array.
 *
 *  - When deleting a memslot, the deleted memslot simply needs to be moved to
 *    the end of the array.
 *
 *  - When creating a memslot, the algorithm "inserts" the new memslot at the
 *    end of the array and then it forward to its correct location.
 *
 *  - When moving a memslot, the algorithm first moves the updated memslot
 *    backward to handle the scenario where the memslot's GFN was changed to a
 *    lower value.  update_memslots() then falls through and runs the same flow
 *    as creating a memslot to move the memslot forward to handle the scenario
 *    where its GFN was changed to a higher value.
 *
 * Note, slots are sorted from highest->lowest instead of lowest->highest for
 * historical reasons.  Originally, invalid memslots where denoted by having
 * GFN=0, thus sorting from highest->lowest naturally sorted invalid memslots
 * to the end of the array.  The current algorithm uses dedicated logic when
 * deleting a memslot and thus does not rely on invalid memslots having GFN=0.
 */
static void update_memslots(struct kvm_memslots *slots,
			    struct kvm_memory_slot *memslot,
			    enum kvm_mr_change change)
{
	int i;

	if (change == KVM_MR_DELETE) {
		kvm_memslot_delete(slots, memslot);
	} else {
		if (change == KVM_MR_CREATE)
			i = kvm_memslot_insert_back(slots);
		else
			i = kvm_memslot_move_backward(slots, memslot);
		i = kvm_memslot_move_forward(slots, memslot, i);

		/*
		 * Copy the memslot to its new position in memslots and update
		 * its index accordingly.
		 */
		slots->memslots[i] = *memslot;
		slots->id_to_index[memslot->id] = i;
	}
}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

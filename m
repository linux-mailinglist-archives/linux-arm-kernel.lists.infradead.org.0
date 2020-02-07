Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B223156088
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 22:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRuTclruiaIE+8UV3sT48OUp1OAKkLiOcyfjdVTjS7c=; b=c7PhZT73I/LMd9
	LUPEPY0iPiJ7PhoOy7CLlPoFgOEUTSHg/CLjyiEVvE+soDYiCAhhFEe8uv1JAuNB96VWCtV/ZZZdH
	VptnnTw3jsby7sidm2k2qy+ScKIn2FfZ8u3c1qvALqT8PJKYF9MwyLTBQf9cXxnMGL/fnjeNYBwSz
	fOTnlHKXmlX+KcVStWQLiN3qyTq26vKho43B38QOU30fUlYfz4w5/mABmQQTXG4ExOKIwTearFv0U
	TMQpyFH5iPx5pXd4nvAosxvrXmzWeDifJHGJQbsx675hLzZCyGYL6MzVYzuIHutytsz0N8MENs3KY
	Y6wqJmM4Ep6yeLZFryyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0AtQ-0002oc-8O; Fri, 07 Feb 2020 21:10:28 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0AtH-0002ns-6r
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 21:10:20 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 13:10:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="220912856"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 07 Feb 2020 13:10:16 -0800
Date: Fri, 7 Feb 2020 13:10:16 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 17/19] KVM: Terminate memslot walks via used_slots
Message-ID: <20200207211016.GN2401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-18-sean.j.christopherson@intel.com>
 <20200206210944.GD700495@xz-x1>
 <20200207183325.GI2401@linux.intel.com>
 <20200207203909.GE720553@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207203909.GE720553@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_131019_262515_4DFED9AB 
X-CRM114-Status: GOOD (  27.60  )
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

On Fri, Feb 07, 2020 at 03:39:09PM -0500, Peter Xu wrote:
> On Fri, Feb 07, 2020 at 10:33:25AM -0800, Sean Christopherson wrote:
> > On Thu, Feb 06, 2020 at 04:09:44PM -0500, Peter Xu wrote:
> > > On Tue, Jan 21, 2020 at 02:31:55PM -0800, Sean Christopherson wrote:
> > > > @@ -9652,13 +9652,13 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
> > > >  		if (IS_ERR((void *)hva))
> > > >  			return PTR_ERR((void *)hva);
> > > >  	} else {
> > > > -		if (!slot->npages)
> > > > +		if (!slot || !slot->npages)
> > > >  			return 0;
> > > >  
> > > > -		hva = 0;
> > > > +		hva = slot->userspace_addr;
> > > 
> > > Is this intended?
> > 
> > Yes.  It's possible to allow VA=0 for userspace mappings.  It's extremely
> > uncommon, but possible.  Therefore "hva == 0" shouldn't be used to
> > indicate an invalid slot.
> 
> Note that this is the deletion path in __x86_set_memory_region() not
> allocation.  IIUC userspace_addr won't even be used in follow up code
> path so it shouldn't really matter.  Or am I misunderstood somewhere?

No, but that's precisely why I don't want to zero out @hva, as doing so
implies that '0' indicates an invalid hva, which is wrong.

What if I change this to 

			hva = 0xdeadull << 48;

and add a blurb in the changelog about stuff hva with a non-canonical value
to indicate it's being destroyed.

> > > > +		old_npages = slot->npages;
> > > >  	}
> > > >  
> > > > -	old = *slot;
> > > >  	for (i = 0; i < KVM_ADDRESS_SPACE_NUM; i++) {
> > > >  		struct kvm_userspace_memory_region m;
> > > >  

...

> > > > +{
> > > > +	struct kvm_memory_slot *mslots = slots->memslots;
> > > > +	int i;
> > > > +
> > > > +	if (WARN_ON_ONCE(slots->id_to_index[memslot->id] == -1) ||
> > > > +	    WARN_ON_ONCE(!slots->used_slots))
> > > > +		return -1;
> > > > +
> > > > +	/*
> > > > +	 * Move the target memslot backward in the array by shifting existing
> > > > +	 * memslots with a higher GFN (than the target memslot) towards the
> > > > +	 * front of the array.
> > > > +	 */
> > > > +	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots - 1; i++) {
> > > > +		if (memslot->base_gfn > mslots[i + 1].base_gfn)
> > > > +			break;
> > > > +
> > > > +		WARN_ON_ONCE(memslot->base_gfn == mslots[i + 1].base_gfn);
> > > 
> > > Will this trigger?  Note that in __kvm_set_memory_region() we have
> > > already checked overlap of memslots.
> > 
> > If you screw up the code it will :-)  In a perfect world, no WARN() will
> > *ever* trigger.  All of the added WARN_ON_ONCE() are to help the next poor
> > soul that wants to modify this code.
> 
> I normally won't keep WARN_ON if it is 100% not triggering (100% here
> I mean when e.g. it is checked twice so the 1st one will definitely
> trigger first).  My question is more like a pure question in case I
> overlooked something.  Please also feel free to keep it if you want.

Ah.  The WARNs here as much to concisely document the assumptions and
conditions of the code as they are there to enforce those conditions.

> > > > +
> > > > +		/* Shift the next memslot forward one and update its index. */
> > > > +		mslots[i] = mslots[i + 1];
s> > > > +		slots->id_to_index[mslots[i].id] = i;
> > > > +	}
> > > > +	return i;
> > > > +}
> > > > @@ -1104,8 +1203,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
> > 
> > ...
> > 
> > > >  	 * when the memslots are re-sorted by update_memslots().
> > > >  	 */
> > > >  	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> > > > -	old = *tmp;
> > > > -	tmp = NULL;
> > > 
> > > I was confused in that patch, then...
> > > 
> > > > +	if (tmp) {
> > > > +		old = *tmp;
> > > > +		tmp = NULL;
> > > 
> > > ... now I still don't know why it needs to set to NULL?
> > 
> > To make it abundantly clear that though shall not use @tmp, i.e. to force
> > using the copy and not the pointer.  Note, @tmp is also reused as an
> > iterator below.
> 
> OK it still feels a bit strange, say, we can comment on that if you
> wants to warn the others.  The difference is probably no useless
> instruction executed.  But this is also trivial, I'll leave to the
> others to judge.

After having suffered through deciphering this code and blundering into
nasty gotchas more than once, I'd really like to keep the nullification.
I'll add a comment to explain that the sole purpose is to kill @tmp so it
can't be used incorrectly and thus cause silent failure.

This is also another reason I'd like to keep the WARN_ONs.  When this code
goes awry, the result is usually silent corruption and delayed explosions,
i.e. failures that absolutely suck to debug.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

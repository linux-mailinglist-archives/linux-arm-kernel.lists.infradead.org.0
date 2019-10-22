Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76812E07EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wr+PcDFu/ZqCyIBX/weoRFXAq6oxZ/M6zylErByBtY4=; b=rdCyH5cVoebawc
	0W3Uz0M8F1Y6v3ug66T8u3Pe3rON3XVqp3XG+ma2rdW0QXVgpHRgtbfhR3/AHZ6arpukIuUvALWum
	LZofBD7FbHwoh/XPHXovfyKLhiDy6N4zQWI2QdCqNxkYpjCr583oCd0D+T4E5P1alcNextrh44GVL
	aia1bhWELfqUmCaySARXQY95lEbpGLT4Re7EJw4+aD5wLsusyrWyViSUhLv4NY14p0tqQD6FRFaSO
	W8iIwiCyn5oC6shnIUshXcPFYwTrQPQwEy5j9SQv0ApdzvgnC+2runAjwkTdErBk+suuNcKKLZEoH
	IFPLWUw9Wxm1wOZfhz1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwSa-0007cw-Cz; Tue, 22 Oct 2019 15:52:36 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwSN-0007c3-SZ
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:52:25 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 08:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,216,1569308400"; d="scan'208";a="196476114"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by fmsmga008.fm.intel.com with ESMTP; 22 Oct 2019 08:52:20 -0700
Date: Tue, 22 Oct 2019 08:52:20 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v2 14/15] KVM: Terminate memslot walks via used_slots
Message-ID: <20191022155220.GD2343@linux.intel.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-15-sean.j.christopherson@intel.com>
 <642f73ee-9425-0149-f4f4-f56be9ae5713@redhat.com>
 <20191022152827.GC2343@linux.intel.com>
 <625e511f-bd35-3b92-0c6d-550c10fc5827@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <625e511f-bd35-3b92-0c6d-550c10fc5827@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_085223_965688_18B9937E 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

On Tue, Oct 22, 2019 at 05:30:58PM +0200, Paolo Bonzini wrote:
> On 22/10/19 17:28, Sean Christopherson wrote:
> > On Tue, Oct 22, 2019 at 04:04:18PM +0200, Paolo Bonzini wrote:
> >> On 22/10/19 02:35, Sean Christopherson wrote:
> >>> +static inline int kvm_shift_memslots_forward(struct kvm_memslots *slots,
> >>> +					     struct kvm_memory_slot *new)
> >>> +{
> >>> +	struct kvm_memory_slot *mslots = slots->memslots;
> >>> +	int i;
> >>> +
> >>> +	if (WARN_ON_ONCE(slots->id_to_index[new->id] == -1) ||
> >>> +	    WARN_ON_ONCE(!slots->used_slots))
> >>> +		return -1;
> >>> +
> >>> +	for (i = slots->id_to_index[new->id]; i < slots->used_slots - 1; i++) {
> >>> +		if (new->base_gfn > mslots[i + 1].base_gfn)
> >>> +			break;
> >>> +
> >>> +		WARN_ON_ONCE(new->base_gfn == mslots[i + 1].base_gfn);
> >>> +
> >>> +		/* Shift the next memslot forward one and update its index. */
> >>> +		mslots[i] = mslots[i + 1];
> >>> +		slots->id_to_index[mslots[i].id] = i;
> >>> +	}
> >>> +	return i;
> >>> +}
> >>> +
> >>> +static inline int kvm_shift_memslots_back(struct kvm_memslots *slots,
> >>> +					  struct kvm_memory_slot *new,
> >>> +					  int start)
> >>
> >> This new implementation of the insertion sort loses the comments that
> >> were there in the old one.  Please keep them as function comments.
> > 
> > I assume you're talking about this blurb in particular?
> > 
> > 	 * The ">=" is needed when creating a slot with base_gfn == 0,
> > 	 * so that it moves before all those with base_gfn == npages == 0.
> 
> Yes, well all of the comments.  You can also keep them in the caller, as
> you prefer.

The primary function comment is still there, the only other comment that I
dropped was the second half of the above comment:

	 *
	 * On the other hand, if new->npages is zero, the above loop has
	 * already left i pointing to the beginning of the empty part of
	 * mslots, and the ">=" would move the hole backwards in this
	 * case---which is wrong.  So skip the loop when deleting a slot.
	 */

Which doesn't carry forward very well.  Is there another comment I'm
overlooking?

Anyways, I'm not at all opposed to adding comments, just want to make sure
I'm not forgetting something.  If it's ok with you, I'll comment the code
and/or functions and reply here to refine them without having to respin
the whole series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

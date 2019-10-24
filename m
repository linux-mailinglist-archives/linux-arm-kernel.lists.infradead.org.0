Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843C7E3D87
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQdTP534QbNz9jiQVwoM5uN3C77qDDDcpBm4Qj28Tzc=; b=f0v6wtbmi0h5so
	qngD9aLm80u/iNnrsCp1tqt5/ZmhZ3NGs49wp1R0ZaTUdY0O9szxHyoI3GpC8JagQxWnsNu8wuYVl
	5nt2zTz+fGNSwOFlrpWuFIrHrq4/Vp+njeXGrr1N/qU187cJhWpaNdBmyYZZqb49VcO6Rfq+1fmSL
	P4S0emqymJ0z3CTMLR8k67N82eZ/7yXIgUiWAIZ006vdhCTL1lePXghtYn63fhnY/hxykTkrP770Q
	mr8aTrAXQI1ljdRWfIEbhB+VdjoAxLpIGZtIC5JHEX0NG/rf5cAzQ3P4lQxIwKgekUOfZHpUTlS0Z
	ccnG8Zo329q1yMuM3hrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNk29-000836-Ol; Thu, 24 Oct 2019 20:48:37 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNk20-00082k-H0
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:48:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 13:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="201596808"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.41])
 by orsmga003.jf.intel.com with ESMTP; 24 Oct 2019 13:48:26 -0700
Date: Thu, 24 Oct 2019 13:48:26 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v2 14/15] KVM: Terminate memslot walks via used_slots
Message-ID: <20191024204826.GE28043@linux.intel.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-15-sean.j.christopherson@intel.com>
 <642f73ee-9425-0149-f4f4-f56be9ae5713@redhat.com>
 <20191022152827.GC2343@linux.intel.com>
 <625e511f-bd35-3b92-0c6d-550c10fc5827@redhat.com>
 <20191022155220.GD2343@linux.intel.com>
 <5c61c094-ee32-4dcf-b3ae-092eba0159c5@redhat.com>
 <20191024193856.GA28043@linux.intel.com>
 <5320341c-1abb-610b-8f5e-090a6726a9b1@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5320341c-1abb-610b-8f5e-090a6726a9b1@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_134828_576691_1B7101C2 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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

On Thu, Oct 24, 2019 at 10:24:09PM +0200, Paolo Bonzini wrote:
> On 24/10/19 21:38, Sean Christopherson wrote:
> > only
> >  * its new index into the array is update.
> 
> s/update/tracked/?

Ya, tracked is better.  Waffled between updated and tracked, chose poorly :-)

>   Returns the changed memslot's
> >  * current index into the memslots array.
> >  */
> > static inline int kvm_memslot_move_backward(struct kvm_memslots *slots,
> > 					    struct kvm_memory_slot *memslot)
> > {
> > 	struct kvm_memory_slot *mslots = slots->memslots;
> > 	int i;
> > 
> > 	if (WARN_ON_ONCE(slots->id_to_index[memslot->id] == -1) ||
> > 	    WARN_ON_ONCE(!slots->used_slots))
> > 		return -1;
> > 
> > 	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots - 1; i++) {
> > 		if (memslot->base_gfn > mslots[i + 1].base_gfn)
> > 			break;
> > 
> > 		WARN_ON_ONCE(memslot->base_gfn == mslots[i + 1].base_gfn);
> > 
> > 		/* Shift the next memslot forward one and update its index. */
> > 		mslots[i] = mslots[i + 1];
> > 		slots->id_to_index[mslots[i].id] = i;
> > 	}
> > 	return i;
> > }
> > 
> > /*
> >  * Move a changed memslot forwards in the array by shifting existing slots with
> >  * a lower GFN toward the back of the array.  Note, the changed memslot itself
> >  * is not preserved in the array, i.e. not swapped at this time, only its new
> >  * index into the array is updated
> 
> Same here?
> 
> >  * Note, slots are sorted from highest->lowest instead of lowest->highest for
> >  * historical reasons.
> 
> Not just that, the largest slot (with all RAM above 4GB) is also often
> at the highest address at least on x86.

Ah, increasing the odds of a quick hit on lookup...but only when using a
linear search.  The binary search starts in the middle, so that
optimization is also historical :-)

> But we could sort them by size now, so I agree to call these historical
> reasons.

That wouldn't work with the binary search though.

> The code itself is fine, thanks for the work on documenting it.
> 
> Paolo
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

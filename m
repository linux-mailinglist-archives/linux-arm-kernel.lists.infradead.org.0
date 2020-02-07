Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F5B155D42
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 18:59:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0S8cWRakDpflTr/AyauC6uVVJfrzJN4Hk+epDn+u6S8=; b=gfvGOIvpDWV9zZ
	RNyq7tjGvDdDq0ZXIa6PGLX+wGwCFstxEwn4BtCUFMyJPjSgJ0l42IO5ugLNXxuUEG2EuJU7qBNRh
	qds60YIxhWyBY8wX/t2GkwwS7Gc6M+H7QLD0O00laL+raTTeEitvPswssyJPwGSIcJsCKNSnIusy7
	0GwNesyC3T9duIyMT8/hgSrBFbzL6VstiRAr47+ySw7KawXTIgKBHvnUZtE9Wx6MgLP32RAwspNA/
	+uxq5aHYDaLtF53JP1eoIngE28FgEOJx0vljhycaa8XiAjx91e6bNZqX+0wNAYeKv1d/YxWEU1hLJ
	78HkdrlGtLDPe+RbIgpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j07uW-0003Na-H1; Fri, 07 Feb 2020 17:59:24 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j07uO-0003Mi-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 17:59:18 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 09:59:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="280038037"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Feb 2020 09:59:13 -0800
Date: Fri, 7 Feb 2020 09:59:12 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 12/19] KVM: Move memslot deletion to helper function
Message-ID: <20200207175912.GG2401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-13-sean.j.christopherson@intel.com>
 <20200206161415.GA695333@xz-x1>
 <20200206162818.GD13067@linux.intel.com>
 <20200206165116.GE695333@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206165116.GE695333@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_095916_774088_FF5B14B9 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
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

On Thu, Feb 06, 2020 at 11:51:16AM -0500, Peter Xu wrote:
> On Thu, Feb 06, 2020 at 08:28:18AM -0800, Sean Christopherson wrote:
> > On Thu, Feb 06, 2020 at 11:14:15AM -0500, Peter Xu wrote:
> > > On Tue, Jan 21, 2020 at 02:31:50PM -0800, Sean Christopherson wrote:
> > > > Move memslot deletion into its own routine so that the success path for
> > > > other memslot updates does not need to use kvm_free_memslot(), i.e. can
> > > > explicitly destroy the dirty bitmap when necessary.  This paves the way
> > > > for dropping @dont from kvm_free_memslot(), i.e. all callers now pass
> > > > NULL for @dont.
> > > > 
> > > > Add a comment above the code to make a copy of the existing memslot
> > > > prior to deletion, it is not at all obvious that the pointer will become
> > > > stale during sorting and/or installation of new memslots.
> > > 
> > > Could you help explain a bit on this explicit comment?  I can follow
> > > up with the patch itself which looks all correct to me, but I failed
> > > to catch what this extra comment wants to emphasize...
> > 
> > It's tempting to write the code like this (I know, because I did it):
> > 
> > 	if (!mem->memory_size)
> > 		return kvm_delete_memslot(kvm, mem, slot, as_id);
> > 
> > 	new = *slot;
> > 
> > Where @slot is a pointer to the memslot to be deleted.  At first, second,
> > and third glances, this seems perfectly sane.
> > 
> > The issue is that slot was pulled from struct kvm_memslots.memslots, e.g.
> > 
> > 	slot = &slots->memslots[index];
> > 
> > Note that slots->memslots holds actual "struct kvm_memory_slot" objects,
> > not pointers to slots.  When update_memslots() sorts the slots, it swaps
> > the actual slot objects, not pointers.  I.e. after update_memslots(), even
> > though @slot points at the same address, it's could be pointing at a
> > different slot.  As a result kvm_free_memslot() in kvm_delete_memslot()
> > will free the dirty page info and arch-specific points for some random
> > slot, not the intended slot, and will set npages=0 for that random slot.
> 
> Ah I see, thanks.  Another alternative is we move the "old = *slot"
> copy into kvm_delete_memslot(), which could be even clearer imo.

The copy is also needed in __kvm_set_memory_region() for the MOVE case.

> However I'm not sure whether it's a good idea to drop the test-by for
> this.  Considering that comment change should not affect it, would you
> mind enrich the comment into something like this (or anything better)?
> 
> /*
>  * Make a full copy of the old memslot, the pointer will become stale
>  * when the memslots are re-sorted by update_memslots() in
>  * kvm_delete_memslot(), while to make the kvm_free_memslot() work as
>  * expected later on, we still need the cached memory slot.
>  */

As above, it's more subtle than just the kvm_delete_memslot() case.

	/*
	 * Make a full copy of the old memslot, the pointer will become stale
	 * when the memslots are re-sorted by update_memslots() when deleting
	 * or moving a memslot, and additional modifications to the old memslot
	 * need to be made after calling update_memslots().
	 */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

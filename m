Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F2123A3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 23:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOS1+RbY318DGfdEX2nQcL/qhriGyJbNLbqVUc5RDRk=; b=qLmVq5GXQyGY84
	EeRWQUxzh+lApdL6KxBPZh3+EITGDLfxIbHLYIvRa8tDbzm0r4iMiS/LlHh+JnXsHTXER6AWA7p9o
	q1pEOAxtZIykYBP78TRynoTloNIbrxWhnPAcQt7Bc6h7AEq9K6N3OKpEjVnbBlWy93PjxMeuOQJbl
	NPkyurugFuqEqTNVmejkkR8e3F9VZjiT+219appCXFsTSte2YTWxbkSNu1lHym79NE/AtiMz+CYmj
	MWE85ntM5E29up2Hy4QWUDVt7OUzrs6jwYdy3aq1mbTT4TLrDwcD7G++cpzT2jXL038bibXnmMlNF
	NzdIc8RTeaj61gO23+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihLgg-0004V3-MR; Tue, 17 Dec 2019 22:51:30 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihLgY-0004UK-0D
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 22:51:23 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 14:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="247654290"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 14:51:18 -0800
Date: Tue, 17 Dec 2019 14:51:18 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v4 07/19] KVM: Explicitly free allocated-but-unused dirty
 bitmap
Message-ID: <20191217225118.GF11771@linux.intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-8-sean.j.christopherson@intel.com>
 <20191217222446.GK7258@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217222446.GK7258@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_145122_086487_B951ECBF 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?iso-8859-1?Q?Mathieu-Daud=E9?= <f4bug@amsat.org>,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 05:24:46PM -0500, Peter Xu wrote:
> On Tue, Dec 17, 2019 at 12:40:29PM -0800, Sean Christopherson wrote:
> > Explicitly free an allocated-but-unused dirty bitmap instead of relying
> > on kvm_free_memslot() if an error occurs in __kvm_set_memory_region().
> > There is no longer a need to abuse kvm_free_memslot() to free arch
> > specific resources as arch specific code is now called only after the
> > common flow is guaranteed to succeed.  Arch code can still fail, but
> > it's responsible for its own cleanup in that case.
> > 
> > Eliminating the error path's abuse of kvm_free_memslot() paves the way
> > for simplifying kvm_free_memslot(), i.e. dropping its @dont param.
> > 
> > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > ---
> >  virt/kvm/kvm_main.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> > index d403e93e3028..6b2261a9e139 100644
> > --- a/virt/kvm/kvm_main.c
> > +++ b/virt/kvm/kvm_main.c
> > @@ -1096,7 +1096,7 @@ int __kvm_set_memory_region(struct kvm *kvm,
> >  
> >  	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
> >  	if (!slots)
> > -		goto out_free;
> > +		goto out_bitmap;
> >  	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
> >  
> >  	if ((change == KVM_MR_DELETE) || (change == KVM_MR_MOVE)) {
> > @@ -1144,8 +1144,9 @@ int __kvm_set_memory_region(struct kvm *kvm,
> >  	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE)
> >  		slots = install_new_memslots(kvm, as_id, slots);
> >  	kvfree(slots);
> > -out_free:
> > -	kvm_free_memslot(kvm, &new, &old);
> > +out_bitmap:
> > +	if (new.dirty_bitmap && !old.dirty_bitmap)
> > +		kvm_destroy_dirty_bitmap(&new);
> 
> What if both the old and new have KVM_MEM_LOG_DIRTY_PAGES set?
> kvm_free_memslot() did cover that but I see that you explicitly
> dropped it.  Could I ask why?  Thanks,

In that case, old.dirty_bitmap == new.dirty_bitmap, i.e. shouldn't be freed
by this error path since doing so would result in a use-after-free via the
old memslot.

The kvm_free_memslot() logic is the same, albeit in a very twisted way.

In __kvm_set_memory_region(), @old and @new start with the same dirty_bitmap.

	new = old = *slot;

And @new is modified based on KVM_MEM_LOG_DIRTY_PAGES.  If LOG_DIRTY_PAGES
is set in both @new and @old, then both the "if" and "else if" evaluate
false, i.e. new.dirty_bitmap == old.dirty_bitmap.

	/* Allocate/free page dirty bitmap as needed */
	if (!(new.flags & KVM_MEM_LOG_DIRTY_PAGES))
		new.dirty_bitmap = NULL;
	else if (!new.dirty_bitmap) {
		r = kvm_create_dirty_bitmap(&new);
		if (r)
			return r;
	}

Subbing "@free <= @new" and "@dont <= @old" in kvm_free_memslot()

  static void kvm_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
			       struct kvm_memory_slot *dont)
  {
	if (!dont || free->dirty_bitmap != dont->dirty_bitmap)
		kvm_destroy_dirty_bitmap(free);


yeids this, since @old is obviously non-NULL

	if (new.dirty_bitmap != old.dirty_bitmap)
		kvm_destroy_dirty_bitmap(&new);

The dirty_bitmap allocation logic guarantees that new.dirty_bitmap is
  a) NULL (the "if" case")
  b) != old.dirty_bitmap iff old.dirty_bitmap == NULL (the "else if" case)
  c) == old.dirty_bitmap (the implicit "else" case).

kvm_free_memslot() frees @new.dirty_bitmap iff its != @old.dirty_bitmap,
thus the explicit destroy only needs to check for (b).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

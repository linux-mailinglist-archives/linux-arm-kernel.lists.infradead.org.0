Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BA81239B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 23:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGZDNtqcB5GeoCQYOQdWvEQyQNuqtpZohWpIW9OYsxE=; b=nT0HKWbcE0togB
	xJnxmaVBuRV6P5q19yR/3nV6vW6g9Yrsr2WE/FcXDrOcPwzaXB5n6KSvI0q7iK6ZUS2pmz2vT/QjG
	Rvy9FVaQ2z9y0qBC+4Tl3QVkS8fXXu5rpul2ns2464m0hmNoq2IODMC9GSxSrP78pPfJKwrKBijj7
	h+30d0zUyTKeoa57p7J9LOv0+qVIVjy8XcvyBJX4+OSHcMGN1yjgnXSzYF6pEEp4oVAYJ5Xu8WwCo
	FKHRHRjqyIBr4mAxvIUz7HxxWMeHRybTGs8t91KLsf6Szr4jXKNL0O8itaplaZwsY0kpHKHfR3zdn
	XY2HavXUtPHnEn4mSZkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihLDK-0002VG-JU; Tue, 17 Dec 2019 22:21:10 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihLDC-0002UG-6E
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 22:21:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 14:20:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="209859511"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga008.jf.intel.com with ESMTP; 17 Dec 2019 14:20:58 -0800
Date: Tue, 17 Dec 2019 14:20:59 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v4 01/19] KVM: x86: Allocate new rmap and large page
 tracking when moving memslot
Message-ID: <20191217222058.GD11771@linux.intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-2-sean.j.christopherson@intel.com>
 <20191217215640.GI7258@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217215640.GI7258@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_142102_331665_0AC0ACD8 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 David Gibson <david@gibson.dropbear.id.au>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 04:56:40PM -0500, Peter Xu wrote:
> On Tue, Dec 17, 2019 at 12:40:23PM -0800, Sean Christopherson wrote:
> > Reallocate a rmap array and recalcuate large page compatibility when
> > moving an existing memslot to correctly handle the alignment properties
> > of the new memslot.  The number of rmap entries required at each level
> > is dependent on the alignment of the memslot's base gfn with respect to
> > that level, e.g. moving a large-page aligned memslot so that it becomes
> > unaligned will increase the number of rmap entries needed at the now
> > unaligned level.

...

> I think the error-prone part is:
> 
> 	new = old = *slot;

Lol, IMO the error-prone part is the entire memslot mess :-)

> Where IMHO it would be better if we only copy pointers explicitly when
> under control, rather than blindly copying all the pointers in the
> structure which even contains sub-structures.

Long term, yes, that would be ideal.  For the immediate bug fix, reworking
common KVM and other arch code would be unnecessarily dangerous and would
make it more difficult to backport the fix to stable branches.

I actually briefly considered moving the slot->arch handling into arch
code as part of the bug fix, but the memslot code has many subtle
dependencies, e.g. PPC and x86 rely on common KVM code to copy slot->arch
when flags are being changed.

I'll happily clean up the slot->arch code once this series is merged.
There is refactoring in this series that will make it a lot easier to do
additional clean up.

> For example, I see PPC has this:
> 
> struct kvm_arch_memory_slot {
> #ifdef CONFIG_KVM_BOOK3S_HV_POSSIBLE
> 	unsigned long *rmap;
> #endif /* CONFIG_KVM_BOOK3S_HV_POSSIBLE */
> };
> 
> I started to look into HV code of it a bit, then I see...
> 
>  - kvm_arch_create_memslot(kvmppc_core_create_memslot_hv) init slot->arch.rmap,
>  - kvm_arch_flush_shadow_memslot(kvmppc_core_flush_memslot_hv) didn't free it,
>  - kvm_arch_prepare_memory_region(kvmppc_core_prepare_memory_region_hv) is nop.
> 
> So Does it have similar issue?

No, KVM doesn't allow a memslot's size to be changed, and PPC's rmap
allocation is directly tied to the size of the memslot.  The x86 bug exists
because the size of its metadata arrays varies based on the alignment of
the base gfn.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

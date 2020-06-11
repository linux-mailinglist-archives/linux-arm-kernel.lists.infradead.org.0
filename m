Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F171F6B4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Pf6198TBA0lB89ulHLpddsrrkeJfCtlTYkZjOt7/YM=; b=Vubay+CyQ2AVQK
	P02cWWmQ4o3INvLQZZhJ9zoe6/0ZrV1bzJhWY5wXpVYBJGcbJVZuBWjK+r0D4AFjvuBYy4aAAZrDD
	kuBepvDWJe6UwJ9sPUbzUQ+Br0xsXLF/UKFHou+l7Y7GShEEwcQ/C2ATeUPobd6dXb3nTJMS1uPf0
	J/qFS55va8r1gzbOOf0XdNLnTo1F6kOP5+RWJxftu26RE/+IXnXDaKhVgqD1v4s75yOnxVWQgRmyq
	EQKvMciu25krJUkfIWWmhMFCX0hXyCNYGw7JFjWmjwgXTICTb0zHwL5zpLEGMYMNKy556jYyGR5yT
	rhWEVWmn0RKZ3a8SwTdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPNB-0005Al-Kn; Thu, 11 Jun 2020 15:44:09 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPN2-0005A2-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:44:02 +0000
IronPort-SDR: 7OWX0ayg0dTRQzChIzGPqChHdL4bxoTUa2XibsJkHX36sdN+XYdXbJ3XhGyVrJAr67trWnDge1
 H3lYYnPIu0fg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 08:43:59 -0700
IronPort-SDR: +Ydw/4Fg05XSUVeVdaVnYwXl169Eie8ePVgfFpQAiQZ2NUmXKZaRvV2IeZsKgMR2pcPAaKpDpn
 +n8lSwG3SLOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="419144435"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.152])
 by orsmga004.jf.intel.com with ESMTP; 11 Jun 2020 08:43:59 -0700
Date: Thu, 11 Jun 2020 08:43:59 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 17/21] KVM: arm64: Use common code's approach for
 __GFP_ZERO with memory caches
Message-ID: <20200611154359.GF29918@linux.intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-18-sean.j.christopherson@intel.com>
 <6cc08074c289cbea7b9c1deeaf18c63f@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6cc08074c289cbea7b9c1deeaf18c63f@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_084400_888807_3BED611D 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 08:59:05AM +0100, Marc Zyngier wrote:
> >diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
> >index 9398b66f8a87..688213ef34f0 100644
> >--- a/arch/arm64/kvm/mmu.c
> >+++ b/arch/arm64/kvm/mmu.c
> >@@ -131,7 +131,8 @@ static int mmu_topup_memory_cache(struct
> >kvm_mmu_memory_cache *cache, int min)
> > 	if (cache->nobjs >= min)
> > 		return 0;
> > 	while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> >-		page = (void *)__get_free_page(GFP_PGTABLE_USER);
> >+		page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT |
> 
> This is definitely a change in the way we account for guest
> page tables allocation, although I find it bizarre that not
> all architectures account for it the same way.

It's not intended to be a functional change, i.e. the allocations should
still be accounted:

  #define GFP_PGTABLE_USER  (GFP_PGTABLE_KERNEL | __GFP_ACCOUNT)
  |
  -> #define GFP_PGTABLE_KERNEL        (GFP_KERNEL | __GFP_ZERO)

  == GFP_KERNEL | __GFP_ACCOUNT | __GFP_ZERO

versus 

  #define GFP_KERNEL_ACCOUNT (GFP_KERNEL | __GFP_ACCOUNT)

    with __GFP_ZERO explicitly OR'd in

  == GFP_KERNEL | __GFP_ACCOUNT | __GFP_ZERO

I can put the above in the changelog, unless of course it's wrong and I've
missed something.

> It seems logical to me that nested page tables would be accounted
> against userspace, but I'm willing to be educated on the matter.
> 
> Another possibility is that depending on the context, some allocations
> should be accounted on either the kernel or userspace (NV on arm64
> could definitely do something like that). If that was the case,
> maybe moving most of the GFP_* flags into the per-cache flags,
> and have the renaming that Ben suggested earlier.
> 
> Thanks,
> 
>         M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

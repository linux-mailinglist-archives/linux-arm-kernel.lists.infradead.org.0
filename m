Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759011FC307
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 02:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AeNsd/uN7TcwaRBRowuEfxmVqTgNtP0KMD7hFeKOXo8=; b=UJk3u64lb8Eqes
	Es8OyCzy5LP0nQb6ugpMw6AVCJBeRo1L09pOEoHcz+d6dkgqh8njcOPDz5BIeSrKOJELmGUC2W/YK
	/PlzueLfrZfv5XbWqEsn+py5cYSytzJ+zUJCfnZ0TIcNH0xXuA6iaulKpyZzLPBJgwNHhfoJ2fKfT
	vmhU0TEZNsfiWnGom6MTmY4rmA1W0ainZQi7N3yvO/M11NGGw3zyKk2dhD5/9A7jH7K4W7xuQEhbO
	lfZKR2PVwx8/QCaElAuG9y31AmoDReLlFs3JKf940swUHcx3ZxQGYVlM/JL+pnR+uCCPXf1GB6St6
	V0thiW06kbEChBnx40LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlMKU-0006mf-UQ; Wed, 17 Jun 2020 00:53:26 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlMKI-0006ln-Cc
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 00:53:15 +0000
IronPort-SDR: NTKvQPEH6XaalD33xq72o4DUYtPfcWmRMUX8a8yJ1ys3j0jhQ0zrCUG8BxsfQ3eLuJhPj2luAT
 R9JKrDa7lL8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 17:53:10 -0700
IronPort-SDR: SUBjWGuROTOrr9kwwyRCGbl/hrI+QkSJ1Q57v0iPCxSIqpvvppNJdDsU/RssN7WxgNYb+sJfYU
 HH4TrYIFT3hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="309309155"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.152])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2020 17:53:09 -0700
Date: Tue, 16 Jun 2020 17:53:09 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Ben Gardon <bgardon@google.com>
Subject: Re: [PATCH 05/21] KVM: x86/mmu: Try to avoid crashing KVM if a MMU
 memory cache is empty
Message-ID: <20200617005309.GA19540@linux.intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-6-sean.j.christopherson@intel.com>
 <CANgfPd8B5R9NRL5q_4v4xvvn_3Vo9N93Ms3EiUFANMzqAMedMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANgfPd8B5R9NRL5q_4v4xvvn_3Vo9N93Ms3EiUFANMzqAMedMw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_175314_475580_41F93184 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
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

On Wed, Jun 10, 2020 at 03:12:04PM -0700, Ben Gardon wrote:
> On Fri, Jun 5, 2020 at 2:39 PM Sean Christopherson
> <sean.j.christopherson@intel.com> wrote:
> >
> > Attempt to allocate a new object instead of crashing KVM (and likely the
> > kernel) if a memory cache is unexpectedly empty.  Use GFP_ATOMIC for the
> > allocation as the caches are used while holding mmu_lock.  The immediate
> > BUG_ON() makes the code unnecessarily explosive and led to confusing
> > minimums being used in the past, e.g. allocating 4 objects where 1 would
> > suffice.
> >
> > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > ---
> >  arch/x86/kvm/mmu/mmu.c | 21 +++++++++++++++------
> >  1 file changed, 15 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> > index ba70de24a5b0..5e773564ab20 100644
> > --- a/arch/x86/kvm/mmu/mmu.c
> > +++ b/arch/x86/kvm/mmu/mmu.c
> > @@ -1060,6 +1060,15 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
> >         local_irq_enable();
> >  }
> >
> > +static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
> > +                                              gfp_t gfp_flags)
> > +{
> > +       if (mc->kmem_cache)
> > +               return kmem_cache_zalloc(mc->kmem_cache, gfp_flags);
> > +       else
> > +               return (void *)__get_free_page(gfp_flags);
> > +}
> > +
> >  static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
> >  {
> >         void *obj;
> > @@ -1067,10 +1076,7 @@ static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
> >         if (mc->nobjs >= min)
> >                 return 0;
> >         while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
> > -               if (mc->kmem_cache)
> > -                       obj = kmem_cache_zalloc(mc->kmem_cache, GFP_KERNEL_ACCOUNT);
> > -               else
> > -                       obj = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
> > +               obj = mmu_memory_cache_alloc_obj(mc, GFP_KERNEL_ACCOUNT);
> >                 if (!obj)
> >                         return mc->nobjs >= min ? 0 : -ENOMEM;
> >                 mc->objects[mc->nobjs++] = obj;
> > @@ -1118,8 +1124,11 @@ static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> >  {
> >         void *p;
> >
> > -       BUG_ON(!mc->nobjs);
> > -       p = mc->objects[--mc->nobjs];
> > +       if (WARN_ON(!mc->nobjs))
> > +               p = mmu_memory_cache_alloc_obj(mc, GFP_ATOMIC | __GFP_ACCOUNT);
> Is an atomic allocation really necessary here? In most cases, when
> topping up the memory cache we are handing a guest page fault. This
> bug could also be removed by returning null if unable to allocate from
> the cache, and then re-trying the page fault in that case.

The whole point of these caches is to avoid having to deal with allocation
errors in the low level MMU paths, e.g. propagating an error up from
pte_list_add() would be a mess.

> I don't know if this is necessary to handle other, non-x86 architectures more
> easily, but I worry this could cause some unpleasantness if combined with
> some other bug or the host was in a low memory situation and then this
> consumed the atomic pool. Perhaps this is a moot point since we log a warning
> and consider the atomic allocation something of an error.

Yeah, it's the latter.  If we reach this point it's a guaranteed KVM bug.
Because it's likely that the caller holds a lock, triggering the BUG_ON()
has a high chance of hanging the system.  The idea is to take the path that
_may_ crash the kernel instead of killing the VM and more than likely
crashing the kernel.  And hopefully this code will never be exercised on a
production kernel.

> > +       else
> > +               p = mc->objects[--mc->nobjs];
> > +       BUG_ON(!p);
> >         return p;
> >  }
> >
> > --
> > 2.26.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

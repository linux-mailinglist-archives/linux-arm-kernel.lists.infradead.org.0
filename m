Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B2A1F6BBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKvuQIjE4Jw3FG60FjSyRtnLRnAq+myqXNAWxvLApAM=; b=VXsWJTWCoi2Sk7
	bFN3vknTpEgM+bMvVQvobCq7lKsaZpYp5iRU7etteWIBR8pm2qcaGKKV2A1hNyJtBz8J+8l8WipYB
	Lk4bTw3cClOlK408hgyaOC8MvIJQCXK2Tihpkw1i+Px/xoTvnSeph0Mqxott6zY+I1PRFmJb4fWja
	bwflwPK86QcPYxia9hgleHSi25u+WUXLi4D05LKjnYSt4Iw7HylQ3mbex0sbapyUgp1lP7cUCTVKU
	zdpU/AEHzu4oTYU0Jb6Nti/S+y/NUyQasHcGitla+8dLktscsnG72NxnMmQtkKqXWxczrS9kNPC8s
	fNS+jnKIZmg2vafIvEMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPcn-0007yD-Mm; Thu, 11 Jun 2020 16:00:17 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPcS-0007xZ-3e
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:59:57 +0000
IronPort-SDR: dP1XD5sYJeW+nIb/ufdmVvdwnBFHJF3/UW5E7ImQ3tX7B5DOVnesmJA4QzCioKjCpJJ5uGqjnH
 rVdiWpX/EK6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 08:59:55 -0700
IronPort-SDR: vlQ6xqosUXqm2IK2atrupqAhPka9ERniiyAolofQ9QLnlgU84Ttdpz9HijVivDLr/IVeArXiV+
 xSQxjn+bUQsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="306964950"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.152])
 by orsmga008.jf.intel.com with ESMTP; 11 Jun 2020 08:59:54 -0700
Date: Thu, 11 Jun 2020 08:59:54 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Ben Gardon <bgardon@google.com>
Subject: Re: [PATCH 16/21] KVM: arm64: Drop @max param from
 mmu_topup_memory_cache()
Message-ID: <20200611155954.GH29918@linux.intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-17-sean.j.christopherson@intel.com>
 <CANgfPd-x=Af6Wdn9Wz=9r5CiHDCbxEgQhS2swALUMQd00oQ3jg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANgfPd-x=Af6Wdn9Wz=9r5CiHDCbxEgQhS2swALUMQd00oQ3jg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_085956_165805_DB3BB730 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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

On Wed, Jun 10, 2020 at 03:00:47PM -0700, Ben Gardon wrote:
> On Fri, Jun 5, 2020 at 2:39 PM Sean Christopherson
> <sean.j.christopherson@intel.com> wrote:
> >
> > Replace the @max param in mmu_topup_memory_cache() and instead use
> > ARRAY_SIZE() to terminate the loop to fill the cache.  This removes a
> > BUG_ON() and sets the stage for moving arm64 to the common memory cache
> > implementation.
> >
> > No functional change intended.
> >
> > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> > ---
> >  arch/arm64/kvm/mmu.c | 12 ++++--------
> >  1 file changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
> > index a1f6bc70c4e4..9398b66f8a87 100644
> > --- a/arch/arm64/kvm/mmu.c
> > +++ b/arch/arm64/kvm/mmu.c
> > @@ -124,15 +124,13 @@ static void stage2_dissolve_pud(struct kvm *kvm, phys_addr_t addr, pud_t *pudp)
> >         put_page(virt_to_page(pudp));
> >  }
> >
> > -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache,
> > -                                 int min, int max)
> > +static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
> >  {
> >         void *page;
> >
> > -       BUG_ON(max > KVM_NR_MEM_OBJS);
> KVM_NR_MEM_OBJS should be undefined as of patch 14 in this series. I'd
> recommend changing this to use the new constant you defined in that
> patch.

My intent was to leave KVM_NR_MEM_OBJS defined by arm64 and MIPS until they
move to the common implementation, e.g. this should be defined in
arch/arm64/include/asm/kvm_host.h until patch 18.  I'll get cross-compiling
setup so I can properly test bisection before sending v2.

> >         if (cache->nobjs >= min)
> >                 return 0;
> > -       while (cache->nobjs < max) {
> > +       while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> >                 page = (void *)__get_free_page(GFP_PGTABLE_USER);
> >                 if (!page)
> >                         return -ENOMEM;
> > @@ -1356,8 +1354,7 @@ int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
> >                         pte = kvm_s2pte_mkwrite(pte);
> >
> >                 ret = mmu_topup_memory_cache(&cache,
> > -                                            kvm_mmu_cache_min_pages(kvm),
> > -                                            KVM_NR_MEM_OBJS);
> See above, KVM_NR_MEM_OBJS is undefined as of patch 14.
> > +                                            kvm_mmu_cache_min_pages(kvm));
> >                 if (ret)
> >                         goto out;
> >                 spin_lock(&kvm->mmu_lock);
> > @@ -1737,8 +1734,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
> >         up_read(&current->mm->mmap_sem);
> >
> >         /* We need minimum second+third level pages */
> > -       ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm),
> > -                                    KVM_NR_MEM_OBJS);
> See above, KVM_NR_MEM_OBJS is undefined as of patch 14.
> > +       ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm));
> >         if (ret)
> >                 return ret;
> >
> > --
> > 2.26.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

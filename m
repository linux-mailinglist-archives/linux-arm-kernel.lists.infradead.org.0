Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F531FD248
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+3rhT0CHd3q3u21ERsSfsNdNG6d1VeaymVYpCKQqXI=; b=JcN2k/UayioiE7
	dMjVjCRDbyYwp+WmEWTUTATC/ddsZXXa6l5Y5OJjY67CxODOS+HPAqZgaOQOTufis+wSAtu4uQdQ9
	J2Pai4V4OYNYo877hDWXqFkh4wmb/JAQs4SoK1u1kjFXjBx7kL/RFLta/tUY7vnn9kX7FgRAbb9Bn
	dPdyu5VsfL4stiweFsUxZvHHKLKvORbtR4LaKFOLUw912pXnSLrQqXPh2BNenGlQnesrdnYAEbnnh
	fYHaQv43K8Ow9H2gjH1S7E2LiPNGDBbfVi5Ncq/rK5GES25O+Zm1bB1OU5S5auJmN6zMH26pJEm3R
	pfWK55Rt9u73RyRYVmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlb3U-0007ig-At; Wed, 17 Jun 2020 16:36:52 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlb3I-0007i4-C3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 16:36:41 +0000
Received: by mail-vs1-xe43.google.com with SMTP id q2so1774852vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 09:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L8DsS6xxyGZ4X1I2BsfKE5F+wl5+Bc0v/Cbn7ErCR3k=;
 b=eawpKQDd4c5bCWEDiwcn6BhRKGQcd5albFMeNaZdFKCB6O3sFwD2XAZx9LvvOYi87t
 Zd0041rw93VndgUPf5lk4RuZlA8dXcSVTpu7VYahKPZdbqv05KKeJ7LnJttdizTtluT5
 OYHgJdvNb8dH72kutypMPcXeLhyWIrRgMaS2iyuw/Lr6YD8+6DI8AvQtasmtlXDE9C7F
 FLi5DWCcWK7BKjDne7sZg/HbVdCiwosxxGZDthxyWacUQng42CxceziSSSXk8BO1AWeN
 BJDSiX2/zLffm0wAwppKnLGmoK/ndXvK8/qS5cg9IJUTWjiRKFGR6YFdm/zusqJzzUqC
 dKQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L8DsS6xxyGZ4X1I2BsfKE5F+wl5+Bc0v/Cbn7ErCR3k=;
 b=n9xXn3KFBuSHNld+wtXtqfE9vnKZeXz0is41WdFFZ4deb2WM8t3tJJV5VtkweBcZi3
 8sEPxOPAO9igMBFjwNIf6rP4Buc5VIXntRGzP8kFTFWdy2Igyiu+OAAsQ8C15xEnl27f
 LgIndcikkHsAF5gleURb6HouEinZlcdCquBf5HDgQZtx9N1z/9VGXCkU/ciTiRC/V/EE
 Fz1HGqDI+Fc+pSugHMzB5iBi5fWb4FPZk7GefUtYGE/QiexcBtY1DYoCbtb/a7dPc3mA
 RoxeVyENymNY7Y3J1YA5kW7YjYL7fdvQvLMKa60fkTEWjSX/Aon3vsPY5yK9kXEW9d17
 u1Dw==
X-Gm-Message-State: AOAM533MCzBFicRLZY1MHBgmmaBH7xoS15pHKr6Gq8bEmXrqhv350Q+i
 po3eGoQ+l5+ok0m8x0qceMxeDl6TnsepcXkS4hNaFA==
X-Google-Smtp-Source: ABdhPJz7oaun07TMv+zayNnAIYVTbbeP778/fuG5Ll7911G7zeLD5BHbO9dbHYGezneDNySTtZXTodF2yXRXfDK1+ZE=
X-Received: by 2002:a67:70c3:: with SMTP id l186mr6698034vsc.117.1592411796250; 
 Wed, 17 Jun 2020 09:36:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-6-sean.j.christopherson@intel.com>
 <CANgfPd8B5R9NRL5q_4v4xvvn_3Vo9N93Ms3EiUFANMzqAMedMw@mail.gmail.com>
 <20200617005309.GA19540@linux.intel.com>
In-Reply-To: <20200617005309.GA19540@linux.intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 17 Jun 2020 09:36:25 -0700
Message-ID: <CANgfPd8xkEotTJQPkMOrJNLOLXb4+TOA06wqO16UPdk_icF8tw@mail.gmail.com>
Subject: Re: [PATCH 05/21] KVM: x86/mmu: Try to avoid crashing KVM if a MMU
 memory cache is empty
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_093640_426380_BEE42E8A 
X-CRM114-Status: GOOD (  27.78  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Tue, Jun 16, 2020 at 5:53 PM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> On Wed, Jun 10, 2020 at 03:12:04PM -0700, Ben Gardon wrote:
> > On Fri, Jun 5, 2020 at 2:39 PM Sean Christopherson
> > <sean.j.christopherson@intel.com> wrote:
> > >
> > > Attempt to allocate a new object instead of crashing KVM (and likely the
> > > kernel) if a memory cache is unexpectedly empty.  Use GFP_ATOMIC for the
> > > allocation as the caches are used while holding mmu_lock.  The immediate
> > > BUG_ON() makes the code unnecessarily explosive and led to confusing
> > > minimums being used in the past, e.g. allocating 4 objects where 1 would
> > > suffice.
> > >
> > > Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> > > ---
> > >  arch/x86/kvm/mmu/mmu.c | 21 +++++++++++++++------
> > >  1 file changed, 15 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> > > index ba70de24a5b0..5e773564ab20 100644
> > > --- a/arch/x86/kvm/mmu/mmu.c
> > > +++ b/arch/x86/kvm/mmu/mmu.c
> > > @@ -1060,6 +1060,15 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
> > >         local_irq_enable();
> > >  }
> > >
> > > +static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
> > > +                                              gfp_t gfp_flags)
> > > +{
> > > +       if (mc->kmem_cache)
> > > +               return kmem_cache_zalloc(mc->kmem_cache, gfp_flags);
> > > +       else
> > > +               return (void *)__get_free_page(gfp_flags);
> > > +}
> > > +
> > >  static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
> > >  {
> > >         void *obj;
> > > @@ -1067,10 +1076,7 @@ static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
> > >         if (mc->nobjs >= min)
> > >                 return 0;
> > >         while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
> > > -               if (mc->kmem_cache)
> > > -                       obj = kmem_cache_zalloc(mc->kmem_cache, GFP_KERNEL_ACCOUNT);
> > > -               else
> > > -                       obj = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
> > > +               obj = mmu_memory_cache_alloc_obj(mc, GFP_KERNEL_ACCOUNT);
> > >                 if (!obj)
> > >                         return mc->nobjs >= min ? 0 : -ENOMEM;
> > >                 mc->objects[mc->nobjs++] = obj;
> > > @@ -1118,8 +1124,11 @@ static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> > >  {
> > >         void *p;
> > >
> > > -       BUG_ON(!mc->nobjs);
> > > -       p = mc->objects[--mc->nobjs];
> > > +       if (WARN_ON(!mc->nobjs))
> > > +               p = mmu_memory_cache_alloc_obj(mc, GFP_ATOMIC | __GFP_ACCOUNT);
> > Is an atomic allocation really necessary here? In most cases, when
> > topping up the memory cache we are handing a guest page fault. This
> > bug could also be removed by returning null if unable to allocate from
> > the cache, and then re-trying the page fault in that case.
>
> The whole point of these caches is to avoid having to deal with allocation
> errors in the low level MMU paths, e.g. propagating an error up from
> pte_list_add() would be a mess.
>
> > I don't know if this is necessary to handle other, non-x86 architectures more
> > easily, but I worry this could cause some unpleasantness if combined with
> > some other bug or the host was in a low memory situation and then this
> > consumed the atomic pool. Perhaps this is a moot point since we log a warning
> > and consider the atomic allocation something of an error.
>
> Yeah, it's the latter.  If we reach this point it's a guaranteed KVM bug.
> Because it's likely that the caller holds a lock, triggering the BUG_ON()
> has a high chance of hanging the system.  The idea is to take the path that
> _may_ crash the kernel instead of killing the VM and more than likely
> crashing the kernel.  And hopefully this code will never be exercised on a
> production kernel.

That makes sense to me. I agree it's definitely positive to replace a
BUG_ON with something else.

>
> > > +       else
> > > +               p = mc->objects[--mc->nobjs];
> > > +       BUG_ON(!p);
> > >         return p;
> > >  }
> > >
> > > --
> > > 2.26.0
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

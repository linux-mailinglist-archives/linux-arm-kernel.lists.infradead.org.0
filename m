Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ECBBCC89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 18:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6VEJ0GX6F9MzRT1X2sVokrHKN0ZY+Ts3aWM6fwl5Yc=; b=d15MwZHZLMOKdx
	h78J+JdCzzSfht8zk5QZBKwkaafhv0+sLCBhkE/I87Hkz1yPyCDieBUTwgz825nerVz/TGgNWzJ75
	ywnw3CqhgiMhPq0l9akB/CaGhBgTRiDDHSE50X35MMj+QCgjkA3QQtSSyNAM0XGrR3kvIE7bgl7wy
	X74oM1sP2sXJd6WYaPDRYQZFJioZvrjR6G1vzW5JdX31J7hWy4qC7XCFdNci1NQoKxy9foWSP2Oxs
	QWvHf6TtnoT9CnwjXAQcpvBS1Hy+D3JWOlJDajjJ0ge2boQ6QEKbdOtN7QIGyAz3YMp0jux5k6951
	WXtF8w4W9/HLg6b+sauw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCnnM-0002Kh-9m; Tue, 24 Sep 2019 16:36:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCnn4-0002Jx-Pw
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 16:35:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5589A142F;
 Tue, 24 Sep 2019 09:35:47 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A49143F694; Tue, 24 Sep 2019 09:35:44 -0700 (PDT)
Date: Tue, 24 Sep 2019 17:35:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jia He <hejianet@gmail.com>
Subject: Re: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190924163542.GI41214@arrakis.emea.arm.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-4-justin.he@arm.com>
 <20190923170433.GE10192@arrakis.emea.arm.com>
 <DB7PR08MB3082BC38536AE16B056AEA05F7840@DB7PR08MB3082.eurprd08.prod.outlook.com>
 <20190924103324.GB41214@arrakis.emea.arm.com>
 <6267b685-5162-85ac-087f-112303bb7035@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6267b685-5162-85ac-087f-112303bb7035@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_093550_930047_7482BC4B 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 11:29:07PM +0800, Jia He wrote:
> On 2019/9/24 18:33, Catalin Marinas wrote:
> > On Tue, Sep 24, 2019 at 06:43:06AM +0000, Justin He (Arm Technology Chi=
na) wrote:
> > > Catalin Marinas wrote:
> > > > On Sat, Sep 21, 2019 at 09:50:54PM +0800, Jia He wrote:
> > > > >   		/*
> > > > >   		 * This really shouldn't fail, because the page is there
> > > > >   		 * in the page tables. But it might just be unreadable,
> > > > >   		 * in which case we just give up and fill the result with
> > > > >   		 * zeroes.
> > > > >   		 */
> > > > > -		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
> > > > > +		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE)) {
> > > > > +			/* Give a warn in case there can be some obscure
> > > > > +			 * use-case
> > > > > +			 */
> > > > > +			WARN_ON_ONCE(1);
> > > > That's more of a question for the mm guys: at this point we do the
> > > > copying with the ptl released; is there anything else that could ha=
ve
> > > > made the pte old in the meantime? I think unuse_pte() is only calle=
d on
> > > > anonymous vmas, so it shouldn't be the case here.
> >
> > If we need to hold the ptl here, you could as well have an enclosing
> > kmap/kunmap_atomic (option 2) with some goto instead of "return false".
> =

> I am not 100% sure that I understand your suggestion well, so I
> drafted the patch

Well, however you think the code is cleaner really.

The copy/paste didn't work well, tabs disappeared (or rather the
Exchange server corrupting outgoing emails) but I'll try to comment
below:

> -static inline void cow_user_page(struct page *dst, struct page *src,
>   unsigned long va, struct vm_area_struct *vma)
> +static inline bool cow_user_page(struct page *dst, struct page *src,
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0struct vm_fault *vmf)
> =A0{
> +=A0=A0=A0 struct vm_area_struct *vma =3D vmf->vma;
> +=A0=A0=A0 struct mm_struct *mm =3D vma->vm_mm;
> +=A0=A0=A0 unsigned long addr =3D vmf->address;
> +=A0=A0=A0 bool ret;
> +=A0=A0=A0 pte_t entry;
> +=A0=A0=A0 void *kaddr;
> +=A0=A0=A0 void __user *uaddr;
> +
> =A0=A0=A0=A0 debug_dma_assert_idle(src);
> =

> +=A0=A0=A0 if (likely(src)) {
> +=A0=A0=A0 =A0=A0=A0 copy_user_highpage(dst, src, addr, vma);
> +=A0=A0=A0 =A0=A0=A0 return true;
> +=A0=A0=A0 }
> +
> =A0=A0=A0=A0 /*
> =A0=A0=A0=A0 =A0* If the source page was a PFN mapping, we don't have
> =A0=A0=A0=A0 =A0* a "struct page" for it. We do a best-effort copy by
> =A0=A0=A0=A0 =A0* just copying from the original user address. If that
> =A0=A0=A0=A0 =A0* fails, we just zero-fill it. Live with it.
> =A0=A0=A0=A0 =A0*/
> -=A0=A0=A0 if (unlikely(!src)) {
> -=A0=A0=A0 =A0=A0=A0 void *kaddr =3D kmap_atomic(dst);
> -=A0=A0=A0 =A0=A0=A0 void __user *uaddr =3D (void __user *)(va & PAGE_MAS=
K);
> +=A0=A0=A0 kaddr =3D kmap_atomic(dst);
> +=A0=A0=A0 uaddr =3D (void __user *)(addr & PAGE_MASK);
> +
> +=A0=A0=A0 /*
> +=A0=A0=A0 =A0* On architectures with software "accessed" bits, we would
> +=A0=A0=A0 =A0* take a double page fault, so mark it accessed here.
> +=A0=A0=A0 =A0*/
> +=A0=A0=A0 vmf->pte =3D pte_offset_map_lock(mm, vmf->pmd, addr, &vmf->ptl=
);
> +=A0=A0=A0 if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {

I'd move the pte_offset_map_lock() inside the 'if' block as we don't
want to affect architectures that handle old ptes automatically.

> +=A0=A0=A0 =A0=A0=A0 if (!likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 /*
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0* Other thread has already handled the =
fault
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0* and we don't need to do anything. If =
it's
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0* not the case, the fault will be trigg=
ered
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0* again on the same address.
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0*/
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 ret =3D false;
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 goto pte_unlock;
> +=A0=A0=A0 =A0=A0=A0 }
> +
> +=A0=A0=A0 =A0=A0=A0 entry =3D pte_mkyoung(vmf->orig_pte);
> +=A0=A0=A0 =A0=A0=A0 if (ptep_set_access_flags(vma, addr, vmf->pte, entry=
, 0))
> +=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 update_mmu_cache(vma, addr, vmf->pte);
> +=A0=A0=A0 }
> =

> +=A0=A0=A0 /*
> +=A0=A0=A0 =A0* This really shouldn't fail, because the page is there
> +=A0=A0=A0 =A0* in the page tables. But it might just be unreadable,
> +=A0=A0=A0 =A0* in which case we just give up and fill the result with
> +=A0=A0=A0 =A0* zeroes.
> +=A0=A0=A0 =A0*/
> +=A0=A0=A0 if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE)) {
> =A0=A0=A0=A0 =A0=A0=A0 /*
> -=A0=A0=A0 =A0=A0=A0 =A0* This really shouldn't fail, because the page is=
 there
> -=A0=A0=A0 =A0=A0=A0 =A0* in the page tables. But it might just be unread=
able,
> -=A0=A0=A0 =A0=A0=A0 =A0* in which case we just give up and fill the resu=
lt with
> -=A0=A0=A0 =A0=A0=A0 =A0* zeroes.
> +=A0=A0=A0 =A0=A0=A0 =A0* Give a warn in case there can be some obscure
> +=A0=A0=A0 =A0=A0=A0 =A0* use-case
> =A0=A0=A0=A0 =A0=A0=A0 =A0*/
> -=A0=A0=A0 =A0=A0=A0 if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZ=
E))
> -=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 clear_page(kaddr);
> -=A0=A0=A0 =A0=A0=A0 kunmap_atomic(kaddr);
> -=A0=A0=A0 =A0=A0=A0 flush_dcache_page(dst);
> -=A0=A0=A0 } else
> -=A0=A0=A0 =A0=A0=A0 copy_user_highpage(dst, src, va, vma);
> +=A0=A0=A0 =A0=A0=A0 WARN_ON_ONCE(1);
> +=A0=A0=A0 =A0=A0=A0 clear_page(kaddr);
> +=A0=A0=A0 }
> +
> +=A0=A0=A0 ret =3D true;
> +
> +pte_unlock:
> +=A0=A0=A0 pte_unmap_unlock(vmf->pte, vmf->ptl);

Since the locking would be moved in the 'if' block above, we need
another check here before unlocking:

	if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte))
		pte_unmap_unlock(vmf->pte, vmf->ptl);

You could probably replace the two calls to arch_faults_on_old_pte()
with a single bool variable initialisation, something like:

	force_mkyoung =3D arch_faults_on_old_pte() &&
		!pte_young(vmf->orig_pte)

and only check for "if (force_mkyoung)" in both cases.

> +=A0=A0=A0 kunmap_atomic(kaddr);
> +=A0=A0=A0 flush_dcache_page(dst);
> +
> +=A0=A0=A0 return ret;
> =A0}

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

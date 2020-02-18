Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9122162501
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 11:55:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7hMVZCuVOgkGOUilMSaNBgmojm9NS6K0SX85iyN3tU=; b=XlJlyAUl+ZbYjq
	qLY7K1gQ3gTVv9z15zkEvf3ZqCNxbTjHCWKgc71TATxwVDCDIJoP61TPyEe7UOJ53KsIGTLaKYfE2
	svuhOMxqOfd6uq89glkdczDVOvt4kQVd78rHpTbfpjjxnKGaMP2PxYHzdwYr4jVh8SGrXZZ5W4WcS
	WsS6VEOxH0snZmhfTv1QBoD9mIBTKlGCCwitn5QmP2WOYAk5iUWHAU42EyEmZeyu2vvA0mDhcPLGC
	THJSKhftjf2Yrhs7qlLYqFipEelVDwmJLXR5FkNAePbhra9jEfXu3TnTMGI6jQLe9YVj29Mky/hQS
	8KH/KCbl9zIpt/F31eNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j40Wv-0007eJ-JD; Tue, 18 Feb 2020 10:55:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j40Wk-0007dO-1H
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 10:54:55 +0000
Received: from hump (unknown [109.236.136.226])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58260207FD;
 Tue, 18 Feb 2020 10:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582023292;
 bh=CMlZZWS7PO9lkPnhA08fc6Islr+OQCEeZuheLiBfVmU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nQZIkGPAmBAW2q8NANsj3kry2FjoyJoV6/tOeR6LNswBfh2J3GwBoJflFT5WH0M0E
 dfZCuTZ+znP94xdsEPbHpuBFhjabZfi5XCWgerZeTyyA+r8h1bx3I9KPRweYB3ciYM
 WYq+qWxM8vgm+Ut2efYgnUJmpLpvYONcSRjzEgV4=
Date: Tue, 18 Feb 2020 12:54:40 +0200
From: Mike Rapoport <rppt@kernel.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH v2 07/13] powerpc: add support for folded p4d page tables
Message-ID: <20200218105440.GA1698@hump>
References: <20200216081843.28670-1-rppt@kernel.org>
 <20200216081843.28670-8-rppt@kernel.org>
 <c79b363c-a111-389a-5752-51cf85fa8c44@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c79b363c-a111-389a-5752-51cf85fa8c44@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_025454_124210_F17BE0D5 
X-CRM114-Status: GOOD (  33.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 16, 2020 at 11:41:07AM +0100, Christophe Leroy wrote:
> =

> =

> Le 16/02/2020 =E0 09:18, Mike Rapoport a =E9crit=A0:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > =

> > Implement primitives necessary for the 4th level folding, add walks of =
p4d
> > level where appropriate and replace 5level-fixup.h with pgtable-nop4d.h.
> =

> I don't think it is worth adding all this additionnals walks of p4d, this
> patch could be limited to changes like:
> =

> -		pud =3D pud_offset(pgd, gpa);
> +		pud =3D pud_offset(p4d_offset(pgd, gpa), gpa);
> =

> The additionnal walks should be added through another patch the day power=
pc
> need them.

Ok, I'll update the patch to reduce walking the p4d.
 =

> See below for more comments.
> =

> > =

> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > Tested-by: Christophe Leroy <christophe.leroy@c-s.fr> # 8xx and 83xx
> > ---

...

> > diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerp=
c/include/asm/book3s/64/pgtable.h
> > index 201a69e6a355..ddddbafff0ab 100644
> > --- a/arch/powerpc/include/asm/book3s/64/pgtable.h
> > +++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
> > @@ -2,7 +2,7 @@
> >   #ifndef _ASM_POWERPC_BOOK3S_64_PGTABLE_H_
> >   #define _ASM_POWERPC_BOOK3S_64_PGTABLE_H_
> > -#include <asm-generic/5level-fixup.h>
> > +#include <asm-generic/pgtable-nop4d.h>
> >   #ifndef __ASSEMBLY__
> >   #include <linux/mmdebug.h>
> > @@ -251,7 +251,7 @@ extern unsigned long __pmd_frag_size_shift;
> >   /* Bits to mask out from a PUD to get to the PMD page */
> >   #define PUD_MASKED_BITS		0xc0000000000000ffUL
> >   /* Bits to mask out from a PGD to get to the PUD page */
> > -#define PGD_MASKED_BITS		0xc0000000000000ffUL
> > +#define P4D_MASKED_BITS		0xc0000000000000ffUL
> >   /*
> >    * Used as an indicator for rcu callback functions
> > @@ -949,54 +949,60 @@ static inline bool pud_access_permitted(pud_t pud=
, bool write)
> >   	return pte_access_permitted(pud_pte(pud), write);
> >   }
> > -#define pgd_write(pgd)		pte_write(pgd_pte(pgd))
> > +#define __p4d_raw(x)	((p4d_t) { __pgd_raw(x) })
> > +static inline __be64 p4d_raw(p4d_t x)
> > +{
> > +	return pgd_raw(x.pgd);
> > +}
> > +
> =

> Shouldn't this be defined in asm/pgtable-be-types.h, just like other
> __pxx_raw() ?

Ideally yes, but this creates weird header file dependencies and untangling
them would generate way too much churn.
 =

> > +#define p4d_write(p4d)		pte_write(p4d_pte(p4d))
> > -static inline void pgd_clear(pgd_t *pgdp)
> > +static inline void p4d_clear(p4d_t *p4dp)
> >   {
> > -	*pgdp =3D __pgd(0);
> > +	*p4dp =3D __p4d(0);
> >   }

...

> > @@ -573,9 +596,15 @@ int kvmppc_create_pte(struct kvm *kvm, pgd_t *pgta=
ble, pte_t pte,
> >   	/* Traverse the guest's 2nd-level tree, allocate new levels needed */
> >   	pgd =3D pgtable + pgd_index(gpa);
> > -	pud =3D NULL;
> > +	p4d =3D NULL;
> >   	if (pgd_present(*pgd))
> > -		pud =3D pud_offset(pgd, gpa);
> > +		p4d =3D p4d_offset(pgd, gpa);
> > +	else
> > +		new_p4d =3D p4d_alloc_one(kvm->mm, gpa);
> > +
> > +	pud =3D NULL;
> > +	if (p4d_present(*p4d))
> > +		pud =3D pud_offset(p4d, gpa);
> =

> Is it worth adding all this new code ?
> =

> My understanding is that the series objective is to get rid of
> __ARCH_HAS_5LEVEL_HACK, to to add support for 5 levels to an architecture
> that not need it (at least for now).
> If we want to add support for 5 levels, it can be done later in another
> patch.
> =

> Here I think your change could be limited to:
> =

> -		pud =3D pud_offset(pgd, gpa);
> +		pud =3D pud_offset(p4d_offset(pgd, gpa), gpa);

This won't work. Without __ARCH_USE_5LEVEL_HACK defined pgd_present() is
hardwired to 1 and the actual check for the top level is performed with
p4d_present(). The 'else' clause that allocates p4d will never be taken and
it could be removed, but I prefer to keep it for consistency.
 =

> >   	else
> >   		new_pud =3D pud_alloc_one(kvm->mm, gpa);
> > @@ -597,12 +626,18 @@ int kvmppc_create_pte(struct kvm *kvm, pgd_t *pgt=
able, pte_t pte,
> >   	/* Now traverse again under the lock and change the tree */
> >   	ret =3D -ENOMEM;
> >   	if (pgd_none(*pgd)) {
> > +		if (!new_p4d)
> > +			goto out_unlock;
> > +		pgd_populate(kvm->mm, pgd, new_p4d);
> > +		new_p4d =3D NULL;
> > +	}
> > +	if (p4d_none(*p4d)) {
> >   		if (!new_pud)
> >   			goto out_unlock;
> > -		pgd_populate(kvm->mm, pgd, new_pud);
> > +		p4d_populate(kvm->mm, p4d, new_pud);
> >   		new_pud =3D NULL;
> >   	}
> > -	pud =3D pud_offset(pgd, gpa);
> > +	pud =3D pud_offset(p4d, gpa);
> >   	if (pud_is_leaf(*pud)) {
> >   		unsigned long hgpa =3D gpa & PUD_MASK;
> > @@ -1220,6 +1255,7 @@ static ssize_t debugfs_radix_read(struct file *fi=
le, char __user *buf,
> >   	pgd_t *pgt;
> >   	struct kvm_nested_guest *nested;
> >   	pgd_t pgd, *pgdp;
> > +	p4d_t p4d, *p4dp;
> >   	pud_t pud, *pudp;
> >   	pmd_t pmd, *pmdp;
> >   	pte_t *ptep;
> > @@ -1298,7 +1334,14 @@ static ssize_t debugfs_radix_read(struct file *f=
ile, char __user *buf,
> >   			continue;
> >   		}
> > -		pudp =3D pud_offset(&pgd, gpa);
> > +		p4dp =3D p4d_offset(&pgd, gpa);
> > +		p4d =3D READ_ONCE(*p4dp);
> > +		if (!(p4d_val(p4d) & _PAGE_PRESENT)) {
> > +			gpa =3D (gpa & P4D_MASK) + P4D_SIZE;
> > +			continue;
> > +		}
> > +
> > +		pudp =3D pud_offset(&p4d, gpa);
> =

> Same, here you are forcing a useless read with READ_ONCE().
> =

> Your change could be limited to
> =

> -		pudp =3D pud_offset(&pgd, gpa);
> +		pudp =3D pud_offset(p4d_offset(&pgd, gpa), gpa);

Here again the actual check must be done against p4d rather than pgd. We
could skip READ_ONCE() for pgd, but since it is a debugfs method I don't
think it is more important than code consistency.
 =

> This comment applies to many other places.

I'll make another pass to see where we can take the shortcut and use =


	pudp =3D pud_offset(p4d_offset(...))
 =

> >   		pud =3D READ_ONCE(*pudp);
> >   		if (!(pud_val(pud) & _PAGE_PRESENT)) {
> >   			gpa =3D (gpa & PUD_MASK) + PUD_SIZE;
> > diff --git a/arch/powerpc/lib/code-patching.c b/arch/powerpc/lib/code-p=
atching.c
> > index 3345f039a876..7a59f6863cec 100644
> > --- a/arch/powerpc/lib/code-patching.c
> > +++ b/arch/powerpc/lib/code-patching.c
> > @@ -107,13 +107,18 @@ static inline int unmap_patch_area(unsigned long =
addr)
> >   	pte_t *ptep;
> >   	pmd_t *pmdp;
> >   	pud_t *pudp;
> > +	p4d_t *p4dp;
> >   	pgd_t *pgdp;
> >   	pgdp =3D pgd_offset_k(addr);
> >   	if (unlikely(!pgdp))
> >   		return -EINVAL;
> > -	pudp =3D pud_offset(pgdp, addr);
> > +	p4dp =3D p4d_offset(pgdp, addr);
> > +	if (unlikely(!p4dp))
> > +		return -EINVAL;
> > +
> > +	pudp =3D pud_offset(p4dp, addr);
> >   	if (unlikely(!pudp))
> >   		return -EINVAL;
> > diff --git a/arch/powerpc/mm/book3s32/mmu.c b/arch/powerpc/mm/book3s32/=
mmu.c
> > index 0a1c65a2c565..b2fc3e71165c 100644
> > --- a/arch/powerpc/mm/book3s32/mmu.c
> > +++ b/arch/powerpc/mm/book3s32/mmu.c
> > @@ -312,7 +312,7 @@ void hash_preload(struct mm_struct *mm, unsigned lo=
ng ea)
> >   	if (!Hash)
> >   		return;
> > -	pmd =3D pmd_offset(pud_offset(pgd_offset(mm, ea), ea), ea);
> > +	pmd =3D pmd_offset(pud_offset(p4d_offset(pgd_offset(mm, ea), ea), ea)=
, ea);
> =

> If we continue like this, in ten years this like is going to be many
> kilometers long.
> =

> I think the above would be worth a generic helper.

Agree. My plan was to first unify all the architectures and then start
introducing the generic helpers, like e.g. pmd_offset_mm().
 =

> >   	if (!pmd_none(*pmd))
> >   		add_hash_page(mm->context.id, ea, pmd_val(*pmd));
> >   }
> > diff --git a/arch/powerpc/mm/book3s32/tlb.c b/arch/powerpc/mm/book3s32/=
tlb.c
> > index 2fcd321040ff..175bc33b41b7 100644
> > --- a/arch/powerpc/mm/book3s32/tlb.c
> > +++ b/arch/powerpc/mm/book3s32/tlb.c
> > @@ -87,7 +87,7 @@ static void flush_range(struct mm_struct *mm, unsigne=
d long start,
> >   	if (start >=3D end)
> >   		return;
> >   	end =3D (end - 1) | ~PAGE_MASK;
> > -	pmd =3D pmd_offset(pud_offset(pgd_offset(mm, start), start), start);
> > +	pmd =3D pmd_offset(pud_offset(p4d_offset(pgd_offset(mm, start), start=
), start), start);
> >   	for (;;) {
> >   		pmd_end =3D ((start + PGDIR_SIZE) & PGDIR_MASK) - 1;
> >   		if (pmd_end > end)
> > @@ -145,7 +145,7 @@ void flush_tlb_page(struct vm_area_struct *vma, uns=
igned long vmaddr)
> >   		return;
> >   	}
> >   	mm =3D (vmaddr < TASK_SIZE)? vma->vm_mm: &init_mm;
> > -	pmd =3D pmd_offset(pud_offset(pgd_offset(mm, vmaddr), vmaddr), vmaddr=
);
> > +	pmd =3D pmd_offset(pud_offset(p4d_offset(pgd_offset(mm, vmaddr), vmad=
dr), vmaddr), vmaddr);
> >   	if (!pmd_none(*pmd))
> >   		flush_hash_pages(mm->context.id, vmaddr, pmd_val(*pmd), 1);
> >   }
> > diff --git a/arch/powerpc/mm/book3s64/hash_pgtable.c b/arch/powerpc/mm/=
book3s64/hash_pgtable.c
> > index 64733b9cb20a..9cd15937e88a 100644
> > --- a/arch/powerpc/mm/book3s64/hash_pgtable.c
> > +++ b/arch/powerpc/mm/book3s64/hash_pgtable.c
> > @@ -148,6 +148,7 @@ void hash__vmemmap_remove_mapping(unsigned long sta=
rt,
> >   int hash__map_kernel_page(unsigned long ea, unsigned long pa, pgprot_=
t prot)
> >   {
> >   	pgd_t *pgdp;
> > +	p4d_t *p4dp;
> >   	pud_t *pudp;
> >   	pmd_t *pmdp;
> >   	pte_t *ptep;
> > @@ -155,7 +156,8 @@ int hash__map_kernel_page(unsigned long ea, unsigne=
d long pa, pgprot_t prot)
> >   	BUILD_BUG_ON(TASK_SIZE_USER64 > H_PGTABLE_RANGE);
> >   	if (slab_is_available()) {
> >   		pgdp =3D pgd_offset_k(ea);
> > -		pudp =3D pud_alloc(&init_mm, pgdp, ea);
> > +		p4dp =3D p4d_offset(pgdp, ea);
> > +		pudp =3D pud_alloc(&init_mm, p4dp, ea);
> =

> Could be a single line, without a new var.
> =

> -		pudp =3D pud_alloc(&init_mm, pgdp, ea);
> +		pudp =3D pud_alloc(&init_mm, p4d_offset(pgdp, ea), ea);
> =

> =

> Same kind of comments as already done apply to the rest.
> =

> Christophe

-- =

Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

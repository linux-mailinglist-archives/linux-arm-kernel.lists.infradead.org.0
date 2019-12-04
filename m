Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA24113015
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrqVD7DlmVfqwZHH/mPNTHO5yVIrDYV0cteWBdn1BCI=; b=uxQo03ZkSevemy
	ODVSmWILDVukEoHKzqvFiV7U60YKThZqGtza9UcJb/8kj35jGAw3YkgD6N1rnRa7TgHUuPX+XMmWe
	IX3/pE6TWZWyCEkoCOafF/s8fISXAmV3szOad4uhcRhfMvFycmnrjWHZS7Ukz+1KUIpXYKXRpWF3n
	vd3Szktlw2oSzPjrIbNTqd2W63wjSZ9fj8xETLTGLMOsqcV7GECTKzp2W6D9AQg+fu7NoqzlTDsaf
	kD4ko+UjPMHviM30ULYiB0zUGbGoroKo5DhvYf1nRLQn6qe7WIp2At5fJ2hl6DAgCXoSq7Y70X+C4
	AWlVd8x4es42QYogHE8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXa8-0004N0-E8; Wed, 04 Dec 2019 16:32:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icXa1-0004M4-Jo
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:32:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3168F31B;
 Wed,  4 Dec 2019 08:32:43 -0800 (PST)
Received: from arm.com (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B6333F52E;
 Wed,  4 Dec 2019 08:32:40 -0800 (PST)
Date: Wed, 4 Dec 2019 16:32:35 +0000
From: Steven Price <steven.price@arm.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
Message-ID: <20191204163235.GA1597@arm.com>
References: <20191101140942.51554-1-steven.price@arm.com>
 <1572896147.5937.116.camel@lca.pw>
 <7B040741-EC8A-4CC0-964B-4046AE2E617A@lca.pw>
 <16da6118-ac4d-a165-6202-0731a776ac72@arm.com>
 <911fac4a-2204-f994-a101-16a60fba12e8@redhat.com>
 <0FA196FD-3FCD-431A-AA3E-21BF00EA07DC@lca.pw>
 <9d5f1689-db82-a6da-d51d-08070aa4bad5@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d5f1689-db82-a6da-d51d-08070aa4bad5@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_083245_740928_0D578517 
X-CRM114-Status: GOOD (  25.20  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Linux-MM <linux-mm@kvack.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Thomas Hellstrom <thellstrom@vmware.com>,
 the arch/x86 maintainers <x86@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Qian Cai <cai@lca.pw>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morse <James.Morse@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 02:56:58PM +0000, David Hildenbrand wrote:
> On 04.12.19 15:54, Qian Cai wrote:
> > 
> > 
> >> On Dec 3, 2019, at 6:02 AM, David Hildenbrand <david@redhat.com> wrote:
> >>
> >> On 06.11.19 16:05, Steven Price wrote:
> >>> On 06/11/2019 13:31, Qian Cai wrote:
> >>>>
> >>>>
> >>>>> On Nov 4, 2019, at 2:35 PM, Qian Cai <cai@lca.pw> wrote:
> >>>>>
> >>>>> On Fri, 2019-11-01 at 14:09 +0000, Steven Price wrote:
> >>> [...]
> >>>>>> Changes since v14:
> >>>>>> https://lore.kernel.org/lkml/20191028135910.33253-1-steven.price@arm.com/
> >>>>>> * Switch walk_page_range() into two functions, the existing
> >>>>>>   walk_page_range() now still requires VMAs (and treats areas without a
> >>>>>>   VMA as a 'hole'). The new walk_page_range_novma() ignores VMAs and
> >>>>>>   will report the actual page table layout. This fixes the previous
> >>>>>>   breakage of /proc/<pid>/pagemap
> >>>>>> * New patch at the end of the series which reduces the 'level' numbers
> >>>>>>   by 1 to simplify the code slightly
> >>>>>> * Added tags
> >>>>>
> >>>>> Does this new version also take care of this boot crash seen with v14? Suppose
> >>>>> it is now breaking CONFIG_EFI_PGT_DUMP=y? The full config is,
> >>>>>
> >>>>> https://raw.githubusercontent.com/cailca/linux-mm/master/x86.config
> >>>>>
> >>>>
> >>>> V15 is indeed DOA here.
> >>>
> >>> Thanks for finding this, it looks like EFI causes issues here. The below fixes
> >>> this for me (booting in QEMU).
> >>>
> >>> Andrew: do you want me to send out the entire series again for this fix, or
> >>> can you squash this into mm-pagewalk-allow-walking-without-vma.patch?
> >>>
> >>> Thanks,
> >>>
> >>> Steve
> >>>
> >>> ---8<---
> >>> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
> >>> index c7529dc4f82b..70dcaa23598f 100644
> >>> --- a/mm/pagewalk.c
> >>> +++ b/mm/pagewalk.c
> >>> @@ -90,7 +90,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
> >>>  			split_huge_pmd(walk->vma, pmd, addr);
> >>>  			if (pmd_trans_unstable(pmd))
> >>>  				goto again;
> >>> -		} else if (pmd_leaf(*pmd)) {
> >>> +		} else if (pmd_leaf(*pmd) || !pmd_present(*pmd)) {
> >>>  			continue;
> >>>  		}
> >>>
> >>> @@ -141,7 +141,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
> >>>  			split_huge_pud(walk->vma, pud, addr);
> >>>  			if (pud_none(*pud))
> >>>  				goto again;
> >>> -		} else if (pud_leaf(*pud)) {
> >>> +		} else if (pud_leaf(*pud) || !pud_present(*pud)) {
> >>>  			continue;
> >>>  		}
> >>>
> >>>
> >>
> >> Even with this fix, booting for me under QEMU fails. See
> >>
> >> https://lore.kernel.org/linux-mm/b7ce62f2-9a48-6e48-6685-003431e521aa@redhat.com/
> >>
> > 
> > Yes, for some reasons, this starts to crash on almost all arches here, so it might be worth
> > for Andrew to revert those in the meantime while allowing Steven to rework.
> 
> I agree, this produces too much noise.

I've bisected this problem and it's a merge conflict with:

ace88f1018b8 ("mm: pagewalk: Take the pagetable lock in walk_pte_range()")

Reverting that commit "fixes" the problem. That commit adds a call to
pte_offset_map_lock(), however that isn't necessarily safe when
considering an "unusual" mapping in the kernel. Combined with my patch
set this leads to the BUG when walking the kernel's page tables.

At this stage I think it's best if Andrew drops my series and I'll try
to rework it on top -rc1 fixing up this conflict and the other x86
32-bit issue that has cropped up.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

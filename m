Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8224C94957
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 18:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBaOevoqMiDSQP/n0LdYzgyA/iw0Hpk6eO7+TP1ZL2c=; b=VDw70X6f+5fglV
	Yf7jWBvH7UkMfiisIClp3vcoWAtyZQW+jzEIT9JRwhcVVsp7t1IabhkM4mpN1YVvearvzwQsZlkQ8
	OfyZRemWee15TigUzq5Fuq2bKOrn2SvF/d1ARe7kOz3pLrt0x9i5mOYO82RcGlzvwRs4Ct8L/G+/H
	EfUr57whV7owkceAJxkdez5652Mr91Qi8wnCKhSKXcML0MmRbBQrMgfYnLb74ia5uKS8kYJzTZDEn
	LBA6/1GHm0TAfVTE95Tf8nIUsz6xZPvxuoJvPx9Lt7UIMVnFxxkPDlfLZRN1GXHSSwB1pwYwyrY15
	/MS8R18q251wNuFIvUag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzk87-0001gH-VS; Mon, 19 Aug 2019 16:03:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzk7x-0001fZ-T4; Mon, 19 Aug 2019 16:03:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C82F4344;
 Mon, 19 Aug 2019 09:03:24 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D1F6B3F718;
 Mon, 19 Aug 2019 09:03:22 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:03:20 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
Message-ID: <20190819160320.GF9927@lakrids.cambridge.arm.com>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
 <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
 <20190819150341.GC9927@lakrids.cambridge.arm.com>
 <CAAeHK+wBNnnKY4wg=34aD8Of6Vea4nzWF-FEnnSpHN0pFyTR3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+wBNnnKY4wg=34aD8Of6Vea4nzWF-FEnnSpHN0pFyTR3Q@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_090327_212636_1F453002 
X-CRM114-Status: GOOD (  37.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-mediatek@lists.infradead.org, Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 05:37:36PM +0200, Andrey Konovalov wrote:
> On Mon, Aug 19, 2019 at 5:03 PM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Mon, Aug 19, 2019 at 04:05:22PM +0200, Andrey Konovalov wrote:
> > > On Mon, Aug 19, 2019 at 3:34 PM Will Deacon <will@kernel.org> wrote:
> > > >
> > > > On Mon, Aug 19, 2019 at 02:23:48PM +0100, Mark Rutland wrote:
> > > > > On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
> > > > > > On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> > > > > > > __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> > > > > > > but it will modify pointer tag into 0xff, so there is a false positive.
> > > > > > >
> > > > > > > When enable tag-based kasan, phys_to_virt() function need to rewrite
> > > > > > > its original pointer tag in order to avoid kasan report an incorrect
> > > > > > > memory corruption.
> > > > > >
> > > > > > Hmm. Which tree did you see this on? We've recently queued a load of fixes
> > > > > > in this area, but I /thought/ they were only needed after the support for
> > > > > > 52-bit virtual addressing in the kernel.
> > > > >
> > > > > I'm seeing similar issues in the virtio blk code (splat below), atop of
> > > > > the arm64 for-next/core branch. I think this is a latent issue, and
> > > > > people are only just starting to test with KASAN_SW_TAGS.
> > > > >
> > > > > It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
> > > > > virt->page->virt, losing the per-object tag in the process.
> > > > >
> > > > > Our page_to_virt() seems to get a per-page tag, but this only makes
> > > > > sense if you're dealing with the page allocator, rather than something
> > > > > like SLUB which carves a page into smaller objects giving each object a
> > > > > distinct tag.
> > > > >
> > > > > Any round-trip of a pointer from SLUB is going to lose the per-object
> > > > > tag.
> > > >
> > > > Urgh, I wonder how this is supposed to work?
> > > >
> > > > If we end up having to check the KASAN shadow for *_to_virt(), then why
> > > > do we need to store anything in the page flags at all? Andrey?
> > >
> > > As per 2813b9c0 ("kasan, mm, arm64: tag non slab memory allocated via
> > > pagealloc") we should only save a non-0xff tag in page flags for non
> > > slab pages.
> > >
> > > Could you share your .config so I can reproduce this?
> >
> > I wrote a test (below) to do so. :)
> >
> > It fires with arm64 defconfig, + CONFIG_TEST_KASAN=m.
> >
> > With Andrey Ryabinin's patch it works as expected with no KASAN splats
> > for the two new test cases.
> 
> OK, Andrey's patch makes sense and fixes both Mark's test patch and
> reports from CONFIG_IOMMU_IO_PGTABLE_ARMV7S_SELFTEST.
> 
> Tested-by: Andrey Konovalov <andreyknvl@google.com>
> Reviewed-by: Andrey Konovalov <andreyknvl@google.com>
> 
> on both patches.
> 
> >
> > Thanks,
> > Mark.
> >
> > ---->8----
> > From 7e8569b558fca21ad4e80fddae659591bc84ce1f Mon Sep 17 00:00:00 2001
> > From: Mark Rutland <mark.rutland@arm.com>
> > Date: Mon, 19 Aug 2019 15:39:32 +0100
> > Subject: [PATCH] lib/test_kasan: add roundtrip tests
> >
> > In several places we needs to be able to operate on pointers which have
> 
> "needs" => "need"

Thanks! 

I'll spin a standalone v2 of this with that fixed and your tags folded
in.

Mark.

> 
> > gone via a roundtrip:
> >
> >         virt -> {phys,page} -> virt
> >
> > With KASAN_SW_TAGS, we can't preserve the tag for SLUB objects, and the
> > {phys,page} -> virt conversion will use KASAN_TAG_KERNEL.
> >
> > This patch adds tests to ensure that this works as expected, without
> > false positives.
> >
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > Cc: Andrey Konovalov <andreyknvl@google.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> > ---
> >  lib/test_kasan.c | 40 ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 40 insertions(+)
> >
> > diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> > index b63b367a94e8..cf7b93f0d90c 100644
> > --- a/lib/test_kasan.c
> > +++ b/lib/test_kasan.c
> > @@ -19,6 +19,8 @@
> >  #include <linux/string.h>
> >  #include <linux/uaccess.h>
> >
> > +#include <asm/page.h>
> > +
> >  /*
> >   * Note: test functions are marked noinline so that their names appear in
> >   * reports.
> > @@ -337,6 +339,42 @@ static noinline void __init kmalloc_uaf2(void)
> >         kfree(ptr2);
> >  }
> >
> > +static noinline void __init kfree_via_page(void)
> > +{
> > +       char *ptr;
> > +       size_t size = 8;
> > +       struct page *page;
> > +       unsigned long offset;
> > +
> > +       pr_info("invalid-free false positive (via page)\n");
> > +       ptr = kmalloc(size, GFP_KERNEL);
> > +       if (!ptr) {
> > +               pr_err("Allocation failed\n");
> > +               return;
> > +       }
> > +
> > +       page = virt_to_page(ptr);
> > +       offset = offset_in_page(ptr);
> > +       kfree(page_address(page) + offset);
> > +}
> > +
> > +static noinline void __init kfree_via_phys(void)
> > +{
> > +       char *ptr;
> > +       size_t size = 8;
> > +       phys_addr_t phys;
> > +
> > +       pr_info("invalid-free false positive (via phys)\n");
> > +       ptr = kmalloc(size, GFP_KERNEL);
> > +       if (!ptr) {
> > +               pr_err("Allocation failed\n");
> > +               return;
> > +       }
> > +
> > +       phys = virt_to_phys(ptr);
> > +       kfree(phys_to_virt(phys));
> > +}
> > +
> >  static noinline void __init kmem_cache_oob(void)
> >  {
> >         char *p;
> > @@ -737,6 +775,8 @@ static int __init kmalloc_tests_init(void)
> >         kmalloc_uaf();
> >         kmalloc_uaf_memset();
> >         kmalloc_uaf2();
> > +       kfree_via_page();
> > +       kfree_via_phys();
> >         kmem_cache_oob();
> >         memcg_accounted_kmem_cache();
> >         kasan_stack_oob();
> > --
> > 2.11.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

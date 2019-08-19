Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB91C927DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1z28e7Zq/TEHgEa8j92yccRUHUTSzR+2fO41Ke8XBI=; b=je89UhkSKOGKoB
	fWmdntHGU2XTDEYnBA3acq6mGt1nvloj2VXi+q8heCikUZETQjFPjAek/z8kQ6NS7p+oj6SdE5fTm
	h7v43QL2Zv0N5MQWNV7UKdS2NBPM3ucuxS5cTOGPR0hqDkzxMu8pDW/YlqcanIMu6c3wfjyFnfM19
	+yXcM4kMFIuYsGV9GW+ECvSbqMwaoj+MPGK9Dx79yBorPBXnrcVSRNglj+nJOVQefUVhpLS/ii0gG
	lisSk5OwOdwQJTct34POxXS1gZ1csDTKmqtlF8NULp8BzYEbg2UScWfJG/ZFILQ06V6+rn2/DPzb/
	PCu1V/JvSbtzd3+MzxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjCO-00074b-2Y; Mon, 19 Aug 2019 15:03:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjCF-00074C-Tb; Mon, 19 Aug 2019 15:03:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD2E428;
 Mon, 19 Aug 2019 08:03:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 009D53F718;
 Mon, 19 Aug 2019 08:03:43 -0700 (PDT)
Date: Mon, 19 Aug 2019 16:03:41 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
Message-ID: <20190819150341.GC9927@lakrids.cambridge.arm.com>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
 <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_080348_046214_F7E8AF3B 
X-CRM114-Status: GOOD (  29.90  )
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
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 04:05:22PM +0200, Andrey Konovalov wrote:
> On Mon, Aug 19, 2019 at 3:34 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Aug 19, 2019 at 02:23:48PM +0100, Mark Rutland wrote:
> > > On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
> > > > On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> > > > > __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> > > > > but it will modify pointer tag into 0xff, so there is a false positive.
> > > > >
> > > > > When enable tag-based kasan, phys_to_virt() function need to rewrite
> > > > > its original pointer tag in order to avoid kasan report an incorrect
> > > > > memory corruption.
> > > >
> > > > Hmm. Which tree did you see this on? We've recently queued a load of fixes
> > > > in this area, but I /thought/ they were only needed after the support for
> > > > 52-bit virtual addressing in the kernel.
> > >
> > > I'm seeing similar issues in the virtio blk code (splat below), atop of
> > > the arm64 for-next/core branch. I think this is a latent issue, and
> > > people are only just starting to test with KASAN_SW_TAGS.
> > >
> > > It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
> > > virt->page->virt, losing the per-object tag in the process.
> > >
> > > Our page_to_virt() seems to get a per-page tag, but this only makes
> > > sense if you're dealing with the page allocator, rather than something
> > > like SLUB which carves a page into smaller objects giving each object a
> > > distinct tag.
> > >
> > > Any round-trip of a pointer from SLUB is going to lose the per-object
> > > tag.
> >
> > Urgh, I wonder how this is supposed to work?
> >
> > If we end up having to check the KASAN shadow for *_to_virt(), then why
> > do we need to store anything in the page flags at all? Andrey?
> 
> As per 2813b9c0 ("kasan, mm, arm64: tag non slab memory allocated via
> pagealloc") we should only save a non-0xff tag in page flags for non
> slab pages.
> 
> Could you share your .config so I can reproduce this?

I wrote a test (below) to do so. :)

It fires with arm64 defconfig, + CONFIG_TEST_KASAN=m.

With Andrey Ryabinin's patch it works as expected with no KASAN splats
for the two new test cases.

Thanks,
Mark.

---->8----
From 7e8569b558fca21ad4e80fddae659591bc84ce1f Mon Sep 17 00:00:00 2001
From: Mark Rutland <mark.rutland@arm.com>
Date: Mon, 19 Aug 2019 15:39:32 +0100
Subject: [PATCH] lib/test_kasan: add roundtrip tests

In several places we needs to be able to operate on pointers which have
gone via a roundtrip:

	virt -> {phys,page} -> virt

With KASAN_SW_TAGS, we can't preserve the tag for SLUB objects, and the
{phys,page} -> virt conversion will use KASAN_TAG_KERNEL.

This patch adds tests to ensure that this works as expected, without
false positives.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 lib/test_kasan.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/lib/test_kasan.c b/lib/test_kasan.c
index b63b367a94e8..cf7b93f0d90c 100644
--- a/lib/test_kasan.c
+++ b/lib/test_kasan.c
@@ -19,6 +19,8 @@
 #include <linux/string.h>
 #include <linux/uaccess.h>
 
+#include <asm/page.h>
+
 /*
  * Note: test functions are marked noinline so that their names appear in
  * reports.
@@ -337,6 +339,42 @@ static noinline void __init kmalloc_uaf2(void)
 	kfree(ptr2);
 }
 
+static noinline void __init kfree_via_page(void)
+{
+	char *ptr;
+	size_t size = 8;
+	struct page *page;
+	unsigned long offset;
+
+	pr_info("invalid-free false positive (via page)\n");
+	ptr = kmalloc(size, GFP_KERNEL);
+	if (!ptr) {
+		pr_err("Allocation failed\n");
+		return;
+	}
+
+	page = virt_to_page(ptr);
+	offset = offset_in_page(ptr);
+	kfree(page_address(page) + offset);
+}
+
+static noinline void __init kfree_via_phys(void)
+{
+	char *ptr;
+	size_t size = 8;
+	phys_addr_t phys;
+
+	pr_info("invalid-free false positive (via phys)\n");
+	ptr = kmalloc(size, GFP_KERNEL);
+	if (!ptr) {
+		pr_err("Allocation failed\n");
+		return;
+	}
+
+	phys = virt_to_phys(ptr);
+	kfree(phys_to_virt(phys));
+}
+
 static noinline void __init kmem_cache_oob(void)
 {
 	char *p;
@@ -737,6 +775,8 @@ static int __init kmalloc_tests_init(void)
 	kmalloc_uaf();
 	kmalloc_uaf_memset();
 	kmalloc_uaf2();
+	kfree_via_page();
+	kfree_via_phys();
 	kmem_cache_oob();
 	memcg_accounted_kmem_cache();
 	kasan_stack_oob();
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1057692746
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3U/mJW5JTEtTn2Htjl2UU80JzOGI+kMqXRHfJkIIAM=; b=FdVABqkQCHZzZh
	yAAL6KUsRJhkC4hpGyTz6FL6iyT8ccZ4feaH3PGPF66X78K8VBCycdOVnuTnHd1hP9zmsJnK7+j0/
	NM+Qerrq82iCCp6cDbp7vNoj9DCMqk5p1Nmkhrww9wjjFg8WsXbtg6MsoYevOpZEiGANX11ukYSzq
	VmFJNZsiFBe+G5f/HZli+VzqQ+NHPXQD1E7PIaUJnGRPgTV/Wmuc+lrXYDxJ83745uXWKQZb0cqtm
	94GlAa309hrIvRcnOpp2nXmqmTXjHKl09NztkkcTRyu/RiDdABZ5dTQiXqsP4pASY4X/4GbGNlvop
	Mgz23vW9c/CoGAnSC6AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzitF-0007I3-I6; Mon, 19 Aug 2019 14:44:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzit8-0007HH-5N; Mon, 19 Aug 2019 14:44:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BF7928;
 Mon, 19 Aug 2019 07:43:59 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 293DC3F718;
 Mon, 19 Aug 2019 07:43:57 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:43:55 +0100
From: Will Deacon <will.deacon@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
Message-ID: <20190819144355.GD14981@fuggles.cambridge.arm.com>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
 <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
 <20190819142238.2jobs6vabkp2isg2@willie-the-truck>
 <1ac7eb3e-156f-218c-8c5a-39a05dd46d55@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ac7eb3e-156f-218c-8c5a-39a05dd46d55@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_074402_295606_C7E9B6F4 
X-CRM114-Status: GOOD (  27.10  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream@mediatek.com, Andrey Konovalov <andreyknvl@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, linux-mediatek@lists.infradead.org,
 Dmitry Vyukov <dvyukov@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Alexander Potapenko <glider@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 03:35:16PM +0100, Robin Murphy wrote:
> On 19/08/2019 15:22, Will Deacon wrote:
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
> > 
> > Thanks, that makes sense. Hopefully the patch from Andrey R will solve
> > both of the reported splats, since I'd not realised they were both on the
> > kfree() path.
> > 
> > > Could you share your .config so I can reproduce this?
> > 
> > This is in the iopgtable code, so it's probably pretty tricky to trigger
> > at runtime unless you have the write IOMMU hardware, unfortunately.
> 
> If simply freeing any entry from the l2_tables cache is sufficient, then the
> short-descriptor selftest should do the job, and that ought to run on
> anything (modulo insane RAM layouts).

Ok, so that would be defconfig + CONFIG_IOMMU_IO_PGTABLE_ARMV7S +
CONFIG_IOMMU_IO_PGTABLE_ARMV7S_SELFTEST + KASAN...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

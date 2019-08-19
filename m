Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137B99268A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQwBxdznlRd37gXAhwdfQWjLkN5cAKnSNnymxXCaKwc=; b=S+gQqzXKaHjLuI
	3J7jBzH8oUr2vcDlV2Qbl7di+9obQkADYzsgmaCTQwwsh+8HY6pgcr3tmdK5nU21JxzaajTiboHXc
	+HiXuS9U2n66e8gUslH8XJv0w/sDWsNTf/Izgq2o+zkT+feafJLmSq1TOYCjxj6ifhwU8xzmir+tL
	jQcmR0HMCrVy7JPGTrA/kcB/VMUEoUwwOqcYeB678cxXwNvVDbzuBwzVL0K8l3IrieHHskHZCMsYD
	hBeIKBOkZRvo8vG2rJTyFm4uxS1NLqnAfNmZTW9ZwrU4RFe+kjUW9xIuLrGFGEIr/DsovXXY2u6nm
	F2ouBySZKsvKHah167kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziYe-0006Ic-Dq; Mon, 19 Aug 2019 14:22:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziYW-0006IA-Mc; Mon, 19 Aug 2019 14:22:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EAEF820651;
 Mon, 19 Aug 2019 14:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566224564;
 bh=cQXXO22L6aHmPQhctizouu0v/8jQD8BerBclLIhADhs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pj+ZW3B1FvjYhBjkZZBmU0f1b6I51bzFAMFcoEmWoik8acU4kDoOBV4WtaSoNXFr/
 viuJWq+U36J79SqIdGqkoCzb+RUy+oubwzyqse6PheLOSyyFfGgUk2vTopm22yf2I5
 2nGgjhBlftpHJ3OdpLVVE12DvYw94wsuIuQUFdHY=
Date: Mon, 19 Aug 2019 15:22:38 +0100
From: Will Deacon <will@kernel.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
Message-ID: <20190819142238.2jobs6vabkp2isg2@willie-the-truck>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
 <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_072244_780363_B154B8D3 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
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

Thanks, that makes sense. Hopefully the patch from Andrey R will solve
both of the reported splats, since I'd not realised they were both on the
kfree() path.

> Could you share your .config so I can reproduce this?

This is in the iopgtable code, so it's probably pretty tricky to trigger
at runtime unless you have the write IOMMU hardware, unfortunately.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

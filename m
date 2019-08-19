Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2846292517
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/VQP42DMpRT3QjGN3WWYc5tTXGGDqyG8vFihGxIbd4=; b=LiHSUFMmdfIORR
	JIro0fjCrcPzCrD7UvgaLqDOv4/uEX3DsqlhC9iYt1TcLKQeKQ4AU+jcpcEJa9xAtTM0YrerSqUbQ
	uC6+dW4NtdgyhFvA3yfw8VoqfponcR4ZBYsfdGzw0CpcGjQnmFuOWOWw74PJxkcvqxR8uRwE+dGei
	+sBmGRjxwD8xf298YuFOwo2AitSwU35INp9qFj8gZsc5RlfDRsLXOiuxkBUDLHixGaXPBIurglcD3
	Grorz5IfEFEd7SCVGCr+uIUkZ/Y6S9DpCQ0GmklhNMhcqq+1W3airWFEtq5FE56uKYK75pNUdLcSz
	RiOpA7/JwJEfHRUPm/4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhoG-000808-5g; Mon, 19 Aug 2019 13:34:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzho8-0007zN-1h; Mon, 19 Aug 2019 13:34:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BF452085A;
 Mon, 19 Aug 2019 13:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566221687;
 bh=hKfeHuAsZv5gzXScdBCBmBovA3PHWMaHm8gHzstZO+Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mAkOdid7IAxnHFy+Few0/wS0kb50BeKhhXaCcF0XKsC019eIDOW2udcMISL+o/l3R
 ytR1sMp8Nsjgu4b0yXw8FGZLKBi1JGA9RLTfRtzvlGHN6i8A6mmT35uy8k1NFnMitj
 B/nGRJ+H6Z7TWGEGUN0zll1eIQ/FKo+Nlu22qki8=
Date: Mon, 19 Aug 2019 14:34:42 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
Message-ID: <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819132347.GB9927@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063448_113830_3B7AA73E 
X-CRM114-Status: GOOD (  19.22  )
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 linux-mediatek@lists.infradead.org, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrey Konovalov <andreyknvl@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 02:23:48PM +0100, Mark Rutland wrote:
> On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
> > On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> > > __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> > > but it will modify pointer tag into 0xff, so there is a false positive.
> > > 
> > > When enable tag-based kasan, phys_to_virt() function need to rewrite
> > > its original pointer tag in order to avoid kasan report an incorrect
> > > memory corruption.
> > 
> > Hmm. Which tree did you see this on? We've recently queued a load of fixes
> > in this area, but I /thought/ they were only needed after the support for
> > 52-bit virtual addressing in the kernel.
> 
> I'm seeing similar issues in the virtio blk code (splat below), atop of
> the arm64 for-next/core branch. I think this is a latent issue, and
> people are only just starting to test with KASAN_SW_TAGS.
> 
> It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
> virt->page->virt, losing the per-object tag in the process.
> 
> Our page_to_virt() seems to get a per-page tag, but this only makes
> sense if you're dealing with the page allocator, rather than something
> like SLUB which carves a page into smaller objects giving each object a
> distinct tag.
> 
> Any round-trip of a pointer from SLUB is going to lose the per-object
> tag.

Urgh, I wonder how this is supposed to work?

If we end up having to check the KASAN shadow for *_to_virt(), then why
do we need to store anything in the page flags at all? Andrey?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

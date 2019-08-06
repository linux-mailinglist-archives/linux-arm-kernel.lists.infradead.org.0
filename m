Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5350835AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JyTVch6+JYBleEVfBMPDtb7cA5fizwAaGX7HL0D024=; b=Tf1nQkzq/m41jy
	z8VqsRCtCW3XpHihhGrTkx4r97kZefNqur62yCq3tupdrh4q5GIxWWZGlQ2Sq56izUYFLhwduCUaY
	oNENtDpfqBYrPYDTBLdBSDWdMDye3QPQ0sSMQTDB8wxzjz5SgOm5qokg9sxhKj+qSfwQ17KJ4jyd2
	xnYhyRlJvPEAkTBPH0KAf3+viKp6t3Xvv2Etz48jEWqkNWSd8G6H5oMZKJgUjFeZ5nYBNIu+7Ay8x
	9Syd+y1xm9tNCh+IV24BgEFsTYDV98X/nhP/dYE8eeetcwmOc9d9XwPOVrpQ73puIHfr+a9YW+JUp
	YP8ey7/zYO//ZbL3bMxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1jq-0001ss-Sy; Tue, 06 Aug 2019 15:51:02 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1je-0001oa-2W
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:50:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 125CC227A81; Tue,  6 Aug 2019 17:50:45 +0200 (CEST)
Date: Tue, 6 Aug 2019 17:50:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190806155044.GC25050@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_085050_296536_5EA5CC88 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sean Paul <sean@poorly.run>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> Agreed that drm_cflush_* isn't a great API.  In this particular case
> (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> out to memory later, and so that I don't get a cache hit on
> uncached/wc mmap'ing.

So what is the use case here?  Allocate pages using the page allocator
(or CMA for that matter), and then mmaping them to userspace and never
touching them again from the kernel?

> Tying it in w/ iommu seems a bit weird to me.. but maybe that is just
> me, I'm certainly willing to consider proposals or to try things and
> see how they work out.

This was just my through as the fit seems easy.  But maybe you'll
need to explain your use case(s) a bit more so that we can figure out
what a good high level API is.

> Exposing the arch_sync_* API and using that directly (bypassing
> drm_cflush_*) actually seems pretty reasonable and pragmatic.  I did
> have one doubt, as phys_to_virt() is only valid for kernel direct
> mapped memory (AFAIU), what happens for pages that are not in kernel
> linear map?  Maybe it is ok to ignore those pages, since they won't
> have an aliased mapping?

They could have an aliased mapping in vmalloc/vmap space for example,
if you created one.  We have the flush_kernel_vmap_range /
invalidate_kernel_vmap_range APIs for those, that are implement
on architectures with VIVT caches.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

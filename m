Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A050F82E0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJSXgxWm9GRbQ8OTU4JfeTpEdZeXg+OweidGg0xc0HE=; b=b8inqBkjYAYDXb
	cLsk0v27QCtcs8x5BMejwVoqoBOlsJmPIJBZ1icz3iOEGcQ0gTEoMtHjC+CvfSZJFdZXcCcFapN0v
	ZMJTDxzt1AsYWaerbkt2H9IEb/rc592hRYXyuyHsStuxeCS06NKfmhK/f9eGIEmG85zJFQrjAO/GR
	d1ICWbsjFPLnaGnMfJ+Yff8pSWNtWmOfk1Po/jL7PO8WKvUNNeNVuUNzF3wsJtCdTrP7XZslidVjS
	RzQXVlAxjrXRwv1B2URZG67Zjm6dR4pKspKAI+baSqh/c/HRuESbp6ikvLS15E1TGZeKtAbSGphpt
	pTqXq/kyjLXFj5DG96MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huv96-0002Pj-4C; Tue, 06 Aug 2019 08:48:40 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huv8u-0002PH-76
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:48:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5B809227A81; Tue,  6 Aug 2019 10:48:22 +0200 (CEST)
Date: Tue, 6 Aug 2019 10:48:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190806084821.GA17129@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805211451.20176-1-robdclark@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_014828_411296_E64D42B8 
X-CRM114-Status: GOOD (  13.20  )
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
Cc: Rob Clark <robdclark@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This goes in the wrong direction.  drm_cflush_* are a bad API we need to
get rid of, not add use of it.  The reason for that is two-fold:

 a) it doesn't address how cache maintaince actually works in most
    platforms.  When talking about a cache we three fundamental operations:

	1) write back - this writes the content of the cache back to the
	   backing memory
	2) invalidate - this remove the content of the cache
	3) write back + invalidate - do both of the above

 b) which of the above operation you use when depends on a couple of
    factors of what you want to do with the range you do the cache
    maintainance operations

Take a look at the comment in arch/arc/mm/dma.c around line 30 that
explains how this applies to buffer ownership management.  Note that
"for device" applies to "for userspace" in the same way, just that
userspace then also needs to follow this protocol.  So the whole idea
that random driver code calls random low-level cache maintainance
operations (and use the non-specific term flush to make it all more
confusing) is a bad idea.  Fortunately enough we have really good
arch helpers for all non-coherent architectures (this excludes the
magic i915 won't be covered by that, but that is a separate issue
to be addressed later, and the fact that while arm32 did grew them
very recently and doesn't expose them for all configs, which is easily
fixable if needed) with arch_sync_dma_for_device and
arch_sync_dma_for_cpu.  So what we need is to figure out where we
have valid cases for buffer ownership transfer outside the DMA
API, and build proper wrappers around the above function for that.
My guess is it should probably be build to go with the iommu API
as that is the only other way to map memory for DMA access, but
if you have a better idea I'd be open to discussion.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

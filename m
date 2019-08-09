Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BA8873DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68comsCu165P2WeJbPybYEp9v/tCPfo2GjNQrAnTpd8=; b=tQa37IYW0ztwRh
	rpemicLZvNjm2aSEaMwE5tvRoHXHvMaKWmHxS+DjF565AsoLSdPHUQw88CX9ZfCu6rqb/Yaj6jMJ7
	sZUFaWxogyiECWdlrtJdFPbslQUVVFjsDFZsmn2e3yGQgPk6doUe3gW7kXZguhvoUKJZkC2hsFIBr
	rADUTWP9sdOC43b1iIGHtFf53LHW16Km5fh47ddBe8rplDuGi6xGOHYNgjlYITOFHgDwcZkip1Xdm
	hvfKK6W+xNdi09PLo2b1P1MqAsx/aQJ7dSH9D2o5wzQGHs9ppLg5tqdeNRkxQf1SZd26NisfyVTXo
	vUmBwgZ0ne3mkN2qcbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw03V-0006nt-Vd; Fri, 09 Aug 2019 08:15:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw03D-0005td-1R
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:15:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8901768B05; Fri,  9 Aug 2019 10:14:55 +0200 (CEST)
Date: Fri, 9 Aug 2019 10:14:55 +0200
From: Christoph Hellwig <hch@lst.de>
To: Christoph Hellwig <hch@lst.de>, Rob Clark <robdclark@chromium.org>,
 Rob Clark <robdclark@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190809081455.GA21967@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
 <20190807062545.GF6627@lst.de>
 <CAKMK7uH1O3q8VUftikipGH6ACPoT-8tbV1Zwo-8WL=wUHiqsoQ@mail.gmail.com>
 <20190808095506.GA32621@lst.de> <20190808115808.GN7444@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808115808.GN7444@phenom.ffwll.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_011503_245579_F274FAE5 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 01:58:08PM +0200, Daniel Vetter wrote:
> > > We use shmem to get at swappable pages. We generally just assume that
> > > the gpu can get at those pages, but things fall apart in fun ways:
> > > - some setups somehow inject bounce buffers. Some drivers just give
> > > up, others try to allocate a pool of pages with dma_alloc_coherent.
> > > - some devices are misdesigned and can't access as much as the cpu. We
> > > allocate using GFP_DMA32 to fix that.
> > 
> > Well, for shmem you can't really call allocators directly, right?
> 
> We can pass gfp flags to shmem_read_mapping_page_gfp, which is just about
> enough for the 2 cases on intel platforms where the gpu can only access
> 4G, but the cpu has way more.

Right.  And that works for architectures without weird DMA offsets and
devices that exactly have a 32-bit DMA limit.  It falls flat for all
the more complex ones unfortunately.

> > But userspace malloc really means dma_map_* anyway, so not really
> > relevant for memory allocations.
> 
> It does tie in, since we'll want a dma_map which fails if a direct mapping
> isn't possible. It also helps the driver code a lot if we could use the
> same low-level flushing functions between our own memory (whatever that
> is) and anon pages from malloc. And in all the cases if it's not possible,
> we want a failure, not elaborate attempts at hiding the differences
> between all possible architectures out there.

At the very lowest level all goes down to the same three primitives we
talked about anyway, but there are different ways how they are combined.
For the streaming mappins looks at the table in arch/arc/mm/dma.c I
mentioned earlier.  For memory that is prepared for just mmaping to
userspace without a kernel user we'll always do a wb+inv.  But as the
other subthread shows we'll need to eventually look into unmapping
(or remapping with the same attributes) of that memory in kernel space
to avoid speculation bugs (or just invalid combination on x86 where
we check for that), so the API will be a little more complex.

Btw, are all DRM drivers using vmf_insert_* to pre-populate the mapping
like the MSM case, or are some doing dynamic faulting from
vm_ops->fault?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF5383405
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geD5PF0j8xfdltt39X0aQCiPWVuKEuJQV3RNnTXD/4E=; b=jmATiesCS5PTiR
	7p9P+oPbmZwtu/bY2Efax4PwZt/iWWKJIAKEJl6Im/Ci/Fsb5Pcx4Hs2fjShLjKNUqlQ7xPBLOQux
	y7WGJ++KEvpx0Hv3z0rIpVg+6a7cAe4cqmu8LDY8gRPJYs2zP1PIUFwi4z8iATpol/5JxRrkgxP6+
	IwePneFw57h6+uleUTSFreq1yfUfO442orIWEyK1BjllFhoFn3apCnq94j0WbwYo4EFxYDZjwIKUL
	1WO1dwdMBvFd5WR8l8PhVqEvTaTf7Vlb9Pf6QjJwovFRvByUO+TYR0Hlh4O8veTY26xv0ThxZiowI
	wEJ7ImK2vSPVCtYV9UAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0YW-0007Q7-A0; Tue, 06 Aug 2019 14:35:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0YL-00071I-QH
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:35:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C162B344;
 Tue,  6 Aug 2019 07:35:01 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD5F23F706;
 Tue,  6 Aug 2019 07:34:59 -0700 (PDT)
Date: Tue, 6 Aug 2019 15:34:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190806143457.GF475@lakrids.cambridge.arm.com>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_073505_902469_C55D82ED 
X-CRM114-Status: GOOD (  15.26  )
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
> On Tue, Aug 6, 2019 at 1:48 AM Christoph Hellwig <hch@lst.de> wrote:
> >
> > This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> > get rid of, not add use of it.  The reason for that is two-fold:
> >
> >  a) it doesn't address how cache maintaince actually works in most
> >     platforms.  When talking about a cache we three fundamental operations:
> >
> >         1) write back - this writes the content of the cache back to the
> >            backing memory
> >         2) invalidate - this remove the content of the cache
> >         3) write back + invalidate - do both of the above
> 
> Agreed that drm_cflush_* isn't a great API.  In this particular case
> (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> out to memory later, and so that I don't get a cache hit on
> uncached/wc mmap'ing.

Is there a cacheable alias lying around (e.g. the linear map), or are
these addresses only mapped uncached/wc?

If there's a cacheable alias, performing an invalidate isn't sufficient,
since a CPU can allocate a new (clean) entry at any point in time (e.g.
as a result of prefetching or arbitrary speculation).

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D9F873E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfdBjkwUh+isrTdxFc+uqmjPXY6t015eSQbP/VtfnbA=; b=IXYs+DsyxRYcXI
	74fl9zSFovYTCNpkO3PDkYM4bdWtG3SSM4q5YMeuARhmE507SKk5XQoER/sjQ+CWRDwsI8Y4tnu6Q
	sLjnPnRGlZ9WZxIqURvXvKjz7mbAK9HXnLLvzg/R20M7UNCAKZheF4Qsfgf6SdJlxmjWtNBD6Tqf9
	ycmU2y/5SaiYY6Hw/4dxYjuNuOfN2kEJs4O6XXfWT1/7C9g77D749OZmq4tmphbg8V9IHXjE5uGrV
	CAiop9gPE28K9Xl8B3Sh6rKIpb1m/+eVOzHLKkrB7j0T/wqHQdDe5ybATJSFjz9qGuOnPlpvG0Adg
	kkQ8IH4ORFfAGeK7hbWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw07H-0007ti-61; Fri, 09 Aug 2019 08:19:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw074-0007tN-Ey
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:19:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2822D68AFE; Fri,  9 Aug 2019 10:18:58 +0200 (CEST)
Date: Fri, 9 Aug 2019 10:18:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190809081857.GB21967@lst.de>
References: <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
 <20190807164958.GA44765@lakrids.cambridge.arm.com>
 <CAJs_Fx71T=kJEgt28TWqzw+jOahSbLQynCg83+szQW7op4xBkQ@mail.gmail.com>
 <20190808075947.GE30308@lst.de>
 <CAJs_Fx5fJ31CsFODBgBbhcCvoxSX_D1NHDjQs4LtJ_0GwuxMVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx5fJ31CsFODBgBbhcCvoxSX_D1NHDjQs4LtJ_0GwuxMVA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_011902_656046_27E8FE40 
X-CRM114-Status: GOOD (  18.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 09:44:32AM -0700, Rob Clark wrote:
> > GFP_HIGHUSER basically just means that this is an allocation that could
> > dip into highmem, in which case it would not have a kernel mapping.
> > This can happen on arm + LPAE, but not on arm64.
> 
> Just a dumb question, but why is *all* memory in the linear map on
> arm64?  It would seem useful to have a source of pages that is not in
> the linear map.
> I guess it is mapped as huge pages (or something larger than 4k pages)?

In general that is just how the Linux kernel always worked, on all
architectures - we always had a linear mapping for all memory in the
kernel to make accessing it simple.  That started to break down a bit
with the 32-bit x86 PAE mode that supported more physical addressing
that virtual, which required the "high" memory to not be mapped into
the kernel direct mapping.  Similar schemes later showed up on various
other 32-bit architectures.

There is a patchset called XPFO that ensures memory is either in the
kernel direct map, or in userspace but not both to work around
speculation related vulnerabilities, but it has a pretty big performance
impact.

> Any recommended reading to understand how/why the kernel address space
> is setup the way it is (so I can ask fewer dumb questions)?

I don't really have a good pointer.  But usually there is just dumb
answers, not dumb questions.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

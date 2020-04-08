Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFF51A24B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+ggtfNnjtvNKkPKfEjfCHKF1DiSinBAAbky4RnBGo8=; b=c+3v7eEUkf/nqQ
	l6fotm9xtf4+YjPZgpyTHU/H6xnvs2UX2yfXbFTKazq0Kim4UGYksZF3zK3kxOgOo4Ft3gHFBHfOn
	iBZf9dRw1F6LntXnoGFy2wRTT3eWrxL6opy4EWo8l/P32pQbyjg3DZP+GeLbtDl/Vq+sc5NHnYTjW
	KKApRYnwpEpW3WfWRfbY6M0scGtq4iLUOHOCAMoI+0+PQvQP/yXgRUjU1YpIcFB0BZUdlqgfRQpEC
	IDICKAYEgmKjRxSqzHLREced1VxfYjLsphj8QAR0DQVvnYxTx461GDeYlHk8B1uYcvTDN7G6KgMGx
	tBdAvpGA/yFz8C8HaQaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCNC-0004Of-QK; Wed, 08 Apr 2020 15:12:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCN8-0004OO-3u; Wed, 08 Apr 2020 15:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Rjv5131jSAiyIu5HYACdcXLWZcmDSy5Ae4NdyG3A0EU=; b=FuXsAshYsSTgOfgG+tafxq311H
 2DLcoyBxKM/nbGCT2GEvorwEQ03/VOWi5DKAbxhI4DqIPjAGXNNsOWsSOG7aU/Lla3ICxHLRu6SzM
 /q9DEwOTHGBUUXd+C1gWvP9Pjgc6GcW+Xi/RtUJFOAx/HNAnnerQFGHAfcPScOe5j3ll7FaXVMW5Z
 Z2xjwSDzwp0YcD5TzxjStK7nQDDKjXVISOx5Itl6OOQeUK3wpMFWDuSjU7Q7E7VC31GOzaWh+PQx5
 zbPF7UcdVGkG+53Xs4Olbyq1FLyXUWKqf1azA1wf6Pm9lsIEV7Cpflmxs3MnCPe2MFR6K51PRMHF8
 JF/j+ctA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCN3-0004v8-A7; Wed, 08 Apr 2020 15:12:05 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 64B9E300478;
 Wed,  8 Apr 2020 17:12:03 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 2B71F2BB026A0; Wed,  8 Apr 2020 17:12:03 +0200 (CEST)
Date: Wed, 8 Apr 2020 17:12:03 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200408151203.GN20730@hirez.programming.kicks-ass.net>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Christoph Hellwig <hch@lst.de>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 08:01:00AM -0700, Randy Dunlap wrote:
> Hi,
> 
> On 4/8/20 4:59 AM, Christoph Hellwig wrote:
> > diff --git a/mm/Kconfig b/mm/Kconfig
> > index 36949a9425b8..614cc786b519 100644
> > --- a/mm/Kconfig
> > +++ b/mm/Kconfig
> > @@ -702,7 +702,7 @@ config ZSMALLOC
> >  
> >  config ZSMALLOC_PGTABLE_MAPPING
> >  	bool "Use page table mapping to access object in zsmalloc"
> > -	depends on ZSMALLOC
> > +	depends on ZSMALLOC=y
> 
> It's a bool so this shouldn't matter... not needed.

My mm/Kconfig has:

config ZSMALLOC
	tristate "Memory allocator for compressed pages"
	depends on MMU

which I think means it can be modular, no?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

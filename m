Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110BC1A24C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1RQkDr4wa0uA26HRRkS0wtbeHQknQUb4slXj1jF/XY=; b=qUreGHQ3cHnY8R
	7jqNB0YEFulkXN6U6mSJKNFzDYsCp9oybR0QvRY2zg9WxwjnkSUGtlOrgbuIDGNk5gCymkUiHAlGW
	NC0BJwlEVrPsiRFXdIjCBWGk4u3arW9nShiRrh5j6wVexHv0DVRnkACbLiXCYdZdEfDqmqhgYZI5k
	4/XslXd2yNRRkk8Y3jQG1pV6EjlYBw9RCzj1+NITxGnAVHSLTD5P4tL11ZPQ1ZUKIIkutv4+/L9Ls
	3HbWnna9d1L884kd6IyoYf0BTccvqljC5bAD8dTnF6NE2ENzHdJ4O9crpH7mYP7j5nstyomBfqiko
	dkYESHCbNnPQqaKiWPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCQI-0000wZ-I2; Wed, 08 Apr 2020 15:15:26 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jMCQB-0000vd-W6; Wed, 08 Apr 2020 15:15:19 +0000
Date: Wed, 8 Apr 2020 08:15:19 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200408151519.GQ21484@bombadil.infradead.org>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <c0c86feb-b3d8-78f2-127f-71d682ffc51f@infradead.org>
 <20200408151203.GN20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408151203.GN20730@hirez.programming.kicks-ass.net>
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
 Robin Murphy <robin.murphy@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 05:12:03PM +0200, Peter Zijlstra wrote:
> On Wed, Apr 08, 2020 at 08:01:00AM -0700, Randy Dunlap wrote:
> > Hi,
> > 
> > On 4/8/20 4:59 AM, Christoph Hellwig wrote:
> > > diff --git a/mm/Kconfig b/mm/Kconfig
> > > index 36949a9425b8..614cc786b519 100644
> > > --- a/mm/Kconfig
> > > +++ b/mm/Kconfig
> > > @@ -702,7 +702,7 @@ config ZSMALLOC
> > >  
> > >  config ZSMALLOC_PGTABLE_MAPPING
> > >  	bool "Use page table mapping to access object in zsmalloc"
> > > -	depends on ZSMALLOC
> > > +	depends on ZSMALLOC=y
> > 
> > It's a bool so this shouldn't matter... not needed.
> 
> My mm/Kconfig has:
> 
> config ZSMALLOC
> 	tristate "Memory allocator for compressed pages"
> 	depends on MMU
> 
> which I think means it can be modular, no?

Randy means that ZSMALLOC_PGTABLE_MAPPING is a bool, so I think hch's patch
is wrong ... if ZSMALLOC is 'm' then ZSMALLOC_PGTABLE_MAPPING would become
'n' instead of 'y'.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

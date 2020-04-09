Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D75C1A3152
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuhhpFd6yLm9GNR9d7doVPxVZdl/oKHispAn0zyOaMs=; b=X3ceC3Ifv39LNj
	P2qBylmqx7/WYCPF8KZXH/UOx+QJNE/o0ft8Slg4QKS317ATWQOkP86Fwz8lzG/jki9hiPFDHH5Qi
	5Ksqc7+EV1GCnpfcB0nYJNgNuYSfZizzOhj5kUKCp/TXLZPCg6Mq9+lcTybiMjZ5V7MFK87oAQCBo
	Zw2IJQ2cE76TkNJ6gc6Tybjq53GbFWkZdpQ3yPQa0dWAJ8Yylx0tAb56opneSPRalCbc6sRLS22JW
	e1upBueJtMFl2B08jsBq2Vwp4Z8DjpAJ75POjGaW3yk2aM7cHBcjF8LMYp0LYjGhjZMyI6/Q21V1a
	nhKGcG+9J8RPCaUspLfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSyU-0006XV-D6; Thu, 09 Apr 2020 08:55:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSyL-0006Wz-Er
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Apr 2020 08:55:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Mime-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=5z1uw8OZGUO7jsufzYsrLCvpLFzb4YyPeQK3R4WjlEo=; b=cItfEPK3jx6pZoXo8UWpKFsZRa
 c7Ma+a6FTcrqvGCrQwZfwFqZQ86wyUjddDZtdbqjzGHZokocRx5P3RHVvdS5N6f8aP61cJP72Tz4F
 v4FQ3m6rSIPrSIKnIE6SsvJw69jxqqY/Hjm+XknMfZgX5Dh/n376gOBKgFcrBuUgl4tHWUCF3rclZ
 et17+6rDLbf3wcqB7riuf7rzkqpy05+QnV30xNNQoRpHxoJtA3n7Mn/m83OB9J+u5mWcKfSsaZtDK
 bstEsJniwdJA37PVNPIc7usfdDfLmIP5uUIB3nl/VMy7ydSGej3MIKX/NEaGdGtwUaH4LK9oz4wEk
 +UsR67RA==;
Received: from kernel.crashing.org ([76.164.61.194])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSyH-0003G5-TJ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:55:40 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 0398s3us004063
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 9 Apr 2020 03:54:07 -0500
Message-ID: <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
Subject: Re: [PATCH 19/28] gpu/drm: remove the powerpc hack in
 drm_legacy_sg_alloc
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>
Date: Thu, 09 Apr 2020 18:54:01 +1000
In-Reply-To: <20200408122504.GO3456981@phenom.ffwll.local>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_095538_320046_296B8222 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 1.0 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-04-08 at 14:25 +0200, Daniel Vetter wrote:
> On Wed, Apr 08, 2020 at 01:59:17PM +0200, Christoph Hellwig wrote:
> > If this code was broken for non-coherent caches a crude powerpc hack
> > isn't going to help anyone else.  Remove the hack as it is the last
> > user of __vmalloc passing a page protection flag other than PAGE_KERNEL.
> 
> Well Ben added this to make stuff work on ppc, ofc the home grown dma
> layer in drm from back then isn't going to work in other places. I guess
> should have at least an ack from him, in case anyone still cares about
> this on ppc. Adding Ben to cc.

This was due to some drivers (radeon ?) trying to use vmalloc pages for
coherent DMA, which means on those 4xx powerpc's need to be non-cached.

There were machines using that (440 based iirc), though I honestly
can't tell if anybody still uses any of it.

Cheers,
Ben.

> -Daniel
> 
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  drivers/gpu/drm/drm_scatter.c | 11 +----------
> >  1 file changed, 1 insertion(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_scatter.c b/drivers/gpu/drm/drm_scatter.c
> > index ca520028b2cb..f4e6184d1877 100644
> > --- a/drivers/gpu/drm/drm_scatter.c
> > +++ b/drivers/gpu/drm/drm_scatter.c
> > @@ -43,15 +43,6 @@
> >  
> >  #define DEBUG_SCATTER 0
> >  
> > -static inline void *drm_vmalloc_dma(unsigned long size)
> > -{
> > -#if defined(__powerpc__) && defined(CONFIG_NOT_COHERENT_CACHE)
> > -	return __vmalloc(size, GFP_KERNEL, pgprot_noncached_wc(PAGE_KERNEL));
> > -#else
> > -	return vmalloc_32(size);
> > -#endif
> > -}
> > -
> >  static void drm_sg_cleanup(struct drm_sg_mem * entry)
> >  {
> >  	struct page *page;
> > @@ -126,7 +117,7 @@ int drm_legacy_sg_alloc(struct drm_device *dev, void *data,
> >  		return -ENOMEM;
> >  	}
> >  
> > -	entry->virtual = drm_vmalloc_dma(pages << PAGE_SHIFT);
> > +	entry->virtual = vmalloc_32(pages << PAGE_SHIFT);
> >  	if (!entry->virtual) {
> >  		kfree(entry->busaddr);
> >  		kfree(entry->pagelist);
> > -- 
> > 2.25.1
> > 
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

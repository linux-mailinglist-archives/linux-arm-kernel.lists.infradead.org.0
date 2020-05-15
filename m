Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5505F1D5C7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 00:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HxAfi7UXHN7SaS3Cltgj1OAXLZ1Thcv0Yhb9yKIHsk=; b=UoWz14R9/8EwuF
	dWnE0VjGEsFR7Dc+NFzdD8oH1EAsTaEarefOTy6pzcirR0EV2KHJzOcCHXi6bkOMq1HHEzLL2jIQj
	Nike0y8i7PlU9Dj4YKPPKLjMUIlRnnJGi37Kmg7z5wH2JZ+0G3BU9EhpHtTFN6puIMJp4lKXWmWMa
	kMaTLLABnT18bFmeDcdt1zcB3o2wgb3Zdzu5Pu5/PyuABtvQFKIsDnYbd98+TUDnSBgGBp/UmqIUE
	GjORQNwxD17z8U8KmYf68aqJAySttSMtEJL2J+rwHn8cQsJ6aru/il20QXpIGo04zfopruOCxwYmv
	2YSNGaWqW9ajRMWC9Pdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZj5n-0002jV-NW; Fri, 15 May 2020 22:46:11 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZj5f-0002iI-6s
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 22:46:05 +0000
Received: from dggemi402-hub.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id BD7C87220B5DED9F9533;
 Sat, 16 May 2020 06:45:54 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.251]) by
 dggemi402-hub.china.huawei.com ([10.3.17.135]) with mapi id 14.03.0487.000;
 Sat, 16 May 2020 06:45:48 +0800
From: Song Bao Hua <song.bao.hua@hisilicon.com>
To: Robin Murphy <robin.murphy@arm.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "hch@lst.de" <hch@lst.de>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
 "dagum@barrel.engr.sgi.com" <dagum@barrel.engr.sgi.com>, "ralf@oss.sgi.com"
 <ralf@oss.sgi.com>, "grundler@cup.hp.com" <grundler@cup.hp.com>,
 "Jay.Estabrook@compaq.com" <Jay.Estabrook@compaq.com>,
 "sailer@ife.ee.ethz.ch" <sailer@ife.ee.ethz.ch>, "andrea@suse.de"
 <andrea@suse.de>, "jens.axboe@oracle.com" <jens.axboe@oracle.com>,
 "davidm@hpl.hp.com" <davidm@hpl.hp.com>
Subject: RE: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
Thread-Topic: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
Thread-Index: AdYqec9gnuD/5zUSTfGZehfpOCqtzP//6eGA//7RmGA=
Date: Fri, 15 May 2020 22:45:47 +0000
Message-ID: <B926444035E5E2439431908E3842AFD249FA4D@DGGEMI525-MBS.china.huawei.com>
References: <B926444035E5E2439431908E3842AFD249F263@DGGEMI525-MBS.china.huawei.com>
 <36d67d68-4381-c7a7-dcf1-6383bd9ae0ad@arm.com>
In-Reply-To: <36d67d68-4381-c7a7-dcf1-6383bd9ae0ad@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.201.78]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_154603_606358_0FFC7CBD 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: Constantly map and unmap of streaming DMA buffers with
> IOMMU backend might cause serious performance problem
> 
> On 2020-05-15 09:19, Song Bao Hua wrote:
> [ snip... nice analysis, but ultimately it's still "doing stuff has more overhead
> than not doing stuff" ]
> 
> > I am thinking several possible ways on decreasing or removing the latency of
> DMA map/unmap for every single DMA transfer. Meanwhile, "non-strict" as an
> existing option with possible safety issues, I won't discuss it in this mail.
> 
> But passthrough and non-strict mode *specifically exist* for the cases where
> performance is the most important concern - streaming DMA with an IOMMU
> in the middle has an unavoidable tradeoff between performance and isolation,
> so dismissing that out of hand is not a good way to start making this
> argument.

I do understand there is a tradeoff between performance and isolation. However, users might ask for performance while supporting isolation. 
In passthrough mode, the whole memory might be accessible by DMA. In non-strict mode, a buffer could be still mapped in IOMMU when users have returned it to buddy and the buffer has even been allocated by another user. 

> 
> > 1. provide bounce coherent buffers for streaming buffers.
> > As the coherent buffers keep the status of mapping, we can remove the
> overhead of map and unmap for each single DMA operations. However, this
> solution requires memory copy between stream buffers and bounce buffers.
> Thus it will work only if copy is faster than map/unmap. Meanwhile, it will
> consume much more memory bandwidth.
> 
> I'm struggling to understand how that would work, can you explain it in more
> detail?

lower-layer drivers maintain some reusable coherent buffers.
For TX path, drivers copy streaming buffer to coherent buffer, then do DMA;
For RX path, drivers do DMA in coherent buffer, then copy to streaming buffer.

> 
> > 2.make upper-layer kernel components aware of the pain of iommu
> > map/unmap upper-layer fs, mm, networks can somehow let the lower-layer
> drivers know the end of the life cycle of sg buffers. In zswap case, I have seen
> zswap always use the same 2 pages as the destination buffers to save
> compressed page, but the compressor driver still has to constantly map and
> unmap those same two pages for every single compression since zswap and zip
> drivers are working in two completely different software layers.
> >
> > I am thinking some way as below, upper-layer kernel code can call:
> > sg_init_table(&sg...);
> > sg_mark_reusable(&sg....);
> > .... /* use the buffer many times */
> > ....
> > sg_mark_stop_reuse(&sg);
> >
> > After that, if low level drivers see "reusable" flag, it will realize the buffer can
> be used multiple times and will not do map/unmap every time. it means
> upper-layer components will further use the buffers and the same buffers will
> probably be given to lower-layer drivers for new DMA transfer later. When
> upper-layer code sets " stop_reuse", lower-layer driver will unmap the sg
> buffers, possibly by providing a unmap-callback to upper-layer components.
> For zswap case, I have seen the same buffers are always re-used and zip driver
> maps and unmaps it again and again. Shortly after the buffer is unmapped, it
> will be mapped in the next transmission, almost without any time gap
> between unmap and map. In case zswap can set the "reusable" flag, zip driver
> will save a lot of time.
> > Meanwhile, for the safety of buffers, lower-layer drivers need to make certain
> the buffers have already been unmapped in iommu before those buffers go
> back to buddy for other users.
> 
> That sounds like it would only have benefit in a very small set of specific
> circumstances, and would be very difficult to generalise to buffers that are
> mapped via dma_map_page() or dma_map_single().

Yes, indeed. Hopefully the small set of specific circumstances will encourage more upper-layer consumers to reuse buffers, then the "reusable" flag can extend to more common cases, such as page and single buffer.

> Furthermore, a high-level API that affects a low-level driver's interpretation of
> mid-layer API calls without the mid-layer's knowledge sounds like a hideous
> abomination of anti-design. If a mid-layer API lends itself to inefficiency at the
> lower level, it would seem a lot cleaner and more robust to extend *that* API
> for stateful buffer reuse.

Absolutely agree. I didn't say the method is elegant. For this moment, maybe "reuse" can get started from a small case like zswap. After some while, it is possible more users are encouraged to do some optimization for buffer reuse, understanding the suffering of lower-layer drivers. Then those performance problems might be solved case by case.
On the other hand, it is always the freedom of upper-layer code to indicate "reuse" or not. If they don't say anything about reuse, lower-layer drivers can simply do map and unmap.

> Failing that, it might possibly be appropriate to approach this at the driver
> level - many of the cleverer network drivers already implement buffer pools to
> recycle mapped SKBs internally, couldn't the "zip driver" simply try doing
> something like that for itself?

are the buffer pools for RX path? For TX path, buffers come from upper-layer so network drivers can't do anything for recycling SKBs?

> 
> Robin.

Thanks
Barry
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

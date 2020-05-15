Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069AA1D4D78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FyLbj1MmCHqE+rJxWx9Cu7AGvl9QgdYXnAw7peBIcvA=; b=UHnKYp8IuqbLa9J7VchcZAbNE
	VNkxMiD5FtSswYOBD/xNXwAtkPuzdZcItepXdZf861r5nFumwL4gOjbsKt5eSMsnvz5VfDg40R36p
	KRwo+Ip+WX44EG+l7nCPjVpweUsNQXCJu6/VH76sZa33cUsjlPfIJDFAM6I9Jll29lYjvI5nFW0tj
	Q5TijyrdwkoPd/2oALW+Sm/DYHDRVnxAgWwdjxCao1Qwc3V06q5AFn65E7DLrnmn3IiiUgvKGXZxl
	ThPzW6eHPHqs03c11AktDSwFLZgrnHIn57gLrVbq/LQWcQ6p0egvbvSBEgypW2vpixof0Om/qCtqd
	qMeEuzS7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZAn-0007GM-V7; Fri, 15 May 2020 12:10:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZAd-0007Fz-Ur
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:10:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83423D6E;
 Fri, 15 May 2020 05:10:29 -0700 (PDT)
Received: from [10.57.27.64] (unknown [10.57.27.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD3ED3F305;
 Fri, 15 May 2020 05:10:26 -0700 (PDT)
Subject: Re: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
To: Song Bao Hua <song.bao.hua@hisilicon.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "hch@lst.de" <hch@lst.de>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
 "dagum@barrel.engr.sgi.com" <dagum@barrel.engr.sgi.com>,
 "ralf@oss.sgi.com" <ralf@oss.sgi.com>,
 "grundler@cup.hp.com" <grundler@cup.hp.com>,
 "Jay.Estabrook@compaq.com" <Jay.Estabrook@compaq.com>,
 "sailer@ife.ee.ethz.ch" <sailer@ife.ee.ethz.ch>,
 "andrea@suse.de" <andrea@suse.de>,
 "jens.axboe@oracle.com" <jens.axboe@oracle.com>,
 "davidm@hpl.hp.com" <davidm@hpl.hp.com>
References: <B926444035E5E2439431908E3842AFD249F263@DGGEMI525-MBS.china.huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <36d67d68-4381-c7a7-dcf1-6383bd9ae0ad@arm.com>
Date: Fri, 15 May 2020 13:10:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <B926444035E5E2439431908E3842AFD249F263@DGGEMI525-MBS.china.huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_051032_085091_1D4C3597 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-15 09:19, Song Bao Hua wrote:
[ snip... nice analysis, but ultimately it's still "doing stuff has more 
overhead than not doing stuff" ]

> I am thinking several possible ways on decreasing or removing the latency of DMA map/unmap for every single DMA transfer. Meanwhile, "non-strict" as an existing option with possible safety issues, I won't discuss it in this mail.

But passthrough and non-strict mode *specifically exist* for the cases 
where performance is the most important concern - streaming DMA with an 
IOMMU in the middle has an unavoidable tradeoff between performance and 
isolation, so dismissing that out of hand is not a good way to start 
making this argument.

> 1. provide bounce coherent buffers for streaming buffers.
> As the coherent buffers keep the status of mapping, we can remove the overhead of map and unmap for each single DMA operations. However, this solution requires memory copy between stream buffers and bounce buffers. Thus it will work only if copy is faster than map/unmap. Meanwhile, it will consume much more memory bandwidth.

I'm struggling to understand how that would work, can you explain it in 
more detail?

> 2.make upper-layer kernel components aware of the pain of iommu map/unmap
> upper-layer fs, mm, networks can somehow let the lower-layer drivers know the end of the life cycle of sg buffers. In zswap case, I have seen zswap always use the same 2 pages as the destination buffers to save compressed page, but the compressor driver still has to constantly map and unmap those same two pages for every single compression since zswap and zip drivers are working in two completely different software layers.
> 
> I am thinking some way as below, upper-layer kernel code can call:
> sg_init_table(&sg...);
> sg_mark_reusable(&sg....);
> .... /* use the buffer many times */
> ....
> sg_mark_stop_reuse(&sg);
> 
> After that, if low level drivers see "reusable" flag, it will realize the buffer can be used multiple times and will not do map/unmap every time. it means upper-layer components will further use the buffers and the same buffers will probably be given to lower-layer drivers for new DMA transfer later. When upper-layer code sets " stop_reuse", lower-layer driver will unmap the sg buffers, possibly by providing a unmap-callback to upper-layer components. For zswap case, I have seen the same buffers are always re-used and zip driver maps and unmaps it again and again. Shortly after the buffer is unmapped, it will be mapped in the next transmission, almost without any time gap between unmap and map. In case zswap can set the "reusable" flag, zip driver will save a lot of time.
> Meanwhile, for the safety of buffers, lower-layer drivers need to make certain the buffers have already been unmapped in iommu before those buffers go back to buddy for other users.

That sounds like it would only have benefit in a very small set of 
specific circumstances, and would be very difficult to generalise to 
buffers that are mapped via dma_map_page() or dma_map_single(). 
Furthermore, a high-level API that affects a low-level driver's 
interpretation of mid-layer API calls without the mid-layer's knowledge 
sounds like a hideous abomination of anti-design. If a mid-layer API 
lends itself to inefficiency at the lower level, it would seem a lot 
cleaner and more robust to extend *that* API for stateful buffer reuse. 
Failing that, it might possibly be appropriate to approach this at the 
driver level - many of the cleverer network drivers already implement 
buffer pools to recycle mapped SKBs internally, couldn't the "zip 
driver" simply try doing something like that for itself?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

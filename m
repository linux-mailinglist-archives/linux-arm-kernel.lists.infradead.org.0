Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35041D5266
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaqGvdxBhRdVys1Yp903cdsCbeJM5RwjSMkutxG0IGA=; b=belcaGZ6osok9X
	kpDyV9yozYK72CgQ49kZZad1wYwtNkAb26nEzIkBMrmM5tH6NE3kz9F9Bgbd7aAb2FUyUoIA4oVvO
	gCwEzDPFh/A43pESWxN1BGVQ29stWGf/ymjgag6I2J0RyVe1b4U4MYFj6Ddo8xhspzexYsBmYHafY
	9q89ai2Qm7vehiHN3M8tcXVIdwaHcoTNdhArA7hmoGa341Tj3xdDqucCKorKK0+mT3q+piyxHtgZ9
	opygOd3gyHFwn3cB2QpjbphPe/UJ51YZn1XQq1mLUT62zh/i7NJaQQCh73VY6tzhbmB17/ur843f5
	J4bFw+lfI5jqQTm6alNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbdf-0004jM-LW; Fri, 15 May 2020 14:48:39 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbad-0001Z6-99
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:45:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9060968BFE; Fri, 15 May 2020 16:45:22 +0200 (CEST)
Date: Fri, 15 May 2020 16:45:22 +0200
From: "hch@lst.de" <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
Message-ID: <20200515144522.GA25652@lst.de>
References: <B926444035E5E2439431908E3842AFD249F263@DGGEMI525-MBS.china.huawei.com>
 <36d67d68-4381-c7a7-dcf1-6383bd9ae0ad@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36d67d68-4381-c7a7-dcf1-6383bd9ae0ad@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_074531_531794_6B7AD284 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Song Bao Hua <song.bao.hua@hisilicon.com>,
 "davidm@hpl.hp.com" <davidm@hpl.hp.com>, "ralf@oss.sgi.com" <ralf@oss.sgi.com>,
 Linuxarm <linuxarm@huawei.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "sailer@ife.ee.ethz.ch" <sailer@ife.ee.ethz.ch>,
 "Jay.Estabrook@compaq.com" <Jay.Estabrook@compaq.com>,
 "dagum@barrel.engr.sgi.com" <dagum@barrel.engr.sgi.com>,
 "andrea@suse.de" <andrea@suse.de>, "grundler@cup.hp.com" <grundler@cup.hp.com>,
 "jens.axboe@oracle.com" <jens.axboe@oracle.com>, "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 01:10:21PM +0100, Robin Murphy wrote:
>> Meanwhile, for the safety of buffers, lower-layer drivers need to make certain the buffers have already been unmapped in iommu before those buffers go back to buddy for other users.
>
> That sounds like it would only have benefit in a very small set of specific 
> circumstances, and would be very difficult to generalise to buffers that 
> are mapped via dma_map_page() or dma_map_single(). Furthermore, a 
> high-level API that affects a low-level driver's interpretation of 
> mid-layer API calls without the mid-layer's knowledge sounds like a hideous 
> abomination of anti-design. If a mid-layer API lends itself to inefficiency 
> at the lower level, it would seem a lot cleaner and more robust to extend 
> *that* API for stateful buffer reuse. Failing that, it might possibly be 
> appropriate to approach this at the driver level - many of the cleverer 
> network drivers already implement buffer pools to recycle mapped SKBs 
> internally, couldn't the "zip driver" simply try doing something like that 
> for itself?

Exactly.  If you upper consumer of the DMA API keeps reusing the same
pages just map them once and use dma_sync_* to transfer ownership as
needed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

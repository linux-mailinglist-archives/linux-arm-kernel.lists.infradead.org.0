Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA081D5BA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 23:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1ZFZWXpqGpH7zEzebjFuxPNKMLBb9S3ZdSY9sWDwUg=; b=fxFwpAvJqMLZu7
	CBgltHkXySD42N7sJljJzxg4+fs2aJqbuRctTGy6oIhokEyDAZTe9jzMqkAKMHm2GjJ0ZA89AqGbZ
	iVxvpFR9NipoU3D+BbFa4Mkt2MpLfdAEgqxf5MQey6k75Ph6dgACSmlWLTCIxLqnsJjPeBfWdBKZh
	r3CiBizEjVB4cVPlJS6/7oHaLGgXglRakiHtRyPNGeDgux+S0osO5cbsh5j22Bfy2slMETUJ/ttYO
	yZB5Tc0RVm1st3IpH01RYMrpdIYX86fjP6U/EI+pQlXTgjWoXokAlB+SbWIkjUPvUlsX2rz20MK4w
	burPdRbu5oc9O+2gcd3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhxZ-0004i6-19; Fri, 15 May 2020 21:33:37 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhxK-0004eH-6H
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 21:33:26 +0000
Received: from dggemi406-hub.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 852FFDD090972E036997;
 Sat, 16 May 2020 05:33:13 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.251]) by
 dggemi406-hub.china.huawei.com ([10.3.17.144]) with mapi id 14.03.0487.000;
 Sat, 16 May 2020 05:33:06 +0800
From: Song Bao Hua <song.bao.hua@hisilicon.com>
To: "hch@lst.de" <hch@lst.de>, Robin Murphy <robin.murphy@arm.com>
Subject: RE: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
Thread-Topic: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
Thread-Index: AdYqec9gnuD/5zUSTfGZehfpOCqtzP//6eGAgAArTwD//wxG4A==
Date: Fri, 15 May 2020 21:33:05 +0000
Message-ID: <B926444035E5E2439431908E3842AFD249F9F4@DGGEMI525-MBS.china.huawei.com>
References: <B926444035E5E2439431908E3842AFD249F263@DGGEMI525-MBS.china.huawei.com>
 <36d67d68-4381-c7a7-dcf1-6383bd9ae0ad@arm.com>
 <20200515144522.GA25652@lst.de>
In-Reply-To: <20200515144522.GA25652@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.201.78]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_143322_387048_609C23A4 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
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
Cc: "davidm@hpl.hp.com" <davidm@hpl.hp.com>,
 "ralf@oss.sgi.com" <ralf@oss.sgi.com>, Linuxarm <linuxarm@huawei.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "sailer@ife.ee.ethz.ch" <sailer@ife.ee.ethz.ch>,
 "Jay.Estabrook@compaq.com" <Jay.Estabrook@compaq.com>,
 "dagum@barrel.engr.sgi.com" <dagum@barrel.engr.sgi.com>,
 "andrea@suse.de" <andrea@suse.de>, "grundler@cup.hp.com" <grundler@cup.hp.com>,
 "jens.axboe@oracle.com" <jens.axboe@oracle.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: Constantly map and unmap of streaming DMA buffers with
> IOMMU backend might cause serious performance problem
> 
> On Fri, May 15, 2020 at 01:10:21PM +0100, Robin Murphy wrote:
> >> Meanwhile, for the safety of buffers, lower-layer drivers need to make
> certain the buffers have already been unmapped in iommu before those
> buffers go back to buddy for other users.
> >
> > That sounds like it would only have benefit in a very small set of specific
> > circumstances, and would be very difficult to generalise to buffers that
> > are mapped via dma_map_page() or dma_map_single(). Furthermore, a
> > high-level API that affects a low-level driver's interpretation of
> > mid-layer API calls without the mid-layer's knowledge sounds like a hideous
> > abomination of anti-design. If a mid-layer API lends itself to inefficiency
> > at the lower level, it would seem a lot cleaner and more robust to extend
> > *that* API for stateful buffer reuse. Failing that, it might possibly be
> > appropriate to approach this at the driver level - many of the cleverer
> > network drivers already implement buffer pools to recycle mapped SKBs
> > internally, couldn't the "zip driver" simply try doing something like that
> > for itself?
> 
> Exactly.  If you upper consumer of the DMA API keeps reusing the same
> pages just map them once and use dma_sync_* to transfer ownership as
> needed.

The problem is that the lower-layer drivers don't know if upper consumer keeps reusing the same pages. They are running in different software layers.
For example, Consumer is here in mm/zswap.c
static int zswap_frontswap_store(unsigned type, pgoff_t offset,
				struct page *page)
{
	...
	/* compress */
	dst = get_cpu_var(zswap_dstmem);
	...
	ret = crypto_comp_compress(tfm, src, PAGE_SIZE, dst, &dlen);
	...
}

But the lower-layer driver is in drivers/crypto/...

Meanwhile, the lower-layer driver couldn't cache the pointers of buffer address coming from consumers to detect if the upper-layer is using the same page.
Because the same page might come from different users or come from the different stages of the same user with different permissions.
 
For example, consumer A uses the buffer as destination, then returns it to buddy, but consumer B gets the same buffer and uses it as source.

Another possibility is
Consumer A uses the buffer, returns it to buddy, after some time, it allocates a buffer again, but gets the same buffer from buddy like before.

For the safety of the buffer, lower-layer driver must guarantee the buffer is unmapped when the buffer returns to buddy.

I think only the upper-layer consumer knows if it is reusing the buffer. 

Thanks
Barry



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

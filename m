Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029ED1F10C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 02:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOTA137KDLGHFLV9U+VH3wwcY+NFC74HqP0Oh50hSK4=; b=rYo4Zsm4Rr467E
	ST6WGFT47N+MQTXPeGC00r1jEwXFpB40SZx+i7y7BdQFxDnDwSl/hjALFJiDJh/4sMOgkmwsfc84N
	jjzpe11V9tT84zm4C0q02mm78Csz0r6j4TA1OW3MZReXAFE31asM0B5bdG5FP65Fbb+10Y6UQErrH
	lo0YIeQF6nJKnhTxaB5oOLhkFUQ/GkjXJVYZ4kjYYtUGGvN5MRol0ADVYwJA9DsQiSl+eoGvPfmN6
	TIfqDlOc0zbC0Y3mnYjbG4324Q5pp1jduGFB2K3WgTtDVIYIy70wqfQKu9lDB8eX9Rszaljr/fqwy
	hkfMO02MoRtUkZgs4EDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji60l-0006BZ-36; Mon, 08 Jun 2020 00:51:35 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji60d-00069X-H5
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 00:51:29 +0000
Received: from dggemi402-hub.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 434C31893322DC83ADAA;
 Mon,  8 Jun 2020 08:51:03 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.10]) by
 dggemi402-hub.china.huawei.com ([10.3.17.135]) with mapi id 14.03.0487.000;
 Mon, 8 Jun 2020 08:50:56 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Roman Gushchin <guro@fb.com>
Subject: RE: [PATCH 2/3] arm64: mm: reserve hugetlb CMA after numa_init
Thread-Topic: [PATCH 2/3] arm64: mm: reserve hugetlb CMA after numa_init
Thread-Index: AQHWOVDqOQ5Ue+21CU6BOgFAT6Yo26jFs6GAgAdkKACAANEJQA==
Date: Mon, 8 Jun 2020 00:50:56 +0000
Message-ID: <B926444035E5E2439431908E3842AFD24E1ED7@DGGEMI525-MBS.china.huawei.com>
References: <20200603024231.61748-1-song.bao.hua@hisilicon.com>
 <20200603024231.61748-3-song.bao.hua@hisilicon.com>
 <20200603032219.GA548147@carbon.lan>
 <bad059a3-c564-30a1-198f-1c92de601aed@gmail.com>
In-Reply-To: <bad059a3-c564-30a1-198f-1c92de601aed@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.203.95]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_175127_749140_5DBF4379 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>, "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Matthias Brugger [mailto:matthias.bgg@gmail.com]
> Sent: Monday, June 8, 2020 8:15 AM
> To: Roman Gushchin <guro@fb.com>; Song Bao Hua (Barry Song)
> <song.bao.hua@hisilicon.com>
> Cc: catalin.marinas@arm.com; John Garry <john.garry@huawei.com>;
> linux-kernel@vger.kernel.org; Linuxarm <linuxarm@huawei.com>;
> iommu@lists.linux-foundation.org; Zengtao (B) <prime.zeng@hisilicon.com>;
> Jonathan Cameron <jonathan.cameron@huawei.com>;
> robin.murphy@arm.com; hch@lst.de; linux-arm-kernel@lists.infradead.org;
> m.szyprowski@samsung.com
> Subject: Re: [PATCH 2/3] arm64: mm: reserve hugetlb CMA after numa_init
> 
> 
> 
> On 03/06/2020 05:22, Roman Gushchin wrote:
> > On Wed, Jun 03, 2020 at 02:42:30PM +1200, Barry Song wrote:
> >> hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
> >> done yet. so all reserved memory will be located at node0.
> >>
> >> Cc: Roman Gushchin <guro@fb.com>
> >> Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> >
> > Acked-by: Roman Gushchin <guro@fb.com>
> >
> 
> When did this break or was it broken since the beginning?
> In any case, could you provide a "Fixes" tag for it, so that it can easily be
> backported to older releases.

I guess it was broken at the first beginning.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cf11e85fc08cc

Fixes: cf11e85fc08c ("mm: hugetlb: optionally allocate gigantic hugepages using cma")

Would you think it is better for me to send v2 for this patch separately with this tag and take this out of my original patch set for per-numa CMA?
Please give your suggestion.

Best Regards
Barry

> 
> Regards,
> Matthias
> 
> > Thanks!
> >
> >> ---
> >>  arch/arm64/mm/init.c | 10 +++++-----
> >>  1 file changed, 5 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> >> index e42727e3568e..8f0e70ebb49d 100644
> >> --- a/arch/arm64/mm/init.c
> >> +++ b/arch/arm64/mm/init.c
> >> @@ -458,11 +458,6 @@ void __init arm64_memblock_init(void)
> >>  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> >>
> >>  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> >> -
> >> -#ifdef CONFIG_ARM64_4K_PAGES
> >> -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> >> -#endif
> >> -
> >>  }
> >>
> >>  void __init bootmem_init(void)
> >> @@ -478,6 +473,11 @@ void __init bootmem_init(void)
> >>  	min_low_pfn = min;
> >>
> >>  	arm64_numa_init();
> >> +
> >> +#ifdef CONFIG_ARM64_4K_PAGES
> >> +	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> >> +#endif
> >> +
> >>  	/*
> >>  	 * Sparsemem tries to allocate bootmem in memory_present(), so must
> be
> >>  	 * done after the fixed reservations.
> >> --
> >> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

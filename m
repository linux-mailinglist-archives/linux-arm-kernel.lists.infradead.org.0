Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E071FCCA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohV+DtSpD7ilT2pgdGTEQyFvUttGN4Hf6yDRtIO1kSo=; b=SK2ypDBtjyqRWb
	gUH0mlEESD4UOfm6PwlZ7yy4j7iqPXKk2lWeCHYnu0jXrbMiz0tgQqrDF4JVBbY+kVmr/NhKfHKvP
	gw+bwsFHpnl4ClOp8jnMSOeztfJZbjHg4Q2y4zv3kChxXz5bPtrOARFbA423qrh4c9bLvrxTv6vWB
	ij45IsgTNqOcjfL3hYKWuacEEjJg4RU60y1mapHN/rd4PGrx82BtNynfXnS1Ep8jRiHHldBOTEHr+
	cMm5436nC6N27dsbj1lkIxJ1h1hoY1pFstnracnHuteNZjgI15zd3xLEeCSrr7+NdgsPfsh+I9cbi
	ZMX6xli0qKDyw48va+7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWRE-00063n-M1; Wed, 17 Jun 2020 11:41:04 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOa-0001T2-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:23 +0000
Received: from dggemi401-hub.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id 86D2650D5EECF6269855;
 Wed, 17 Jun 2020 19:38:11 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.126]) by
 dggemi401-hub.china.huawei.com ([10.3.17.134]) with mapi id 14.03.0487.000;
 Wed, 17 Jun 2020 19:38:04 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Will Deacon <will@kernel.org>, Roman Gushchin <guro@fb.com>
Subject: RE: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Thread-Topic: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Thread-Index: AQHWRCxu8v+ZJR6HI0W0yfQfoTndDqjcEtCAgACalcA=
Date: Wed, 17 Jun 2020 11:38:03 +0000
Message-ID: <B926444035E5E2439431908E3842AFD2502AA9@DGGEMI525-MBS.china.huawei.com>
References: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
 <20200617101824.GB3368@willie-the-truck>
In-Reply-To: <20200617101824.GB3368@willie-the-truck>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.201.175]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043821_162718_5C77EFA2 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
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
Cc: "steve.capper@arm.com" <steve.capper@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>, Matthias
 Brugger <matthias.bgg@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Will Deacon [mailto:will@kernel.org]
> Sent: Wednesday, June 17, 2020 10:18 PM
> To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> Cc: catalin.marinas@arm.com; nsaenzjulienne@suse.de;
> steve.capper@arm.com; rppt@linux.ibm.com; akpm@linux-foundation.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Linuxarm
> <linuxarm@huawei.com>; Matthias Brugger <matthias.bgg@gmail.com>;
> Roman Gushchin <guro@fb.com>
> Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
> 
> On Wed, Jun 17, 2020 at 10:19:24AM +1200, Barry Song wrote:
> > hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
> > done yet. so all reserved memory will be located at node0.
> >
> > Fixes: cf11e85fc08c ("mm: hugetlb: optionally allocate gigantic hugepages
> using cma")
> 
> Damn, wasn't CC'd on that :/
> 
> > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > Acked-by: Roman Gushchin <guro@fb.com>
> > Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> > ---
> >  -v2: add Fixes tag according to Matthias Brugger's comment
> >
> >  arch/arm64/mm/init.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index e631e6425165..41914b483d54 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -404,11 +404,6 @@ void __init arm64_memblock_init(void)
> >  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> >
> >  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> > -
> > -#ifdef CONFIG_ARM64_4K_PAGES
> > -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> > -#endif
> 
> Why is this dependent on CONFIG_ARM64_4K_PAGES? We unconditionally
> select ARCH_HAS_GIGANTIC_PAGE so this seems unnecessary.

Roman, would you like to answer this question? Have you found any problem if system
doesn't set 4K_PAGES?

> 
> > -
> >  }
> >
> >  void __init bootmem_init(void)
> > @@ -424,6 +419,11 @@ void __init bootmem_init(void)
> >  	min_low_pfn = min;
> >
> >  	arm64_numa_init();
> > +
> > +#ifdef CONFIG_ARM64_4K_PAGES
> > +	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> > +#endif
> 
> A comment here wouldn't hurt, as it does look a lot more natural next
> to dma_contiguous_reserve().

Will add some comment here.

> 
> Will

barry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

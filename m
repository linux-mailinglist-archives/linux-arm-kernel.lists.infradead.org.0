Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4533F1EF129
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBjLaz3Q3Ewhoh9NkIZIHuHxdtaghOumMtQSFbFaR1I=; b=CDYQH6ZZYDxcxF
	uN21VEC/4nOw49Fz8LwDXp2Kry9FmjuVQCJdlltvbtM317TsXCy0nesOctZqVEk1uddgAm04p+J1T
	AA9MnFVXxVVzQYmRQ5iZdBxeeVzttU9AfyTYJSxLWcbykE/o6hsOI1Yb4UUwkYdpH5D1DJ7mOUfqc
	YKLQFlVnbZbPXiP4mszQ5w5pfw9E0llhWEB9Cl9itAdwfjwLQTMdYhy/xejDR36dMWR3HFOKSTsZF
	hxdi5c6aK3vZ4dSYCvUQ1qd0ANwDfK74WSz7a4qMtGBFyiVOtU6T0MSWxvhOeUP9Khl5KRFROxM9k
	WaB4Fd4pnugJw6n9GcUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh5Tj-0007aa-I7; Fri, 05 Jun 2020 06:05:19 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh5TL-0007UV-4r
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 06:04:57 +0000
Received: from dggemi402-hub.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 3647AF0A6493C43752CF;
 Fri,  5 Jun 2020 14:04:42 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.10]) by
 dggemi402-hub.china.huawei.com ([10.3.17.135]) with mapi id 14.03.0487.000;
 Fri, 5 Jun 2020 14:04:32 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, "kbuild@lists.01.org"
 <kbuild@lists.01.org>, "hch@lst.de" <hch@lst.de>, "m.szyprowski@samsung.com"
 <m.szyprowski@samsung.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>
Subject: RE: [PATCH 1/3] dma-direct: provide the ability to reserve per-numa
 CMA
Thread-Topic: [PATCH 1/3] dma-direct: provide the ability to reserve
 per-numa CMA
Thread-Index: AQHWOVDkjt//8Ixq2UKuAS4YcS/rw6jH0AqAgAG65oA=
Date: Fri, 5 Jun 2020 06:04:31 +0000
Message-ID: <B926444035E5E2439431908E3842AFD24E0011@DGGEMI525-MBS.china.huawei.com>
References: <20200603024231.61748-2-song.bao.hua@hisilicon.com>
 <20200604113631.GP30374@kadam>
In-Reply-To: <20200604113631.GP30374@kadam>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.201.128]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_230455_378185_49EF3942 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
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
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "lkp@intel.com" <lkp@intel.com>, John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Dan Carpenter <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Dan Carpenter [mailto:dan.carpenter@oracle.com]
> Sent: Thursday, June 4, 2020 11:37 PM
> To: kbuild@lists.01.org; Song Bao Hua (Barry Song)
> <song.bao.hua@hisilicon.com>; hch@lst.de; m.szyprowski@samsung.com;
> robin.murphy@arm.com; catalin.marinas@arm.com
> Cc: lkp@intel.com; Dan Carpenter <error27@gmail.com>;
> kbuild-all@lists.01.org; iommu@lists.linux-foundation.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Linuxarm
> <linuxarm@huawei.com>; Jonathan Cameron
> <jonathan.cameron@huawei.com>; John Garry <john.garry@huawei.com>
> Subject: Re: [PATCH 1/3] dma-direct: provide the ability to reserve per-numa
> CMA
> 
> Hi Barry,
> 
> url:
> https://github.com/0day-ci/linux/commits/Barry-Song/support-per-numa-CM
> A-for-ARM-server/20200603-104821
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
> for-next/core
> config: x86_64-randconfig-m001-20200603 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

Dan, thanks! Good catch!
as this patch has not been in mainline yet, is it correct to add these "reported-by" in patch v2?

Barry

> 
> smatch warnings:
> kernel/dma/contiguous.c:274 dma_alloc_contiguous() warn: variable
> dereferenced before check 'dev' (see line 272)
> 
> #
> https://github.com/0day-ci/linux/commit/adb919e972c1cac3d8b11905d525
> 8d23d3aac6a4
> git remote add linux-review https://github.com/0day-ci/linux git remote
> update linux-review git checkout
> adb919e972c1cac3d8b11905d5258d23d3aac6a4
> vim +/dev +274 kernel/dma/contiguous.c
> 
> b1d2dc009dece4 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  267  struct page *dma_alloc_contiguous(struct device *dev,
> size_t size, gfp_t gfp)
> b1d2dc009dece4 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  268  {
> 90ae409f9eb3bc kernel/dma/contiguous.c       Christoph Hellwig
> 2019-08-20  269  	size_t count = size >> PAGE_SHIFT;
> b1d2dc009dece4 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  270  	struct page *page = NULL;
> bd2e75633c8012 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  271  	struct cma *cma = NULL;
> adb919e972c1ca kernel/dma/contiguous.c       Barry Song
> 2020-06-03 @272  	int nid = dev_to_node(dev);
> 
> ^^^ Dereferenced inside function.
> 
> bd2e75633c8012 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  273
> bd2e75633c8012 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23 @274  	if (dev && dev->cma_area)
> 
> ^^^ Too late.
> 
> bd2e75633c8012 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  275  		cma = dev->cma_area;
> adb919e972c1ca kernel/dma/contiguous.c       Barry Song
> 2020-06-03  276  	else if ((nid != NUMA_NO_NODE) &&
> dma_contiguous_pernuma_area[nid]
> adb919e972c1ca kernel/dma/contiguous.c       Barry Song
> 2020-06-03  277  		&& !(gfp & (GFP_DMA | GFP_DMA32)))
> adb919e972c1ca kernel/dma/contiguous.c       Barry Song
> 2020-06-03  278  		cma = dma_contiguous_pernuma_area[nid];
> bd2e75633c8012 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  279  	else if (count > 1)
> bd2e75633c8012 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  280  		cma = dma_contiguous_default_area;
> b1d2dc009dece4 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  281
> b1d2dc009dece4 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  282  	/* CMA can be used only in the context which permits
> sleeping */
> b1d2dc009dece4 kernel/dma/contiguous.c       Nicolin Chen
> 2019-05-23  283  	if (cma && gfpflags_allow_blocking(gfp)) {
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

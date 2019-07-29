Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F33579163
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=482o42ijiXJ12EP5WClSAGg83EftD026BXdXwLe0548=; b=ISJ/4kyHnuPmpE
	rZZGphE/trl2SqZJx0QWRpC8avDZtdt6m+DlcLG/zCP9U3PDGCrXmZQsP7lV26eL0otTbz9cBupww
	s5wjhBElkGTiQD+pv0vr4LD/aoDHzFgvmf0BvCiC2XHHNobft1vynpHGUd0CJI9ds4D7WksBOLNiQ
	1bzfsqyC9yy4wixmunlx7DF8tdUPLWYlw2XnvL41OPVTFirrEmn9nbJXirYNMYoGgb5M8ApZ5UFmq
	PjOhRJJ2RjQmJOpoI7MG0D5SbPh7S9Ey6QK+GjprfVqK8GUW768J8HhjrevZ8H125MnDJnjsh0EH7
	12oa76Lp9PPSxry4l92w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8oj-0003yl-1A; Mon, 29 Jul 2019 16:48:09 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8oT-0003xg-15
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:47:54 +0000
Received: from lhreml704-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id AD4F9D3B7A023EB9BF37;
 Mon, 29 Jul 2019 17:47:46 +0100 (IST)
Received: from LHREML524-MBB.china.huawei.com ([169.254.3.194]) by
 lhreml704-cah.china.huawei.com ([10.201.108.45]) with mapi id 14.03.0415.000; 
 Mon, 29 Jul 2019 17:47:40 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: Robin Murphy <robin.murphy@arm.com>, "joro@8bytes.org" <joro@8bytes.org>
Subject: RE: [PATCH] iommu/dma: Handle MSI mappings separately
Thread-Topic: [PATCH] iommu/dma: Handle MSI mappings separately
Thread-Index: AQHVRiMH3D2dEh8WTkKwpJamrpncmabhzStg
Date: Mon, 29 Jul 2019 16:47:39 +0000
Message-ID: <5FC3163CFD30C246ABAA99954A238FA83F32AC6A@lhreml524-mbb.china.huawei.com>
References: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
In-Reply-To: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.202.227.237]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_094753_222815_59238364 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: "maz@kernel.org" <maz@kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org]
> On Behalf Of Robin Murphy
> Sent: 29 July 2019 16:33
> To: joro@8bytes.org
> Cc: maz@kernel.org; iommu@lists.linux-foundation.org; Shameerali Kolothum
> Thodi <shameerali.kolothum.thodi@huawei.com>;
> linux-arm-kernel@lists.infradead.org; Andre Przywara
> <andre.przywara@arm.com>
> Subject: [PATCH] iommu/dma: Handle MSI mappings separately
> 
> MSI pages must always be mapped into a device's *current* domain, which
> *might* be the default DMA domain, but might instead be a VFIO domain
> with its own MSI cookie. This subtlety got accidentally lost in the
> streamlining of __iommu_dma_map(), but rather than reintroduce more
> complexity and/or special-casing, it turns out neater to just split this
> path out entirely.
> 
> Since iommu_dma_get_msi_page() already duplicates much of what
> __iommu_dma_map() does, it can easily just make the allocation and
> mapping calls directly as well. That way we can further streamline the
> helper back to exclusively operating on DMA domains.
> 
> Fixes: b61d271e59d7 ("iommu/dma: Move domain lookup into
> __iommu_dma_{map,unmap}")
> Reported-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> Reported-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Thanks. This fixes the vf assignment issue on D06 as well. FWIW,

Tested-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>

Shameer


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

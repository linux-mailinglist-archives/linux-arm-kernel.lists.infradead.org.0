Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A3D1EE1C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qqMIibzC2Ek8MyLS2CG9UJ/aBFrRLdSYl0f1/5qBZE=; b=amTf7lMYk/g7NW
	jpGBa5cTRG/X09+AtDV3LEO1S2cRy4d/MWP1h9ZRs5y/ac2xDmrgNg6YPdbtd+soyqJVEdlpZNeNT
	jxVnqlnJMQrDVWKY+daXhaTfpIGmHVEjEbJcyJ994xbNCFw75bk4WmEiqcv1Wf6fa8tIjnc00Gc0V
	N2aTzhjmiUn1+UjWaTRWmJlPu9S4VcdFi975uQaukP9rL2oOxxDEaxmmsFtmCUKL5+SHDqGypLI3S
	8VhYTGbbuSVntHGRyQc2pv2hNbWwS5SgkUD8m1PQMZFBUB9K9a1xdACD8uwOtmcouN0r2l2S0vYEK
	3yI+dWNkRD2PiE66rF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmVb-00021Z-0v; Thu, 04 Jun 2020 09:49:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmVT-00020a-Vr; Thu, 04 Jun 2020 09:49:53 +0000
X-UUID: 234d88ad71a64424ac9c69ae5d13209b-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=lBI82O8bEEPgYlNHvOkibX3qdLSsdkxzL1E3PQQA8b0=; 
 b=l5cznZQyeF0t8PUXtBPHL8pk3AnSmztorPMyyTSrjhlLqv1+LiJ4TE/ssnITNp2aCsHzYTShTvLxmFL0OjobwAJ8z1zHj8Y1J53i/m96VhNfj5XrWfF2BAQKrUi1kO3GNsTfxg+SvQTp5toCtYcObnVp8pue0TxUoz4GFTToRcM=;
X-UUID: 234d88ad71a64424ac9c69ae5d13209b-20200604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 323098063; Thu, 04 Jun 2020 01:49:42 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 02:49:47 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 17:49:32 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 17:49:32 +0800
Message-ID: <1591264174.12661.17.camel@mtkswgap22>
Subject: Re: [PATCH] iommu/mediatek: Use totalram_pages to setup enable_4GB
From: Miles Chen <miles.chen@mediatek.com>
To: David Hildenbrand <david@redhat.com>
Date: Thu, 4 Jun 2020 17:49:34 +0800
In-Reply-To: <55820901-430b-14c4-9426-7a4991ca0eed@redhat.com>
References: <20200604080120.2628-1-miles.chen@mediatek.com>
 <55820901-430b-14c4-9426-7a4991ca0eed@redhat.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AE948E482C29CD5898F27E00F7D8367EA04E36796E3DBBED3FBA94C5849F28092000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_024952_029711_3C831746 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-04 at 10:25 +0200, David Hildenbrand wrote:
> On 04.06.20 10:01, Miles Chen wrote:
> > To build this driver as a kernel module, we cannot use
> > the unexported symbol "max_pfn" to setup enable_4GB.
> > 
> > Use totalram_pages() instead to setup enable_4GB.
> > 
> > Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > Cc: David Hildenbrand <david@redhat.com>
> > Cc: Yong Wu <yong.wu@mediatek.com>
> > Cc: Chao Hao <chao.hao@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 5f4d6df59cf6..c2798a6e0e38 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -3,7 +3,6 @@
> >   * Copyright (c) 2015-2016 MediaTek Inc.
> >   * Author: Yong Wu <yong.wu@mediatek.com>
> >   */
> > -#include <linux/memblock.h>
> >  #include <linux/bug.h>
> >  #include <linux/clk.h>
> >  #include <linux/component.h>
> > @@ -626,8 +625,8 @@ static int mtk_iommu_probe(struct platform_device *pdev)
> >  		return -ENOMEM;
> >  	data->protect_base = ALIGN(virt_to_phys(protect), MTK_PROTECT_PA_ALIGN);
> >  
> > -	/* Whether the current dram is over 4GB */
> > -	data->enable_4GB = !!(max_pfn > (BIT_ULL(32) >> PAGE_SHIFT));
> > +	/* Whether the current dram is over 4GB, note: DRAM start at 1GB  */
> > +	data->enable_4GB = !!(totalram_pages() > ((SZ_2G + SZ_1G) >> PAGE_SHIFT));
> 
> A similar thing seems to be done by
> drivers/media/platform/mtk-vpu/mtk_vpu.c:
> 	vpu->enable_4GB = !!(totalram_pages() > (SZ_2G >> PAGE_SHIFT));
> 
> I do wonder if some weird memory hotplug setups might give you false
> negatives.
> 
> E.g., start a VM with 1GB and hotplug 1GB - it will be hotplugged on
> x86-64 above 4GB, turning max_pfn into 5GB. totalram_pages() should
> return something < 2GB.
> 
> Same can happen when you have a VM and use ballooning to fake-unplug
> memory, making totalram_pages() return something < 4GB, but leaving
> usable pfns >= 4GB

Yes. Yingjoe also told me that this patch is not correct.

Thanks for pointing this out. totalram_pages() does not work 
for some cases:

e.g., DRAM start @0x4000_0000 and DRAM size is 0x1_0000_0000 but we
reserve large amount of memory, which makes totalram_pages() < 3GB but
it is possible to allocate a pfn >= 4GB.

I will discuss this internally.

Miles
> .
> 
> but
> ... I don't know if I understood what "enable_4GB" needs/implies
> ... I don't know if this is applicable to VMs
>  at all (on real HW such
>     memory hotplug setups should not exist)
> ... I don't know how this code would react to memory hotplug, so if the
>     condition changes after the driver loaded and enable_4GB would
>     suddenly apply. Again, most probably not relevant on real HW, only
>     for VMs.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

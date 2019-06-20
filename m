Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272AD4CFCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsn0p0dqFEsaVL5JWPG26NhqYtRx8bzlfo7Sk354tYY=; b=uQEaf7cOgoE9uY
	tXqZYFawn/I7Y5UOHa9GtEmFP2fnhD5jqmdB3Es5IvH/wiSpoUJqC+sA9Wu632Hp8x3HGcTPbaIpf
	ulZC6C0QpjQAQjwFCE/RZG335rrY78gcpbRdG+47bkPoTXbqQSGL8aH7jNg50vu2o3LJJXb1RrfoB
	Z6zHKwzXQ+89fAgK+1/O+zE1F/nu4rHRFPaSUEszhh+hdvK1YcSfDXbj7mw0iZYWvfZVpDFZdU4kO
	Y3Z+KxbE4FLun/jMzZ4Ltu3d6zSTf8gO7QoE2TvNX24hIYdDxqb3DYuDI50S6/m0I7en4CnB1Gl9x
	uy9RqZUIwlw+iEZKv65g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxcO-0001yj-IG; Thu, 20 Jun 2019 14:00:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxc3-0001us-L0; Thu, 20 Jun 2019 14:00:29 +0000
X-UUID: e91e1e0e14cd4a73890d3f0d39bb2905-20190620
X-UUID: e91e1e0e14cd4a73890d3f0d39bb2905-20190620
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2027458671; Thu, 20 Jun 2019 05:59:57 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 06:59:55 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 20 Jun 2019 21:59:53 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Jun 2019 21:59:52 +0800
Message-ID: <1561039192.4021.23.camel@mhfsdcap03>
Subject: Re: [PATCH v7 19/21] iommu/mediatek: Rename enable_4GB to dram_is_4gb
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 20 Jun 2019 21:59:52 +0800
In-Reply-To: <9bf13c22-0c73-2950-2204-23d577976b03@gmail.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-20-git-send-email-yong.wu@mediatek.com>
 <9bf13c22-0c73-2950-2204-23d577976b03@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_070027_711025_2660F7AF 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>, Tomasz
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org, Rob
 Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 18:06 +0200, Matthias Brugger wrote:
> 
> On 10/06/2019 14:17, Yong Wu wrote:
> > This patch only rename the variable name from enable_4GB to
> > dram_is_4gb for readable.
> 
> From my understanding this is true when available RAM > 4GB so I think the name
> should be something like dram_bigger_4gb otherwise it may create confusion again.

Strictly, It is not "dram_bigger_4gb". actually if the dram size is over
3GB (the first 1GB is the register space), the "4GB mode" will be
enabled. then how about the name "dram_enable_32bit"?(the PA 32bit will
be enabled in the 4GB mode.)
     
There is another option, please see the last part in [1] suggested by
Evan, something like below:
----
data->enable_4GB = !!(max_pfn > (BIT_ULL(32) >> PAGE_SHIFT));
if (!data->plat_data->has_4gb_mode)
    data->enable_4GB = false;
Then mtk_iommu_map would only have:
    if (data->enable_4GB)
         paddr |= BIT_ULL(32);
----

Which one do you prefer?      
      
[1] https://lore.kernel.org/patchwork/patch/1028421/

> 
> Also from my point of view this patch should be done before
> "[PATCH 06/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB Mode"

OK.

> 
> Regards,
> Matthias
> 
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > Reviewed-by: Evan Green <evgreen@chromium.org>
> > ---
> >  drivers/iommu/mtk_iommu.c | 10 +++++-----
> >  drivers/iommu/mtk_iommu.h |  2 +-
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 86158d8..67cab2d 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -382,7 +382,7 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
> >  	int ret;
> >  
> >  	/* The "4GB mode" M4U physically can not use the lower remap of Dram. */
> > -	if (data->plat_data->has_4gb_mode && data->enable_4GB)
> > +	if (data->plat_data->has_4gb_mode && data->dram_is_4gb)
> >  		paddr |= BIT_ULL(32);
> >  
> >  	spin_lock_irqsave(&dom->pgtlock, flags);
> > @@ -554,13 +554,13 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
> >  	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
> >  
> >  	if (data->plat_data->m4u_plat == M4U_MT8173)
> > -		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
> > +		regval = (data->protect_base >> 1) | (data->dram_is_4gb << 31);
> >  	else
> >  		regval = lower_32_bits(data->protect_base) |
> >  			 upper_32_bits(data->protect_base);
> >  	writel_relaxed(regval, data->base + REG_MMU_IVRP_PADDR);
> >  
> > -	if (data->enable_4GB && data->plat_data->has_vld_pa_rng) {
> > +	if (data->dram_is_4gb && data->plat_data->has_vld_pa_rng) {
> >  		/*
> >  		 * If 4GB mode is enabled, the validate PA range is from
> >  		 * 0x1_0000_0000 to 0x1_ffff_ffff. here record bit[32:30].
> > @@ -611,8 +611,8 @@ static int mtk_iommu_probe(struct platform_device *pdev)
> >  		return -ENOMEM;
> >  	data->protect_base = ALIGN(virt_to_phys(protect), MTK_PROTECT_PA_ALIGN);
> >  
> > -	/* Whether the current dram is over 4GB */
> > -	data->enable_4GB = !!(max_pfn > (BIT_ULL(32) >> PAGE_SHIFT));
> > +	/* Whether the current dram is 4GB. */
> > +	data->dram_is_4gb = !!(max_pfn > (BIT_ULL(32) >> PAGE_SHIFT));
> >  
> >  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >  	data->base = devm_ioremap_resource(dev, res);
> > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > index 753266b..e8114b2 100644
> > --- a/drivers/iommu/mtk_iommu.h
> > +++ b/drivers/iommu/mtk_iommu.h
> > @@ -65,7 +65,7 @@ struct mtk_iommu_data {
> >  	struct mtk_iommu_domain		*m4u_dom;
> >  	struct iommu_group		*m4u_group;
> >  	struct mtk_smi_iommu		smi_imu;      /* SMI larb iommu info */
> > -	bool                            enable_4GB;
> > +	bool                            dram_is_4gb;
> >  	bool				tlb_flush_active;
> >  
> >  	struct iommu_device		iommu;
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932DE4CFC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PVX+tFvVCL+iKNhiwdQiuYVy9Woopy5eWKAUUEoapE=; b=YImblGArGybsyJ
	ndRFMzWxfB9f/jaKNPnoE2aDqcB/Qyg6RKh8qqHq6p7Rn7Cpo0gws68aR4CAbXdIInZq5tLgpCgyx
	WeQ33OzXOFICzqAdcoxMxJ7FpKsAR0TYAuir6Kx2M98OAQPj6dxcq1ygfcJsveOh9ss0bcc1uWWAw
	MNHoOCqBfhfyRzpjYHt7bkKF/4ZMQww4jbSdz6ddYQIMrUNTrbAnrJklmCrD/B0EOCgZxPh71bth9
	+NiVMcz1ucZZSM1nh8c2K1HIEEPTNEK2sz3BbU+Sxq27ZeFYZPecov6gMicCydc9AbbFzcuTrBsI0
	qKcptQf9PTia+wXSXxPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxbq-0000Pr-JM; Thu, 20 Jun 2019 14:00:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxbQ-0000Jn-OW; Thu, 20 Jun 2019 13:59:50 +0000
X-UUID: 7c9b8b4ab83e4e458dda4ced8f4583cd-20190620
X-UUID: 7c9b8b4ab83e4e458dda4ced8f4583cd-20190620
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 487367123; Thu, 20 Jun 2019 05:59:42 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 06:59:40 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 20 Jun 2019 21:59:37 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Jun 2019 21:59:36 +0800
Message-ID: <1561039176.4021.21.camel@mhfsdcap03>
Subject: Re: [PATCH v7 17/21] memory: mtk-smi: Get rid of need_larbid
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 20 Jun 2019 21:59:36 +0800
In-Reply-To: <1af7b67a-b73a-efb9-e1f8-5701f05a4af0@gmail.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-18-git-send-email-yong.wu@mediatek.com>
 <1af7b67a-b73a-efb9-e1f8-5701f05a4af0@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2CA6D34368F87003217514E1A5818323AB156BC86301E5B7347A400EECEBE2612000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_065948_804136_90A99716 
X-CRM114-Status: GOOD (  26.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Tue, 2019-06-18 at 15:45 +0200, Matthias Brugger wrote:
> 
> On 10/06/2019 14:17, Yong Wu wrote:
> > The "mediatek,larb-id" has already been parsed in MTK IOMMU driver.
> > It's no need to parse it again in SMI driver. Only clean some codes.
> > This patch is fit for all the current mt2701, mt2712, mt7623, mt8173
> > and mt8183.
> > 
> > After this patch, the "mediatek,larb-id" only be needed for mt2712
> > which have 2 M4Us. In the other SoCs, we can get the larb-id from M4U
> > in which the larbs in the "mediatek,larbs" always are ordered.
> > 
> > Correspondingly, the larb_nr in the "struct mtk_smi_iommu" could also
> > be deleted.
> > 
> 
> I think we can get rid of struct mtk_smi_iommu and just add the
> struct mtk_smi_larb_iommu larb_imu[MTK_LARB_NR_MAX] directly to mtk_iommu_data,
> passing just that array to the components bind function.

Thanks. I will try this in a new patch.

> 
> Never the less this patch looks fine:
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

Really appreciate for reviewing so many patches.

> 
> > CC: Matthias Brugger <matthias.bgg@gmail.com>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > Reviewed-by: Evan Green <evgreen@chromium.org>
> > ---
> >  drivers/iommu/mtk_iommu.c    |  1 -
> >  drivers/iommu/mtk_iommu_v1.c |  2 --
> >  drivers/memory/mtk-smi.c     | 26 ++------------------------
> >  include/soc/mediatek/smi.h   |  1 -
> >  4 files changed, 2 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index ec4ce74..6053b8b 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -634,7 +634,6 @@ static int mtk_iommu_probe(struct platform_device *pdev)
> >  					     "mediatek,larbs", NULL);
> >  	if (larb_nr < 0)
> >  		return larb_nr;
> > -	data->smi_imu.larb_nr = larb_nr;
> >  
> >  	for (i = 0; i < larb_nr; i++) {
> >  		struct device_node *larbnode;
> > diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
> > index 52b01e3..73308ad 100644
> > --- a/drivers/iommu/mtk_iommu_v1.c
> > +++ b/drivers/iommu/mtk_iommu_v1.c
> > @@ -624,8 +624,6 @@ static int mtk_iommu_probe(struct platform_device *pdev)
> >  		larb_nr++;
> >  	}
> >  
> > -	data->smi_imu.larb_nr = larb_nr;
> > -
> >  	platform_set_drvdata(pdev, data);
> >  
> >  	ret = mtk_iommu_hw_init(data);
> > diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> > index 08cf40d..10e6493 100644
> > --- a/drivers/memory/mtk-smi.c
> > +++ b/drivers/memory/mtk-smi.c
> > @@ -67,7 +67,6 @@ struct mtk_smi_common_plat {
> >  };
> >  
> >  struct mtk_smi_larb_gen {
> > -	bool need_larbid;
> >  	int port_in_larb[MTK_LARB_NR_MAX + 1];
> >  	void (*config_port)(struct device *);
> >  	unsigned int larb_direct_to_common_mask;
> > @@ -153,18 +152,9 @@ void mtk_smi_larb_put(struct device *larbdev)
> >  	struct mtk_smi_iommu *smi_iommu = data;
> >  	unsigned int         i;
> >  
> > -	if (larb->larb_gen->need_larbid) {
> > -		larb->mmu = &smi_iommu->larb_imu[larb->larbid].mmu;
> > -		return 0;
> > -	}
> > -
> > -	/*
> > -	 * If there is no larbid property, Loop to find the corresponding
> > -	 * iommu information.
> > -	 */
> > -	for (i = 0; i < smi_iommu->larb_nr; i++) {
> > +	for (i = 0; i < MTK_LARB_NR_MAX; i++) {
> >  		if (dev == smi_iommu->larb_imu[i].dev) {
> > -			/* The 'mmu' may be updated in iommu-attach/detach. */
> > +			larb->larbid = i;
> >  			larb->mmu = &smi_iommu->larb_imu[i].mmu;
> >  			return 0;
> >  		}
> > @@ -243,7 +233,6 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
> >  };
> >  
> >  static const struct mtk_smi_larb_gen mtk_smi_larb_mt2701 = {
> > -	.need_larbid = true,
> >  	.port_in_larb = {
> >  		LARB0_PORT_OFFSET, LARB1_PORT_OFFSET,
> >  		LARB2_PORT_OFFSET, LARB3_PORT_OFFSET
> > @@ -252,7 +241,6 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
> >  };
> >  
> >  static const struct mtk_smi_larb_gen mtk_smi_larb_mt2712 = {
> > -	.need_larbid = true,
> >  	.config_port                = mtk_smi_larb_config_port_gen2_general,
> >  	.larb_direct_to_common_mask = BIT(8) | BIT(9),      /* bdpsys */
> >  };
> > @@ -291,7 +279,6 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
> >  	struct device *dev = &pdev->dev;
> >  	struct device_node *smi_node;
> >  	struct platform_device *smi_pdev;
> > -	int err;
> >  
> >  	larb = devm_kzalloc(dev, sizeof(*larb), GFP_KERNEL);
> >  	if (!larb)
> > @@ -321,15 +308,6 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
> >  	}
> >  	larb->smi.dev = dev;
> >  
> > -	if (larb->larb_gen->need_larbid) {
> > -		err = of_property_read_u32(dev->of_node, "mediatek,larb-id",
> > -					   &larb->larbid);
> > -		if (err) {
> > -			dev_err(dev, "missing larbid property\n");
> > -			return err;
> > -		}
> > -	}
> > -
> >  	smi_node = of_parse_phandle(dev->of_node, "mediatek,smi", 0);
> >  	if (!smi_node)
> >  		return -EINVAL;
> > diff --git a/include/soc/mediatek/smi.h b/include/soc/mediatek/smi.h
> > index 5201e90..a65324d 100644
> > --- a/include/soc/mediatek/smi.h
> > +++ b/include/soc/mediatek/smi.h
> > @@ -29,7 +29,6 @@ struct mtk_smi_larb_iommu {
> >  };
> >  
> >  struct mtk_smi_iommu {
> > -	unsigned int larb_nr;
> >  	struct mtk_smi_larb_iommu larb_imu[MTK_LARB_NR_MAX];
> >  };
> >  
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

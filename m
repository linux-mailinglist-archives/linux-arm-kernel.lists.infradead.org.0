Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275D64F343
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 04:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLCfrIC7qoR/GIyhPdGBFmUQXYe2xasDq4PARFnBYJI=; b=OkJ0CfH4Fn3GM3
	JYibIkgyW4o4Mqh4GqAyRq3j+vbrcHowP/XeofjMQ8XwgUX1xMyAmC+NiZVwYlxfBxJOiLU3BT1i3
	kPp6D8xoEb46zj7F6WsRP0Kds/dik8Rlr+MUaarzWa/SuRYL/p4fbe/qYqmCzXPIuwyj4uUQWSziT
	uUfw3w7bKMa8InGsMOqj4Db6BUPnXsHmJrcd8yAivuZap6yEv5d7zov9uJs82Sh7ain2YG/LG1kjF
	Oo4E+F8DKPAfG2Jz9F/A98SXi7PtPBuwdgIzy2+GL1zUfVn2C3GZVs/txWGTg5YoViqmHjTUf51rM
	R/ZJefdYCjz7h7SNSPrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heW0G-0000ah-64; Sat, 22 Jun 2019 02:43:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heVzW-0000Fv-O8; Sat, 22 Jun 2019 02:43:00 +0000
X-UUID: 95c82c90523d4560b7501de9037064aa-20190621
X-UUID: 95c82c90523d4560b7501de9037064aa-20190621
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2096819189; Fri, 21 Jun 2019 18:42:52 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Jun 2019 19:42:51 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 22 Jun 2019 10:42:48 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 22 Jun 2019 10:42:47 +0800
Message-ID: <1561171367.4850.8.camel@mhfsdcap03>
Subject: Re: [PATCH v2 02/12] iommu/mediatek: Add probe_defer for smi-larb
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Sat, 22 Jun 2019 10:42:47 +0800
In-Reply-To: <a11fa818-cf62-cc24-2c41-4688fda5a88f@gmail.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
 <1560171313-28299-3-git-send-email-yong.wu@mediatek.com>
 <a11fa818-cf62-cc24-2c41-4688fda5a88f@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 62D4D809DF879D30713C1D085668025D905896208B75832BE651A5243713B1D32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_194258_803846_9E520016 
X-CRM114-Status: GOOD (  19.58  )
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
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2019-06-19 at 15:52 +0200, Matthias Brugger wrote:
> 
> On 10/06/2019 14:55, Yong Wu wrote:
> > The iommu consumer should use device_link to connect with the
> > smi-larb(supplier). then the smi-larb should run before the iommu
> > consumer. Here we delay the iommu driver until the smi driver is
> > ready, then all the iommu consumer always is after the smi driver.
> > 
> > When there is no this patch, if some consumer drivers run before
> > smi-larb, the supplier link_status is DL_DEV_NO_DRIVER(0) in the
> > device_link_add, then device_links_driver_bound will use WARN_ON
> > to complain that the link_status of supplier is not right.
> > 
> > This is a preparing patch for adding device_link.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c    | 2 +-
> >  drivers/iommu/mtk_iommu_v1.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 6fe3369..f7599d8 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -664,7 +664,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
> >  			id = i;
> >  
> >  		plarbdev = of_find_device_by_node(larbnode);
> > -		if (!plarbdev) {
> > +		if (!plarbdev || !plarbdev->dev.driver) {
> 
> can't we use:
> device_lock()
> device_is_bound(struct device *dev)
> device_unlock()

A new API for me. Thanks the hint. I have tried. it is ok.


> 
> >  			of_node_put(larbnode);
> >  			return -EPROBE_DEFER;
> >  		}
> > diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
> > index 0b0908c..c43c4a0 100644
> > --- a/drivers/iommu/mtk_iommu_v1.c
> > +++ b/drivers/iommu/mtk_iommu_v1.c
> > @@ -604,7 +604,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
> >  			plarbdev = of_platform_device_create(
> >  						larb_spec.np, NULL,
> >  						platform_bus_type.dev_root);
> > -			if (!plarbdev) {
> > +			if (!plarbdev || !plarbdev->dev.driver) {
> >  				of_node_put(larb_spec.np);
> >  				return -EPROBE_DEFER;
> >  			}
> > 




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

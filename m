Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55304F33F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 04:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sc1xqJbMgt1SOeWQG54GjQHV39p9C6D9tWtji8rQGAU=; b=E5MKh3bXD/TOUr
	m6GQwOe6UsVY8tq4pMmuqPRGuc24ubu1jYAaaXZKN+W8o7/AZL7vl7vU4tsEFoIv0KVsjQiMQ81x2
	Q5cZt8p1aLchy6BHR/h1qtmPDjiq4X2fXk4SinDrtEqN79Du6kXTPv8VmR4KbutwwyH3mFMZFS0Gh
	rxgG5frnHHKbm7JU+HAiqKq+L/XSeqY15UaB4fy74lgBIjOdh3+HXFzam9zU7j1BpePrQHmaU66Sw
	LMMxLcJmT+vMSGI+JPiDoROZZ1Q6GGi5HkBBtPKa3lMuphko6/BTGlWW5r40Oq9w9BvS/7eMSp5kk
	5cVKqutvAJjZAx8z5rHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heVzx-0000Jz-Jm; Sat, 22 Jun 2019 02:43:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heVzV-0000DC-8s; Sat, 22 Jun 2019 02:42:58 +0000
X-UUID: aa1802f1951a4f679a253ae6b35ad9af-20190621
X-UUID: aa1802f1951a4f679a253ae6b35ad9af-20190621
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1569032011; Fri, 21 Jun 2019 18:42:48 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Jun 2019 19:42:46 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 22 Jun 2019 10:42:36 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 22 Jun 2019 10:42:35 +0800
Message-ID: <1561171355.4850.7.camel@mhfsdcap03>
Subject: Re: [PATCH v2 05/12] media: mtk-jpeg: Get rid of mtk_smi_larb_get/put
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Sat, 22 Jun 2019 10:42:35 +0800
In-Reply-To: <6539751d-1751-f309-1c51-b3f9576c1b99@gmail.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
 <1560171313-28299-6-git-send-email-yong.wu@mediatek.com>
 <6539751d-1751-f309-1c51-b3f9576c1b99@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2A30C6EFC43BFC5A9239BAECC619A787D0115E0887011AB5A837AB732B8DB5C02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_194257_323535_726B6734 
X-CRM114-Status: GOOD (  15.16  )
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
 Nicolas Boichat <drinkcat@chromium.org>, Rick Chang <rick.chang@mediatek.com>,
 srv_heupstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org, Evan
 Green <evgreen@chromium.org>, Tomasz
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-20 at 17:20 +0200, Matthias Brugger wrote:
> 
> On 10/06/2019 14:55, Yong Wu wrote:
> > MediaTek IOMMU has already added device_link between the consumer
> > and smi-larb device. If the jpg device call the pm_runtime_get_sync,
> > the smi-larb's pm_runtime_get_sync also be called automatically.
> 
> Please help me out find this relation. I seem to miss something basic, because I
> can't find any between the jpeg IP and the iommu.

JPEG also is a multimedia consumer. It also access memory via IOMMU. All
the current SoC have the JPG smi ports. 

grep -r JPG include/dt-bindings/memory/mt*

> 
> Regards,
> Matthias
> 
> > 
> > CC: Rick Chang <rick.chang@mediatek.com>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > Reviewed-by: Evan Green <evgreen@chromium.org>
> > ---
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 22 ----------------------
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  2 --
> >  2 files changed, 24 deletions(-)
> > 
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > index f761e4d..2f37538 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > @@ -29,7 +29,6 @@
> >  #include <media/v4l2-ioctl.h>
> >  #include <media/videobuf2-core.h>
> >  #include <media/videobuf2-dma-contig.h>
> > -#include <soc/mediatek/smi.h>
> >  
> >  #include "mtk_jpeg_hw.h"
> >  #include "mtk_jpeg_core.h"
> > @@ -901,11 +900,6 @@ static int mtk_jpeg_queue_init(void *priv, struct vb2_queue *src_vq,
> >  
> >  static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jpeg)
> >  {
> > -	int ret;
> > -
> > -	ret = mtk_smi_larb_get(jpeg->larb);
> > -	if (ret)
> > -		dev_err(jpeg->dev, "mtk_smi_larb_get larbvdec fail %d\n", ret);
> >  	clk_prepare_enable(jpeg->clk_jdec_smi);
> >  	clk_prepare_enable(jpeg->clk_jdec);
> >  }
> > @@ -914,7 +908,6 @@ static void mtk_jpeg_clk_off(struct mtk_jpeg_dev *jpeg)
> >  {
> >  	clk_disable_unprepare(jpeg->clk_jdec);
> >  	clk_disable_unprepare(jpeg->clk_jdec_smi);
> > -	mtk_smi_larb_put(jpeg->larb);
> >  }
> >  
> >  static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
> > @@ -1059,21 +1052,6 @@ static int mtk_jpeg_release(struct file *file)
> >  
> >  static int mtk_jpeg_clk_init(struct mtk_jpeg_dev *jpeg)
> >  {
> > -	struct device_node *node;
> > -	struct platform_device *pdev;
> > -
> > -	node = of_parse_phandle(jpeg->dev->of_node, "mediatek,larb", 0);
> > -	if (!node)
> > -		return -EINVAL;
> > -	pdev = of_find_device_by_node(node);
> > -	if (WARN_ON(!pdev)) {
> > -		of_node_put(node);
> > -		return -EINVAL;
> > -	}
> > -	of_node_put(node);
> > -
> > -	jpeg->larb = &pdev->dev;
> > -
> >  	jpeg->clk_jdec = devm_clk_get(jpeg->dev, "jpgdec");
> >  	if (IS_ERR(jpeg->clk_jdec))
> >  		return PTR_ERR(jpeg->clk_jdec);
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > index 1a6cdfd..e35fb79 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > @@ -55,7 +55,6 @@ enum mtk_jpeg_ctx_state {
> >   * @dec_reg_base:	JPEG registers mapping
> >   * @clk_jdec:		JPEG hw working clock
> >   * @clk_jdec_smi:	JPEG SMI bus clock
> > - * @larb:		SMI device
> >   */
> >  struct mtk_jpeg_dev {
> >  	struct mutex		lock;
> > @@ -69,7 +68,6 @@ struct mtk_jpeg_dev {
> >  	void __iomem		*dec_reg_base;
> >  	struct clk		*clk_jdec;
> >  	struct clk		*clk_jdec_smi;
> > -	struct device		*larb;
> >  };
> >  
> >  /**
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

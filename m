Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A6DA9B89
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlDIKL3jAnIANroC2m4YtMEds3bkJLPyww3LICkBzCw=; b=fdopIymCBSMhx0
	5pvCzHfGOF0oGbb4iO08SS2emH/LGYmDu7ZGCu+7pecj/AHNfxUg5Yvuc5hIBFKV8bL8CHc4i765o
	d20JisP4vS/+Vd+exFqTnJ5kMGRUbsa/32FbGMKC0jMmaLPOBwSsiYCI9Q/LGQBiViegcS5vANQcX
	DtUqAIfT4PX6BqzWZUFsBJBQ3CH4XyJrU2VOjtofTVnF5ncn+MjjoiWBzzpeHlHjz283r3Cn0Aap8
	NxfV0mGm0Dyvkso1QkAZHH5UgBiL80yDfImzjrLEty0lotcGCS7Ogp/D7Akqg5Ut5Bt9Vhdzzlv0r
	3H18TVvj0nMoQPB45IiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5m1K-00081D-TH; Thu, 05 Sep 2019 07:17:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5m16-00080I-KE; Thu, 05 Sep 2019 07:17:18 +0000
X-UUID: 24f04dc02d1b4ebb92b98bfba1d12643-20190904
X-UUID: 24f04dc02d1b4ebb92b98bfba1d12643-20190904
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1293075661; Wed, 04 Sep 2019 23:17:04 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 00:17:03 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 15:17:00 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 15:17:00 +0800
Message-ID: <1567667821.13819.4.camel@mtksdaap41>
Subject: Re: [PATCH v5, 32/32] drm/mediatek: add support for mediatek SOC
 MT8183
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Thu, 5 Sep 2019 15:17:01 +0800
In-Reply-To: <1567090254-15566-33-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-33-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A078703D18D9193C9F0C35DE28409BAA8C2142B2EC58B78B2141B9C80BE227792000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_001716_673078_B9CF0AE3 
X-CRM114-Status: GOOD (  18.98  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add support for mediatek SOC MT8183
> 1.ovl_2l share driver with ovl
> 2.rdma1 share drive with rdma0, but fifo size is different
> 3.add mt8183 mutex private data, and mmsys private data
> 4.add mt8183 main and external path module for crtc create
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c  | 18 +++++++++
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c | 27 ++++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c   | 69 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h   |  1 +
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 47 ++++++++++++++++++++++
>  5 files changed, 161 insertions(+), 1 deletion(-)
> 

[snip]

> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index 9a6f0a2..24945fe 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -62,6 +62,7 @@ struct mtk_disp_rdma {
>  	struct mtk_ddp_comp		ddp_comp;
>  	struct drm_crtc			*crtc;
>  	const struct mtk_disp_rdma_data	*data;
> +	u32				fifo_size;
>  };
>  
>  static inline struct mtk_disp_rdma *comp_to_rdma(struct mtk_ddp_comp *comp)
> @@ -130,10 +131,16 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
>  	unsigned int threshold;
>  	unsigned int reg;
>  	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
> +	u32 rdma_fifo_size;
>  
>  	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
>  	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);
>  
> +	if (rdma->fifo_size)
> +		rdma_fifo_size = rdma->fifo_size;
> +	else
> +		rdma_fifo_size = RDMA_FIFO_SIZE(rdma);

I think the fifo size part should be an independent patch because it has
no strong relation with MT8183.

> +
>  	/*
>  	 * Enable FIFO underflow since DSI and DPI can't be blocked.
>  	 * Keep the FIFO pseudo size reset default of 8 KiB. Set the
> @@ -142,7 +149,7 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
>  	 */
>  	threshold = width * height * vrefresh * 4 * 7 / 1000000;
>  	reg = RDMA_FIFO_UNDERFLOW_EN |
> -	      RDMA_FIFO_PSEUDO_SIZE(RDMA_FIFO_SIZE(rdma)) |
> +	      RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
>  	      RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
>  	writel(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
>  }
> @@ -284,6 +291,18 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
>  		return comp_id;
>  	}
>  
> +	if (of_find_property(dev->of_node, "mediatek,rdma_fifo_size", &ret)) {
> +		ret = of_property_read_u32(dev->of_node,
> +					   "mediatek,rdma_fifo_size",
> +					   &priv->fifo_size);
> +		if (ret) {
> +			dev_err(dev, "Failed to get rdma fifo size\n");
> +			return ret;
> +		}
> +
> +		priv->fifo_size *= SZ_1K;
> +	}
> +
>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
>  				&mtk_disp_rdma_funcs);
>  	if (ret) {
> @@ -328,11 +347,17 @@ static int mtk_disp_rdma_remove(struct platform_device *pdev)
>  	.fifo_size = SZ_8K,
>  };
>  

[snip]

> @@ -514,6 +558,7 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  		 */
>  		if (comp_type == MTK_DISP_COLOR ||
>  		    comp_type == MTK_DISP_OVL ||
> +		    comp_type == MTK_DISP_OVL_2L ||

I think this should be squashed into "[v5,15/32] drm/mediatek: add
commponent OVL_2L0'.

Regards,
CK

>  		    comp_type == MTK_DISP_RDMA ||
>  		    comp_type == MTK_DSI ||
>  		    comp_type == MTK_DPI) {
 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

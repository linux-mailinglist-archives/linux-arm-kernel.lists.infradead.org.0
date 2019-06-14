Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48B34539F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 06:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJdOWs1jnlarbeo3qr7uMt5XcvjO6yHTOYqJXf9aA0o=; b=c2+sZfvPyNGeFJ
	mLwqWhaWMvafSEsH0It+x+RW+FlbvUDZoq2TCUhAWdmtxkmkQJRGfgSDmuybKV//Vk1uUIRcfBMRv
	ieLAOytNzIreQsmheYUDDp0kWhgtmhfs7RGlJjTOTnZK7yMZvFRYdYfzWi0HnVKJ9mEKusmCdlgtX
	+82XUH/uhpwcKKNFxnjl3k1/piT7JbVP+S0uALmMkEfXHupzSGg+uOqisIRiP9GCirAuTMqdzZ/4Q
	pelBPha59SlYuCWz7l78CEaYM4orHKs9mY4SAo2ZDvK+MbOQMQzA/G4LToa0ZvTuAsI/UvuwkLkgt
	brTrdUouoN2tEMvXc/Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbdxT-0006DB-45; Fri, 14 Jun 2019 04:36:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbdxL-0006CF-6q; Fri, 14 Jun 2019 04:36:53 +0000
X-UUID: 5ba741378f4043daa66697d4265a2d0a-20190613
X-UUID: 5ba741378f4043daa66697d4265a2d0a-20190613
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1882556220; Thu, 13 Jun 2019 20:36:44 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 21:36:42 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 12:36:40 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 12:36:39 +0800
Message-ID: <1560486999.16718.15.camel@mtksdaap41>
Subject: Re: [PATCH v3, 16/27] drm/mediatek: add component DITHER
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 14 Jun 2019 12:36:39 +0800
In-Reply-To: <1559734986-7379-17-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-17-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_213651_255630_E4A21FD7 
X-CRM114-Status: GOOD (  13.11  )
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

On Wed, 2019-06-05 at 19:42 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add component DITHER

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 32 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  2 ++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 5a0ec0f..989024d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -47,6 +47,12 @@
>  #define CCORR_RELAY_MODE			BIT(0)
>  #define DISP_CCORR_SIZE				0x0030
>  
> +#define DISP_DITHER_EN				0x0000
> +#define DITHER_EN				BIT(0)
> +#define DISP_DITHER_CFG				0x0020
> +#define DITHER_RELAY_MODE			BIT(0)
> +#define DISP_DITHER_SIZE			0x0030
> +
>  #define DISP_GAMMA_EN				0x0000
>  #define DISP_GAMMA_CFG				0x0020
>  #define DISP_GAMMA_SIZE				0x0030
> @@ -155,6 +161,24 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
>  	writel_relaxed(0x0, comp->regs + DISP_CCORR_EN);
>  }
>  
> +static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
> +			      unsigned int h, unsigned int vrefresh,
> +			      unsigned int bpc)
> +{
> +	writel(h << 16 | w, comp->regs + DISP_DITHER_SIZE);
> +	writel(DITHER_RELAY_MODE, comp->regs + DISP_DITHER_CFG);
> +}
> +
> +static void mtk_dither_start(struct mtk_ddp_comp *comp)
> +{
> +	writel(DITHER_EN, comp->regs + DISP_DITHER_EN);
> +}
> +
> +static void mtk_dither_stop(struct mtk_ddp_comp *comp)
> +{
> +	writel_relaxed(0x0, comp->regs + DISP_DITHER_EN);
> +}
> +
>  static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			     unsigned int h, unsigned int vrefresh,
>  			     unsigned int bpc)
> @@ -209,6 +233,12 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  	.stop = mtk_ccorr_stop,
>  };
>  
> +static const struct mtk_ddp_comp_funcs ddp_dither = {
> +	.config = mtk_dither_config,
> +	.start = mtk_dither_start,
> +	.stop = mtk_dither_stop,
> +};
> +
>  static const struct mtk_ddp_comp_funcs ddp_gamma = {
>  	.gamma_set = mtk_gamma_set,
>  	.config = mtk_gamma_config,
> @@ -234,6 +264,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  	[MTK_DISP_CCORR] = "ccorr",
>  	[MTK_DISP_AAL] = "aal",
>  	[MTK_DISP_GAMMA] = "gamma",
> +	[MTK_DISP_DITHER] = "dither",
>  	[MTK_DISP_UFOE] = "ufoe",
>  	[MTK_DSI] = "dsi",
>  	[MTK_DPI] = "dpi",
> @@ -256,6 +287,7 @@ struct mtk_ddp_comp_match {
>  	[DDP_COMPONENT_CCORR]	= { MTK_DISP_CCORR,	0, &ddp_ccorr },
>  	[DDP_COMPONENT_COLOR0]	= { MTK_DISP_COLOR,	0, NULL },
>  	[DDP_COMPONENT_COLOR1]	= { MTK_DISP_COLOR,	1, NULL },
> +	[DDP_COMPONENT_DITHER]	= { MTK_DISP_DITHER,	0, &ddp_dither },
>  	[DDP_COMPONENT_DPI0]	= { MTK_DPI,		0, NULL },
>  	[DDP_COMPONENT_DPI1]	= { MTK_DPI,		1, NULL },
>  	[DDP_COMPONENT_DSI0]	= { MTK_DSI,		0, NULL },
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index d7ef480..158c1e5 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -30,6 +30,7 @@ enum mtk_ddp_comp_type {
>  	MTK_DISP_WDMA,
>  	MTK_DISP_COLOR,
>  	MTK_DISP_CCORR,
> +	MTK_DISP_DITHER,
>  	MTK_DISP_AAL,
>  	MTK_DISP_GAMMA,
>  	MTK_DISP_UFOE,
> @@ -49,6 +50,7 @@ enum mtk_ddp_comp_id {
>  	DDP_COMPONENT_CCORR,
>  	DDP_COMPONENT_COLOR0,
>  	DDP_COMPONENT_COLOR1,
> +	DDP_COMPONENT_DITHER,
>  	DDP_COMPONENT_DPI0,
>  	DDP_COMPONENT_DPI1,
>  	DDP_COMPONENT_DSI0,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

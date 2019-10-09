Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7050DD0A94
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzvHJSDVhnjTDJOoSUdLlbnKKz0XZibsLD5mvxtlSyw=; b=My4v/aDQrnKZk0
	+HjD6S9fiBphydoy4Q/ebss+fGPPVMtr2QT6mdD8BiYs0Xy0DZbHvOUFmHxL2zWqVrgGpO89XXNCJ
	fKOMt41PBVPEvZIbqmeEd113tmtQzMHqlSeBRHsKDDPuh0+8eAvmgGVHBqzJ8VRrZUgESiBHGBitO
	F1kqobXP09ucmEDP+T5nHYfa6Dddt160yOqY2k5iSEA48L3E24XGNhxdzSpQCWvhAZ1bJjDrcpRoJ
	Fb8VI0S/dhFrhMZixGgw5zpgLi1iRy6sne0yef5kCc/045iEFsMkucGq7jI0L7dQ8woj8/z9XsIli
	rBu86vDJWrys8XlP7ehw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI80W-0001CE-RM; Wed, 09 Oct 2019 09:11:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI80Q-0001Bn-6T; Wed, 09 Oct 2019 09:11:39 +0000
X-UUID: a6c677ca08b645f8a2badd2b8a38d8d5-20191009
X-UUID: a6c677ca08b645f8a2badd2b8a38d8d5-20191009
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2017638133; Wed, 09 Oct 2019 01:11:34 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:11:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:11:27 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:11:27 +0800
Message-ID: <1570612290.3420.2.camel@mtksdaap41>
Subject: Re: [PATCH v5, 17/32] drm/mediatek: add component DITHER
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 9 Oct 2019 17:11:30 +0800
In-Reply-To: <1567090254-15566-18-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-18-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FBF030313D3D5D9D294582771B8D87DE035FBA9DE1C2887AF1DB0C3BE2DFBF132000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_021138_241088_39C0C503 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
> This patch add component DITHER
> 

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 32 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  2 ++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index af8e872..8fea985 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -39,6 +39,12 @@
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
> @@ -147,6 +153,24 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
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
> @@ -201,6 +225,12 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
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
> @@ -226,6 +256,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  	[MTK_DISP_CCORR] = "ccorr",
>  	[MTK_DISP_AAL] = "aal",
>  	[MTK_DISP_GAMMA] = "gamma",
> +	[MTK_DISP_DITHER] = "dither",
>  	[MTK_DISP_UFOE] = "ufoe",
>  	[MTK_DSI] = "dsi",
>  	[MTK_DPI] = "dpi",
> @@ -248,6 +279,7 @@ struct mtk_ddp_comp_match {
>  	[DDP_COMPONENT_CCORR]	= { MTK_DISP_CCORR,	0, &ddp_ccorr },
>  	[DDP_COMPONENT_COLOR0]	= { MTK_DISP_COLOR,	0, NULL },
>  	[DDP_COMPONENT_COLOR1]	= { MTK_DISP_COLOR,	1, NULL },
> +	[DDP_COMPONENT_DITHER]	= { MTK_DISP_DITHER,	0, &ddp_dither },
>  	[DDP_COMPONENT_DPI0]	= { MTK_DPI,		0, NULL },
>  	[DDP_COMPONENT_DPI1]	= { MTK_DPI,		1, NULL },
>  	[DDP_COMPONENT_DSI0]	= { MTK_DSI,		0, NULL },
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 962d14a..85e096a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -22,6 +22,7 @@ enum mtk_ddp_comp_type {
>  	MTK_DISP_WDMA,
>  	MTK_DISP_COLOR,
>  	MTK_DISP_CCORR,
> +	MTK_DISP_DITHER,
>  	MTK_DISP_AAL,
>  	MTK_DISP_GAMMA,
>  	MTK_DISP_UFOE,
> @@ -41,6 +42,7 @@ enum mtk_ddp_comp_id {
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

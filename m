Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB5ED0B72
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGbYynbU4z95nJyiIBBmGN50X45vFxdH/zTj/AlXp+w=; b=ChrztzLUzeHneL
	Hco27brdNFSrJHO653b1iXPD7ywi/S48PJhqDcJn/d32UwpYrYVNhJ5OGv3AEjPOF1WRFOHCCljSK
	RuieFd/K1satO781bdlrs/jaQPXb6uHZpZ+A3V/Zz+uh++k01c/scFFEskFc0pKmmfZioRmeeqaPs
	T5CvC7JLYUYaw6JEKrEvVd3iR2/toD8q0KcesKvV3wsMdFd6Wpz1DGAL10dhWUST3NZec0mKjL3Tj
	XLYQny1i48tO0+CX07OGIjOQ6k1zmEtkAfbZmVrSk+mZuBXN5BN+1WyMjT1Skw8F4l3lST+IqwYS2
	P64686gQBQx6WmCYRHvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8RX-0007Y7-2t; Wed, 09 Oct 2019 09:39:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8Qo-0006xH-VB; Wed, 09 Oct 2019 09:38:57 +0000
X-UUID: 7540a19155104fadadda20f4b177bdc3-20191009
X-UUID: 7540a19155104fadadda20f4b177bdc3-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 509543990; Wed, 09 Oct 2019 01:38:50 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:31:39 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:31:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:31:32 +0800
Message-ID: <1570613495.7713.10.camel@mtksdaap41>
Subject: Re: [PATCH v5, 07/32] drm/mediatek: add mutex mod into ddp private
 data
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 9 Oct 2019 17:31:35 +0800
In-Reply-To: <1567090254-15566-8-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-8-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AC71247C6AD1EBD0EEC01AB4ACDE9E930FA1EC53344276BD50221E780C817EF22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_023855_019306_C9F59542 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
> except mutex mod, mutex mod reg,mutex sof reg,
> and mutex sof id will be ddp private data
> 

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 41 +++++++++++++++++++++++++---------
>  1 file changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 8106a71..b6cc3d8 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -139,12 +139,16 @@ struct mtk_disp_mutex {
>  	bool claimed;
>  };
>  
> +struct mtk_ddp_data {
> +	const unsigned int *mutex_mod;
> +};
> +
>  struct mtk_ddp {
>  	struct device			*dev;
>  	struct clk			*clk;
>  	void __iomem			*regs;
>  	struct mtk_disp_mutex		mutex[10];
> -	const unsigned int		*mutex_mod;
> +	const struct mtk_ddp_data	*data;
>  };
>  
>  static const unsigned int mt2701_mutex_mod[DDP_COMPONENT_ID_MAX] = {
> @@ -194,6 +198,18 @@ struct mtk_ddp {
>  	[DDP_COMPONENT_WDMA1] = MT8173_MUTEX_MOD_DISP_WDMA1,
>  };
>  
> +static const struct mtk_ddp_data mt2701_ddp_driver_data = {
> +	.mutex_mod = mt2701_mutex_mod,
> +};
> +
> +static const struct mtk_ddp_data mt2712_ddp_driver_data = {
> +	.mutex_mod = mt2712_mutex_mod,
> +};
> +
> +static const struct mtk_ddp_data mt8173_ddp_driver_data = {
> +	.mutex_mod = mt8173_mutex_mod,
> +};
> +
>  static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
>  				    enum mtk_ddp_comp_id next,
>  				    unsigned int *addr)
> @@ -456,15 +472,15 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
>  		reg = MUTEX_SOF_DPI1;
>  		break;
>  	default:
> -		if (ddp->mutex_mod[id] < 32) {
> +		if (ddp->data->mutex_mod[id] < 32) {
>  			offset = DISP_REG_MUTEX_MOD(mutex->id);
>  			reg = readl_relaxed(ddp->regs + offset);
> -			reg |= 1 << ddp->mutex_mod[id];
> +			reg |= 1 << ddp->data->mutex_mod[id];
>  			writel_relaxed(reg, ddp->regs + offset);
>  		} else {
>  			offset = DISP_REG_MUTEX_MOD2(mutex->id);
>  			reg = readl_relaxed(ddp->regs + offset);
> -			reg |= 1 << (ddp->mutex_mod[id] - 32);
> +			reg |= 1 << (ddp->data->mutex_mod[id] - 32);
>  			writel_relaxed(reg, ddp->regs + offset);
>  		}
>  		return;
> @@ -494,15 +510,15 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
>  			       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
>  		break;
>  	default:
> -		if (ddp->mutex_mod[id] < 32) {
> +		if (ddp->data->mutex_mod[id] < 32) {
>  			offset = DISP_REG_MUTEX_MOD(mutex->id);
>  			reg = readl_relaxed(ddp->regs + offset);
> -			reg &= ~(1 << ddp->mutex_mod[id]);
> +			reg &= ~(1 << ddp->data->mutex_mod[id]);
>  			writel_relaxed(reg, ddp->regs + offset);
>  		} else {
>  			offset = DISP_REG_MUTEX_MOD2(mutex->id);
>  			reg = readl_relaxed(ddp->regs + offset);
> -			reg &= ~(1 << (ddp->mutex_mod[id] - 32));
> +			reg &= ~(1 << (ddp->data->mutex_mod[id] - 32));
>  			writel_relaxed(reg, ddp->regs + offset);
>  		}
>  		break;
> @@ -577,7 +593,7 @@ static int mtk_ddp_probe(struct platform_device *pdev)
>  		return PTR_ERR(ddp->regs);
>  	}
>  
> -	ddp->mutex_mod = of_device_get_match_data(dev);
> +	ddp->data = of_device_get_match_data(dev);
>  
>  	platform_set_drvdata(pdev, ddp);
>  
> @@ -590,9 +606,12 @@ static int mtk_ddp_remove(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id ddp_driver_dt_match[] = {
> -	{ .compatible = "mediatek,mt2701-disp-mutex", .data = mt2701_mutex_mod},
> -	{ .compatible = "mediatek,mt2712-disp-mutex", .data = mt2712_mutex_mod},
> -	{ .compatible = "mediatek,mt8173-disp-mutex", .data = mt8173_mutex_mod},
> +	{ .compatible = "mediatek,mt2701-disp-mutex",
> +	  .data = &mt2701_ddp_driver_data},
> +	{ .compatible = "mediatek,mt2712-disp-mutex",
> +	  .data = &mt2712_ddp_driver_data},
> +	{ .compatible = "mediatek,mt8173-disp-mutex",
> +	  .data = &mt8173_ddp_driver_data},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, ddp_driver_dt_match);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

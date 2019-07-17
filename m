Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF6E6B5DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 07:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JNI9hnp8qDEAebg2she1XNwZw9XTAbZansCSc0BeSY=; b=SpxZpyo9gmp2Zs
	o4Op8+deyY/FW6GPM0it6Oe0n5mz9CDYrsC1sWVoFnaP8hDjBaMEbOL8Yn9AnW8OkaL1nBw4NWJP5
	r0tlyXBaemhmLAh64egihl77W7LvCmMrtzlwU8oypX76HCIXp3r7dhHheddrpaEpGVoMAwl6buTth
	tykOwjlnq6YSPlK99x2GpZLHz9HXTagz2WtGha3NgYoM2eR81hSs1RvOlPzjDQEMzDa8m/zRsIJAg
	B+72MCjoOkC/BaTNFlPUhdrl+lZDFDZx+SazQ2SlAauJMD/3Mjxyk+eGX9efCziVEgNVr4/0jMhYJ
	x6ZD8Au6iwm6jKTMBAvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hncQB-0000us-3S; Wed, 17 Jul 2019 05:24:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hncPQ-0000u2-Vt; Wed, 17 Jul 2019 05:23:24 +0000
X-UUID: a73a5d389fb94eeab52e9dd2f3bee484-20190716
X-UUID: a73a5d389fb94eeab52e9dd2f3bee484-20190716
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1370080528; Tue, 16 Jul 2019 21:23:07 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 22:23:05 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 13:23:00 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 13:22:54 +0800
Message-ID: <1563340974.29169.11.camel@mtksdaap41>
Subject: Re: [PATCH v4, 08/33] drm/mediatek: add mutex mod into ddp private
 data
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 13:22:54 +0800
In-Reply-To: <1562625253-29254-9-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-9-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CFF9E5198CA28369170E44526D2AFDC1FA459C62420A782C0EDFB70474AD79132000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_222321_035483_B791ABEE 
X-CRM114-Status: GOOD (  15.06  )
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

On Tue, 2019-07-09 at 06:33 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> except mutex mod, mutex mod reg,mutex sof reg,
> and mutex sof id will be ddp private data

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 41 +++++++++++++++++++++++++---------
>  1 file changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 579ce28..412b82f 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -147,12 +147,16 @@ struct mtk_disp_mutex {
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
> @@ -202,6 +206,18 @@ struct mtk_ddp {
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
> @@ -464,15 +480,15 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
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
> @@ -502,15 +518,15 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
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
> @@ -585,7 +601,7 @@ static int mtk_ddp_probe(struct platform_device *pdev)
>  		return PTR_ERR(ddp->regs);
>  	}
>  
> -	ddp->mutex_mod = of_device_get_match_data(dev);
> +	ddp->data = of_device_get_match_data(dev);
>  
>  	platform_set_drvdata(pdev, ddp);
>  
> @@ -598,9 +614,12 @@ static int mtk_ddp_remove(struct platform_device *pdev)
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

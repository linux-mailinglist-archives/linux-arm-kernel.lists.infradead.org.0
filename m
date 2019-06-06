Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C2A36BC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 07:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UATH7tm/4NR+TiHLx4a9iaTZpfSjfrwoDiu1u5LxHZc=; b=Hsm9z7jMrQHMp4
	uW7ktXTcr2MmBaOdSC+JdtbPEMrjro2/xIs29CG9TohJ+akr20YA0kU/Ij6FRoPyoT5IW3/zqsSNw
	ip2jwupqFibkGEKCoYK5Uaclxd+iK6Y7nI3lOFdXCkHkUtJIPK2dJgrH8UJ+Qq3MQyY2QMAZmp7Pt
	jLUMZ6X2JaYWzDW9LHuUTepWB3K+XCF875/o1wiwjt8TcQZE/afd8Onf4hUqkG4QyF8AUep3BTalW
	ie0Tc9tRFjOJR8FxgYmHX5fW1TxJS1CpFNBVMKWTK7LwpEAw21TlYJaG1vEKMiGj3y0v0bVfHAX+b
	p61AVQzQLKJa2vqypq2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlBG-0001Yj-FK; Thu, 06 Jun 2019 05:43:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlB8-0001YM-5V; Thu, 06 Jun 2019 05:43:12 +0000
X-UUID: ff387e1e83db4c889151184145fe237a-20190605
X-UUID: ff387e1e83db4c889151184145fe237a-20190605
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1874761941; Wed, 05 Jun 2019 21:42:49 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 22:42:47 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 13:42:39 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 6 Jun 2019 13:42:37 +0800
Message-ID: <1559799757.20098.6.camel@mtksdaap41>
Subject: Re: [PATCH v3, 06/27] drm/mediatek: add mutex mod into ddp private
 data
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Thu, 6 Jun 2019 13:42:37 +0800
In-Reply-To: <1559734986-7379-7-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-7-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_224310_217824_D22D0143 
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
X-Mailman-Version: 2.1.21
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
> except mutex mod, mutex mod reg,mutex sof reg,
> and mutex sof id will be ddp private data
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 53 +++++++++++++++++++++++-----------
>  1 file changed, 36 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 579ce28..ae94d44 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -41,12 +41,12 @@
>  #define DISP_REG_CONFIG_DSI_SEL			0x050
>  #define DISP_REG_CONFIG_DPI_SEL			0x064
>  
> -#define DISP_REG_MUTEX_EN(n)	(0x20 + 0x20 * (n))
> -#define DISP_REG_MUTEX(n)	(0x24 + 0x20 * (n))
> -#define DISP_REG_MUTEX_RST(n)	(0x28 + 0x20 * (n))
> -#define DISP_REG_MUTEX_MOD(n)	(0x2c + 0x20 * (n))
> -#define DISP_REG_MUTEX_SOF(n)	(0x30 + 0x20 * (n))
> -#define DISP_REG_MUTEX_MOD2(n)	(0x34 + 0x20 * (n))
> +#define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
> +#define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
> +#define DISP_REG_MUTEX_RST(n)			(0x28 + 0x20 * (n))
> +#define DISP_REG_MUTEX_MOD(n)			(0x2c + 0x20 * (n))
> +#define DISP_REG_MUTEX_SOF(n)			(0x30 + 0x20 * (n))
> +#define DISP_REG_MUTEX_MOD2(n)			(0x34 + 0x20 * (n))

You add 'tab' because of "add mutex mod register offset into ddp private
data" not "add mutex mod into ddp private data", so move this to the
related patch.

Regards,
CK

>  
>  #define INT_MUTEX				BIT(1)
>  
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

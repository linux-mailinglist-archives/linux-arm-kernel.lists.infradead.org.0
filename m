Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3406C6B5F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 07:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3hBsqRRDvdvgI2fUp68bSSNMgjXuMhUovr2Lu2diLI=; b=t2hwN9XpnHAlpw
	mwdRF3BcVW2X3JsZt9BdY7IqtUk4GeatTzYxrGJcY1H1RfTVozfLMUF/wkQyj+KslZXbOEoXZ3QTe
	zLRdSZRr7ilSK1Y7X15Z2Sj7qrP49HruLHEJc8kOOuGuBdiWpFiGSfLvaZqNifNnpUX9Xdyl+4NMg
	M5NrvfPiH21jG8ibWx1wv6K/3k396i8JOWs4nCShi0mgEUFIc4gVxD56lz0c2reAowO2t4sapvqZG
	P89vfTggG6+E/ECkxBbD7AocXqaLhNdp4mSsSvqZsbHH5+t12BFVNorO4QaFtg7f2X+e+RyqRInDu
	E2eHP8sE1ci5TkPr93pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hncYC-0005Az-ST; Wed, 17 Jul 2019 05:32:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hncXx-0005AT-CI; Wed, 17 Jul 2019 05:32:10 +0000
X-UUID: 21b1cea7bfb44c1c8fcb96474d363432-20190716
X-UUID: 21b1cea7bfb44c1c8fcb96474d363432-20190716
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 291439162; Tue, 16 Jul 2019 21:31:59 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 22:31:57 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 13:31:54 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 13:31:54 +0800
Message-ID: <1563341514.29169.14.camel@mtksdaap41>
Subject: Re: [PATCH v4, 11/33] drm/mediatek: add mutex sof register offset
 into ddp private data
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 13:31:54 +0800
In-Reply-To: <1562625253-29254-12-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-12-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 86CB27915B31E087E11638F66BC5816F7C93AAD27091893D150F28DAAEDA8DA92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_223209_427105_83B670E3 
X-CRM114-Status: GOOD (  13.33  )
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
> mutex sof register offset will be private data of ddp
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index ab396ee..d015c1a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -42,12 +42,13 @@
>  #define DISP_REG_CONFIG_DPI_SEL			0x064
>  
>  #define MT2701_DISP_MUTEX0_MOD0			0x2c
> +#define MT2701_DISP_MUTEX0_SOF0			0x30
>  
>  #define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
>  #define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
>  #define DISP_REG_MUTEX_RST(n)			(0x28 + 0x20 * (n))
>  #define DISP_REG_MUTEX_MOD(mutex_mod_reg, n)	(mutex_mod_reg + 0x20 * (n))
> -#define DISP_REG_MUTEX_SOF(n)			(0x30 + 0x20 * (n))
> +#define DISP_REG_MUTEX_SOF(mutex_sof_reg, n)	(mutex_sof_reg + 0x20 * (n))
>  #define DISP_REG_MUTEX_MOD2(n)			(0x34 + 0x20 * (n))
>  
>  #define INT_MUTEX				BIT(1)
> @@ -163,6 +164,7 @@ struct mtk_ddp_data {
>  	const unsigned int *mutex_mod;
>  	const unsigned int *mutex_sof;
>  	const unsigned int mutex_mod_reg;
> +	const unsigned int mutex_sof_reg;
>  };
>  
>  struct mtk_ddp {
> @@ -234,18 +236,21 @@ struct mtk_ddp {
>  	.mutex_mod = mt2701_mutex_mod,
>  	.mutex_sof = mt2712_mutex_sof,
>  	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
> +	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
>  };
>  
>  static const struct mtk_ddp_data mt2712_ddp_driver_data = {
>  	.mutex_mod = mt2712_mutex_mod,
>  	.mutex_sof = mt2712_mutex_sof,
>  	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
> +	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
>  };
>  
>  static const struct mtk_ddp_data mt8173_ddp_driver_data = {
>  	.mutex_mod = mt8173_mutex_mod,
>  	.mutex_sof = mt2712_mutex_sof,
>  	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
> +	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
>  };
>  
>  static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
> @@ -527,7 +532,8 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
>  	}
>  
>  	writel_relaxed(ddp->data->mutex_sof[sof_id],
> -		       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
> +		       ddp->regs +
> +		       DISP_REG_MUTEX_SOF(ddp->data->mutex_sof_reg, mutex->id));
>  }
>  
>  void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
> @@ -549,7 +555,8 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
>  	case DDP_COMPONENT_DPI1:
>  		writel_relaxed(MUTEX_SOF_SINGLE_MODE,
>  			       ddp->regs +
> -			       DISP_REG_MUTEX_SOF(mutex->id));
> +			       DISP_REG_MUTEX_SOF(ddp->data->mutex_sof_reg,
> +						  mutex->id));
>  		break;
>  	default:
>  		if (ddp->data->mutex_mod[id] < 32) {



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

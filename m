Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D05498EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fNey9DTDEDsk6N54zkAqeHaieeS6AVDfLjHxK78zOw=; b=aQL8VfLF03WC8A
	bIgjygx3UGLRPy4nC7K8wJEjqk7cN55WGN++Of6Rk4mwqbmnqKwrBwRykl0VFh8hQAYaXYiuOelzh
	NiPT00/nEOsh6RMfqOr4FvZ3+bznqSTzLqbYvN8RAqNsst1OpWsYzKnxXGQ9Q5vJXoo+CWgLPiqos
	8PUSXlglZEULHWHL8axHGEft8OPEjxvWpQU+SXKkiKNaZUgo/aMVG8TsHkbI+1OQQDEs86w3PyYLR
	+8c0k4BIytm1x7CXDrrCG+ZiQP+O2YjHbjXh3v91INL3CYHVWAkryz0hbvESwTpg+1g4gU4Hk63qN
	h1dN8ZfJTqN2HcbLNOew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7ib-0002i0-NL; Tue, 18 Jun 2019 06:35:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7iL-0002gM-T3; Tue, 18 Jun 2019 06:35:31 +0000
X-UUID: ce707053271342fab76361b2859657a3-20190617
X-UUID: ce707053271342fab76361b2859657a3-20190617
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 191377585; Mon, 17 Jun 2019 22:35:22 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 23:35:21 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Jun 2019 14:35:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Jun 2019 14:35:19 +0800
Message-ID: <1560839719.3736.0.camel@mtksdaap41>
Subject: Re: [PATCH v2 08/12] drm/mediatek: Get rid of mtk_smi_larb_get/put
From: CK Hu <ck.hu@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>
Date: Tue, 18 Jun 2019 14:35:19 +0800
In-Reply-To: <1560171313-28299-9-git-send-email-yong.wu@mediatek.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
 <1560171313-28299-9-git-send-email-yong.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_233529_947521_D598BC55 
X-CRM114-Status: GOOD (  15.95  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 anan.sun@mediatek.com, Robin
 Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yong:

On Mon, 2019-06-10 at 20:55 +0800, Yong Wu wrote:
> MediaTek IOMMU has already added the device_link between the consumer
> and smi-larb device. If the drm device call the pm_runtime_get_sync,
> the smi-larb's pm_runtime_get_sync also be called automatically.
> 
> CC: CK Hu <ck.hu@mediatek.com>
> CC: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 11 -----------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 26 --------------------------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  1 -
>  3 files changed, 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index acad088..3a21a48 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -18,7 +18,6 @@
>  #include <drm/drm_probe_helper.h>
>  #include <linux/clk.h>
>  #include <linux/pm_runtime.h>
> -#include <soc/mediatek/smi.h>
>  
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_crtc.h"
> @@ -371,20 +370,12 @@ static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
>  				       struct drm_crtc_state *old_state)
>  {
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> -	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
>  	int ret;
>  
>  	DRM_DEBUG_DRIVER("%s %d\n", __func__, crtc->base.id);
>  
> -	ret = mtk_smi_larb_get(comp->larb_dev);
> -	if (ret) {
> -		DRM_ERROR("Failed to get larb: %d\n", ret);
> -		return;
> -	}
> -
>  	ret = mtk_crtc_ddp_hw_init(mtk_crtc);
>  	if (ret) {
> -		mtk_smi_larb_put(comp->larb_dev);
>  		return;
>  	}

Remove {}.

Regards,
CK

>  
> @@ -396,7 +387,6 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
>  					struct drm_crtc_state *old_state)
>  {
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> -	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
>  	int i;
>  
>  	DRM_DEBUG_DRIVER("%s %d\n", __func__, crtc->base.id);
> @@ -419,7 +409,6 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
>  
>  	drm_crtc_vblank_off(crtc);
>  	mtk_crtc_ddp_hw_fini(mtk_crtc);
> -	mtk_smi_larb_put(comp->larb_dev);
>  
>  	mtk_crtc->enabled = false;
>  }
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 54ca794..ede15c9 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -265,8 +265,6 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
>  		      const struct mtk_ddp_comp_funcs *funcs)
>  {
>  	enum mtk_ddp_comp_type type;
> -	struct device_node *larb_node;
> -	struct platform_device *larb_pdev;
>  
>  	if (comp_id < 0 || comp_id >= DDP_COMPONENT_ID_MAX)
>  		return -EINVAL;
> @@ -296,30 +294,6 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
>  	if (IS_ERR(comp->clk))
>  		return PTR_ERR(comp->clk);
>  
> -	/* Only DMA capable components need the LARB property */
> -	comp->larb_dev = NULL;
> -	if (type != MTK_DISP_OVL &&
> -	    type != MTK_DISP_RDMA &&
> -	    type != MTK_DISP_WDMA)
> -		return 0;
> -
> -	larb_node = of_parse_phandle(node, "mediatek,larb", 0);
> -	if (!larb_node) {
> -		dev_err(dev,
> -			"Missing mediadek,larb phandle in %pOF node\n", node);
> -		return -EINVAL;
> -	}
> -
> -	larb_pdev = of_find_device_by_node(larb_node);
> -	if (!larb_pdev) {
> -		dev_warn(dev, "Waiting for larb device %pOF\n", larb_node);
> -		of_node_put(larb_node);
> -		return -EPROBE_DEFER;
> -	}
> -	of_node_put(larb_node);
> -
> -	comp->larb_dev = &larb_pdev->dev;
> -
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 8399229..b8dc17e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -91,7 +91,6 @@ struct mtk_ddp_comp {
>  	struct clk *clk;
>  	void __iomem *regs;
>  	int irq;
> -	struct device *larb_dev;
>  	enum mtk_ddp_comp_id id;
>  	const struct mtk_ddp_comp_funcs *funcs;
>  };



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

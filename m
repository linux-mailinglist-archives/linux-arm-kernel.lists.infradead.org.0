Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACCAB3605
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 09:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=675RvWpFyoIwMfASzpPiHw7mLkm3iSI9r1GlkpoIVv4=; b=OrK/KzAobyGSUN
	39NvlfBWsh6eOpAjuDLrSIqcIKsPQybhGhx2JJFHWAE0cbrGgg1iYuqt1nzMMDuM07NOmzwtJL8Y+
	ZZdsMVvFuFtJHi3Z+rptk6EfjGI/i23mYRi7rC/jft+e/YmCE6c2vv91BjxR2n9yUJ7fJDpmWfsZI
	tfz+bhH1HTdpYjC6plnNIzK/VrAff5mVnusvWa7bFLHepgJ+vD3389rJMP5ixtS/OWle+K+TenN0e
	8O4w/h1WZUCZNM8e0Oewn1c89fo2dBPy6yU1q3RQrQeg2Uobbz9kAWsl6l7Gg4bS9wgd001JMveUm
	V1bakgpi3LUQCQ5ZAOAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lro-0002cF-KF; Mon, 16 Sep 2019 07:56:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lrS-0002bE-6S; Mon, 16 Sep 2019 07:55:51 +0000
X-UUID: 522624b7f65241438522ec780c06801d-20190915
X-UUID: 522624b7f65241438522ec780c06801d-20190915
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 254404354; Sun, 15 Sep 2019 23:55:43 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 00:55:42 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 15:55:40 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 15:55:40 +0800
Message-ID: <1568620540.7280.1.camel@mtksdaap41>
Subject: Re: [PATCH v3 12/14] drm/mediatek: Add pm runtime support for ovl
 and rdma
From: CK Hu <ck.hu@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>
Date: Mon, 16 Sep 2019 15:55:40 +0800
In-Reply-To: <1567503456-24725-13-git-send-email-yong.wu@mediatek.com>
References: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
 <1567503456-24725-13-git-send-email-yong.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_005550_247190_20E53016 
X-CRM114-Status: GOOD (  20.33  )
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
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, Tomasz
 Figa <tfiga@google.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>, Matthias
 Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi, Yong:

On Tue, 2019-09-03 at 17:37 +0800, Yong Wu wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Display use the dispsys device to call pm_rumtime_get_sync before.
> This patch add pm_runtime_xx with ovl and rdma device which has linked
> with larb0, then it will enable the correpsonding larb0 clock
> automatically by the device link.

This patch should be applied before "drm/mediatek: Get rid of
mtk_smi_larb_get/put". If before that patch, this patch is a preparation
of that patch. If after that patch, this patch is a bug fix of that
patch. Why let bug happen?

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  5 +++++
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  5 +++++
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 18 ++++++++++++++++--
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |  9 +++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  1 +
>  5 files changed, 36 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index c4f07c2..51958cf 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
>  
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -300,6 +301,8 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	pm_runtime_enable(dev);
> +
>  	ret = component_add(dev, &mtk_disp_ovl_component_ops);
>  	if (ret)
>  		dev_err(dev, "Failed to add component: %d\n", ret);

This error should do some error handling to undo pm_runtime_enable().

> @@ -311,6 +314,8 @@ static int mtk_disp_ovl_remove(struct platform_device *pdev)
>  {
>  	component_del(&pdev->dev, &mtk_disp_ovl_component_ops);
>  
> +	pm_runtime_disable(&pdev->dev);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index 9a6f0a2..15e5c3a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
>  
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -306,6 +307,8 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, priv);
>  
> +	pm_runtime_enable(dev);
> +
>  	ret = component_add(dev, &mtk_disp_rdma_component_ops);
>  	if (ret)
>  		dev_err(dev, "Failed to add component: %d\n", ret);

Ditto.

> @@ -317,6 +320,8 @@ static int mtk_disp_rdma_remove(struct platform_device *pdev)
>  {
>  	component_del(&pdev->dev, &mtk_disp_rdma_component_ops);
>  
> +	pm_runtime_disable(&pdev->dev);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index c1e891e..daf002e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -358,13 +358,21 @@ static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
>  				       struct drm_crtc_state *old_state)
>  {
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> +	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
>  	int ret;
>  
>  	DRM_DEBUG_DRIVER("%s %d\n", __func__, crtc->base.id);
>  
> +	ret = pm_runtime_get_sync(comp->dev);
> +	if (ret < 0)
> +		DRM_DEV_ERROR(comp->dev, "Failed to enable power domain: %d\n",
> +			      ret);
> +
>  	ret = mtk_crtc_ddp_hw_init(mtk_crtc);
> -	if (ret)
> +	if (ret) {
> +		pm_runtime_put(comp->dev);
>  		return;
> +	}
>  
>  	drm_crtc_vblank_on(crtc);
>  	mtk_crtc->enabled = true;
> @@ -374,7 +382,8 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
>  					struct drm_crtc_state *old_state)
>  {
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> -	int i;
> +	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> +	int i, ret;
>  
>  	DRM_DEBUG_DRIVER("%s %d\n", __func__, crtc->base.id);
>  	if (!mtk_crtc->enabled)
> @@ -398,6 +407,11 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
>  	mtk_crtc_ddp_hw_fini(mtk_crtc);
>  
>  	mtk_crtc->enabled = false;
> +
> +	ret = pm_runtime_put(comp->dev);
> +	if (ret < 0)
> +		DRM_DEV_ERROR(comp->dev, "Failed to disable power domain: %d\n",
> +			      ret);
>  }
>  
>  static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 7dc8496..c45e1f0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -256,6 +256,8 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
>  		      struct mtk_ddp_comp *comp, enum mtk_ddp_comp_id comp_id,
>  		      const struct mtk_ddp_comp_funcs *funcs)
>  {
> +	struct platform_device *comp_pdev;
> +
>  	if (comp_id < 0 || comp_id >= DDP_COMPONENT_ID_MAX)
>  		return -EINVAL;
>  
> @@ -282,6 +284,13 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
>  	if (IS_ERR(comp->clk))
>  		return PTR_ERR(comp->clk);
>  
> +	comp_pdev = of_find_device_by_node(node);
> +	if (!comp_pdev) {
> +		dev_err(dev, "Waiting for device %s\n", node->full_name);
> +		return -EPROBE_DEFER;
> +	}
> +	comp->dev = &comp_pdev->dev;

This should be

	comp->dev = dev;

Regards,
CK

> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 108de60..d1838a8 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -83,6 +83,7 @@ struct mtk_ddp_comp {
>  	struct clk *clk;
>  	void __iomem *regs;
>  	int irq;
> +	struct device *dev;
>  	enum mtk_ddp_comp_id id;
>  	const struct mtk_ddp_comp_funcs *funcs;
>  };




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

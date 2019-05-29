Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC402D962
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6ZwSdHwdvR2E+TDzhgBdOxndPzz2Sj3aFCAEpB3zuE=; b=b4XoL3WfL2FV32
	8+ROql1/iczxELHfZdXiOJSkvicTgm6yn7NbSWgHMdVEunhX718eoQqKw6zPGZLv+UIh03wj2vNNj
	1tjnez+yJif7QU3G0Va0tlwILWbNcQFM4q2yNhTCJSENMmW1AhpT+tw3TKOUtL7fUPsE2R0+OTNa1
	Libzbe+U6qIAehqqDaX6/1Wc558enaFf+3k388FnwThR4moSIx/3Aju4HhrsVW3T7idb9OgYiK9fg
	0rc/C96GbOKmJvDq++7H+j2ZYGvNIV/EbYcwahkTo/9+Phw8ZlUr/ILXfvrNUyKHDr7KIsdPrCHYx
	OJzi+INhNan5F0MFgUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvB9-0007Cp-UA; Wed, 29 May 2019 09:47:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvAs-0006yc-7F; Wed, 29 May 2019 09:47:13 +0000
X-UUID: 13efe01553a0480b8f1e9893897760b7-20190529
X-UUID: 13efe01553a0480b8f1e9893897760b7-20190529
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1913855606; Wed, 29 May 2019 01:47:05 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 02:47:04 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 17:47:02 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 May 2019 17:47:02 +0800
Message-ID: <1559123222.6582.2.camel@mtksdaap41>
Subject: Re: [PATCH 3/3] drm: mediatek: unbind components in mtk_drm_unbind()
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 17:47:02 +0800
In-Reply-To: <20190527045054.113259-4-hsinyi@chromium.org>
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-4-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0D67655A3172A9E677B28064701E21555F16641623DFE39541481F10AB8379D22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_024710_316707_24427C20 
X-CRM114-Status: GOOD (  17.17  )
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Mon, 2019-05-27 at 12:50 +0800, Hsin-Yi Wang wrote:
> Unbinding components (i.e. mtk_dsi and mtk_disp_ovl/rdma/color) will
> trigger master(mtk_drm)'s .unbind(), and currently mtk_drm's unbind
> won't actually unbind components. During the next bind,
> mtk_drm_kms_init() is called, and the components are added back.
> 
> .unbind() should call mtk_drm_kms_deinit() to unbind components.
> 
> And since component_master_del() in .remove() will trigger .unbind(),
> which will also unregister device, it's fine to remove original functions
> called here.
> 
> Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 57ce4708ef1b..bbfe3a464aea 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -311,6 +311,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  static void mtk_drm_kms_deinit(struct drm_device *drm)
>  {
>  	drm_kms_helper_poll_fini(drm);
> +	drm_atomic_helper_shutdown(drm);

This looks not related to this patch. This patch is related to the
unbind timing. You could separate this to an independent patch.

>  
>  	component_unbind_all(drm->dev, drm);
>  	drm_mode_config_cleanup(drm);
> @@ -397,7 +398,9 @@ static void mtk_drm_unbind(struct device *dev)
>  	struct mtk_drm_private *private = dev_get_drvdata(dev);
>  
>  	drm_dev_unregister(private->drm);
> +	mtk_drm_kms_deinit(private->drm);
>  	drm_dev_put(private->drm);
> +	private->num_pipes = 0;

This looks not related to this patch. This patch is related to the
unbind timing. You could separate this to an independent patch.

Regards,
CK

>  	private->drm = NULL;
>  }
>  
> @@ -568,13 +571,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  static int mtk_drm_remove(struct platform_device *pdev)
>  {
>  	struct mtk_drm_private *private = platform_get_drvdata(pdev);
> -	struct drm_device *drm = private->drm;
>  	int i;
>  
> -	drm_dev_unregister(drm);
> -	mtk_drm_kms_deinit(drm);
> -	drm_dev_put(drm);
> -
>  	component_master_del(&pdev->dev, &mtk_drm_ops);
>  	pm_runtime_disable(&pdev->dev);
>  	of_node_put(private->mutex_node);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62DB72788
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 07:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/CgNwmM7VfUnE1nuOCqwpqpyryDhxWcJxkkpjVBldw=; b=se2Zt0YpXuqyM2
	w0s72zY65sih2Zhe4xrP06HvNggwUJPsDW2r71vZAbxnQDrSvD8BIKQpCtFtWrfDTSYh+Cyi25Puh
	OocV/sNhDZR+sc0no5c4qKOpfms44hL/ycOqmTr2kjiJviS5ljnHQZyqYNGhCsaoQVlk62f2OgXds
	FoqOGYcCUkIZ9ixrDelmiAoaRIKqx1weMaFtjy/DtPN5wIi5yJU9LRCMIim9QOKSkOzv/XRleyRei
	6S2S1N80au9sPHuQPVA7TH8xxg+nC4tlJzyQoF+6iKZ17evUAgE74qIqTUxHYo4wLEQt3HJ9hUF5N
	eHNhVvZ+i0638jP4ar3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqAA7-0004a2-BK; Wed, 24 Jul 2019 05:50:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqA9q-0004VE-RV; Wed, 24 Jul 2019 05:49:48 +0000
X-UUID: f323ddf326dc4036adb49fb8d0843ba7-20190723
X-UUID: f323ddf326dc4036adb49fb8d0843ba7-20190723
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1931873102; Tue, 23 Jul 2019 21:49:42 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 23 Jul 2019 22:49:41 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 13:49:27 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 24 Jul 2019 13:49:27 +0800
Message-ID: <1563947367.1070.7.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: make imported PRIME buffers contiguous
From: CK Hu <ck.hu@mediatek.com>
To: Alexandre Courbot <acourbot@chromium.org>
Date: Wed, 24 Jul 2019 13:49:27 +0800
In-Reply-To: <20190723053421.179679-1-acourbot@chromium.org>
References: <20190723053421.179679-1-acourbot@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_224946_897168_3C771BD6 
X-CRM114-Status: GOOD (  21.72  )
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Alexandre:

On Tue, 2019-07-23 at 14:34 +0900, Alexandre Courbot wrote:
> This driver requires imported PRIME buffers to appear contiguously in
> its IO address space. Make sure this is the case by setting the maximum
> DMA segment size to a better value than the default 64K on the DMA
> device, and use said DMA device when importing PRIME buffers.
> 
> Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 47 ++++++++++++++++++++++++--
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
>  2 files changed, 46 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 95fdbd0fbcac..4ad4770fab13 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -213,6 +213,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  	struct mtk_drm_private *private = drm->dev_private;
>  	struct platform_device *pdev;
>  	struct device_node *np;
> +	struct device *dma_dev;
>  	int ret;
>  
>  	if (!iommu_present(&platform_bus_type))
> @@ -275,7 +276,27 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  		goto err_component_unbind;
>  	}
>  
> -	private->dma_dev = &pdev->dev;
> +	dma_dev = &pdev->dev;
> +	private->dma_dev = dma_dev;
> +
> +	/*
> +	 * Configure the DMA segment size to make sure we get contiguous IOVA
> +	 * when importing PRIME buffers.
> +	 */
> +	if (!dma_dev->dma_parms) {
> +		private->dma_parms_allocated = true;
> +		dma_dev->dma_parms =
> +			devm_kzalloc(drm->dev, sizeof(*dma_dev->dma_parms),
> +				     GFP_KERNEL);
> +	}
> +	if (!dma_dev->dma_parms)
> +		goto err_component_unbind;

return with ret = 0?

> +
> +	ret = dma_set_max_seg_size(dma_dev, (unsigned int)DMA_BIT_MASK(32));
> +	if (ret) {
> +		dev_err(dma_dev, "Failed to set DMA segment size\n");
> +		goto err_unset_dma_parms;
> +	}
>  
>  	/*
>  	 * We don't use the drm_irq_install() helpers provided by the DRM
> @@ -285,13 +306,16 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  	drm->irq_enabled = true;
>  	ret = drm_vblank_init(drm, MAX_CRTC);
>  	if (ret < 0)
> -		goto err_component_unbind;
> +		goto err_unset_dma_parms;
>  
>  	drm_kms_helper_poll_init(drm);
>  	drm_mode_config_reset(drm);
>  
>  	return 0;
>  
> +err_unset_dma_parms:
> +	if (private->dma_parms_allocated)
> +		dma_dev->dma_parms = NULL;
>  err_component_unbind:
>  	component_unbind_all(drm->dev, drm);
>  err_config_cleanup:
> @@ -302,9 +326,14 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  
>  static void mtk_drm_kms_deinit(struct drm_device *drm)
>  {
> +	struct mtk_drm_private *private = drm->dev_private;
> +
>  	drm_kms_helper_poll_fini(drm);
>  	drm_atomic_helper_shutdown(drm);
>  
> +	if (private->dma_parms_allocated)
> +		private->dma_dev->dma_parms = NULL;
> +
>  	component_unbind_all(drm->dev, drm);
>  	drm_mode_config_cleanup(drm);
>  }
> @@ -320,6 +349,18 @@ static const struct file_operations mtk_drm_fops = {
>  	.compat_ioctl = drm_compat_ioctl,
>  };
>  
> +/*
> + * We need to override this because the device used to import the memory is
> + * not dev->dev, as drm_gem_prime_import() expects.
> + */
> +struct drm_gem_object *mtk_drm_gem_prime_import(struct drm_device *dev,
> +						struct dma_buf *dma_buf)
> +{
> +	struct mtk_drm_private *private = dev->dev_private;
> +
> +	return drm_gem_prime_import_dev(dev, dma_buf, private->dma_dev);
> +}
> +

I think this part should be an independent patch which fixup
119f5173628aa ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")

Regards,
CK

>  static struct drm_driver mtk_drm_driver = {
>  	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_PRIME |
>  			   DRIVER_ATOMIC,
> @@ -331,7 +372,7 @@ static struct drm_driver mtk_drm_driver = {
>  	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
>  	.gem_prime_export = drm_gem_prime_export,
> -	.gem_prime_import = drm_gem_prime_import,
> +	.gem_prime_import = mtk_drm_gem_prime_import,
>  	.gem_prime_get_sg_table = mtk_gem_prime_get_sg_table,
>  	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
>  	.gem_prime_mmap = mtk_drm_gem_mmap_buf,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index 598ff3e70446..e03fea12ff59 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -51,6 +51,8 @@ struct mtk_drm_private {
>  	} commit;
>  
>  	struct drm_atomic_state *suspend_state;
> +
> +	bool dma_parms_allocated;
>  };
>  
>  extern struct platform_driver mtk_ddp_driver;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

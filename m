Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9E62EA98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4yNfUy2ze2uh9bdBudvKNZ1ht6zruQTU0HEz0D3djQ=; b=GHNE1v0jfJHsKg
	8SHFkK9lNkgdPn5+3rNclxlfgkCmR4S7AdQimwqk6tn3isx/mdm7d3VzJ00g7du8zR88SAZfKCQXU
	xE/l/upvQPuTdrLA/a3eLnhdO7eM1ANbEnB/Hqus0k8RYkO05EhiogdetsJ0wjTVkTwuCQ1X7Bboh
	B20SehcyW0iiC4Yk4CzAIDoHeUjatlGJOVRRqfOfJZ0LySXYKzL8C6AE07hU1QyzOA+xK8fIYlafu
	tSJ7PKN/YLi7BmEYq/DVabFvk9ipvEz0KeGFYKEgvnR0dnlHH33es11akEc/WQh/tWkVp3k0SuaSO
	UyahlYKM0gZZAG5Wu6fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWAe8-0004cF-Cs; Thu, 30 May 2019 02:18:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWAdz-0004av-Gl; Thu, 30 May 2019 02:18:17 +0000
X-UUID: ee8d1cd616734772bdf83e4cbe556714-20190529
X-UUID: ee8d1cd616734772bdf83e4cbe556714-20190529
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 204975671; Wed, 29 May 2019 18:18:01 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 19:17:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 10:17:58 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 10:17:58 +0800
Message-ID: <1559182678.6868.1.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/4] drm: mediatek: unbind components in
 mtk_drm_unbind()
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 10:17:58 +0800
In-Reply-To: <20190529102555.251579-3-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
 <20190529102555.251579-3-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_191815_565432_4627F314 
X-CRM114-Status: GOOD (  14.63  )
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

On Wed, 2019-05-29 at 18:25 +0800, Hsin-Yi Wang wrote:
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

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v1->v2:
> * separate another 2 fixes to other patches.
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 57ce4708ef1b..e7362bdafa82 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -397,6 +397,7 @@ static void mtk_drm_unbind(struct device *dev)
>  	struct mtk_drm_private *private = dev_get_drvdata(dev);
>  
>  	drm_dev_unregister(private->drm);
> +	mtk_drm_kms_deinit(private->drm);
>  	drm_dev_put(private->drm);
>  	private->drm = NULL;
>  }
> @@ -568,13 +569,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
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

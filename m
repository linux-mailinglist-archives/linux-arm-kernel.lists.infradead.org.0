Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6533910E5E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXfgqBGjAxTYBQTuyVUFaqsP8iQv+737BskD+QgUfts=; b=WwYp8oydwyHY+o
	RvyCKZifv6mMlCX9Okdc/eDoAg5yRA6YbaURLnpTjsDGdSBnHTShp+PBlCqo0Wbi+XqQTuCX5JemY
	h28Xf8+7lXsxIrnVDxqslcK7E8IG/y8BhiaplDp6YSdr19clayqMxgQhOvwDI7yahjDNTWnR9xBi6
	Wz4C8S/VIyaumUAoV3hJfsOjD6tPG7HgBziplNiHBbmPuMpHqPQXUzSjavijtwmWE5HEjGrG6EYZV
	QpjWPFR42sVbDYRtwRMf8sDQfiJ4I+uIQsBOtHMFU/XVSHSkfevB0J3WSj95XS+zhMNLSq91VYPyj
	2x5T9+v9m4x3izn6mX1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibf1Y-000789-L4; Mon, 02 Dec 2019 06:17:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibf1R-00077d-Ec; Mon, 02 Dec 2019 06:17:26 +0000
X-UUID: eeacded1eedf4a4dbefe19808dbcf50a-20191201
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1hVDXQnEXhl488d24pN92x7M9sMocqCpXtujHufwujQ=; 
 b=ooyr+wvN/CzaisrsNJylXVzjAIEBxbERIjGlZFXs3PQSGD6omi/ffFnUUpG5neWtC+6adlVo584rAScqbQPgjzXshoUDXIDiYJ0OJDDSwiScpJfiZnFr6IASIO6eV6E5pRw01Lh32bWmSkvM/lDgEuBy6h4XDlQwvGP/8b1u+/I=;
X-UUID: eeacded1eedf4a4dbefe19808dbcf50a-20191201
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 202567880; Sun, 01 Dec 2019 22:16:59 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 1 Dec 2019 22:08:01 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 14:07:07 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 2 Dec 2019 14:07:03 +0800
Message-ID: <1575266838.26513.0.camel@mtksdaap41>
Subject: Re: [PATCH v1 2/6] drm/mediatek: use DRM core's atomic commit helper
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 2 Dec 2019 14:07:18 +0800
In-Reply-To: <20191128024238.9399-3-bibby.hsieh@mediatek.com>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
 <20191128024238.9399-3-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_221725_501348_9E8C9476 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: drinkcat@chromium.org, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tfiga@chromium.org, YT Shen <yt.shen@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Thu, 2019-11-28 at 10:42 +0800, Bibby Hsieh wrote:
> The DRM core atomic helper now supports asynchronous commits natively.
> The custom drm implementation isn't needed anymore, remove it.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

Regards,
CK

> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 86 ++------------------------
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h |  7 ---
>  2 files changed, 5 insertions(+), 88 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 6588dc6dd5e3..16e5771d182e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -36,89 +36,14 @@
>  #define DRIVER_MAJOR 1
>  #define DRIVER_MINOR 0
>  
> -static void mtk_atomic_schedule(struct mtk_drm_private *private,
> -				struct drm_atomic_state *state)
> -{
> -	private->commit.state = state;
> -	schedule_work(&private->commit.work);
> -}
> -
> -static void mtk_atomic_complete(struct mtk_drm_private *private,
> -				struct drm_atomic_state *state)
> -{
> -	struct drm_device *drm = private->drm;
> -
> -	drm_atomic_helper_wait_for_fences(drm, state, false);
> -
> -	/*
> -	 * Mediatek drm supports runtime PM, so plane registers cannot be
> -	 * written when their crtc is disabled.
> -	 *
> -	 * The comment for drm_atomic_helper_commit states:
> -	 *     For drivers supporting runtime PM the recommended sequence is
> -	 *
> -	 *     drm_atomic_helper_commit_modeset_disables(dev, state);
> -	 *     drm_atomic_helper_commit_modeset_enables(dev, state);
> -	 *     drm_atomic_helper_commit_planes(dev, state,
> -	 *                                     DRM_PLANE_COMMIT_ACTIVE_ONLY);
> -	 *
> -	 * See the kerneldoc entries for these three functions for more details.
> -	 */
> -	drm_atomic_helper_commit_modeset_disables(drm, state);
> -	drm_atomic_helper_commit_modeset_enables(drm, state);
> -	drm_atomic_helper_commit_planes(drm, state,
> -					DRM_PLANE_COMMIT_ACTIVE_ONLY);
> -
> -	drm_atomic_helper_wait_for_vblanks(drm, state);
> -
> -	drm_atomic_helper_cleanup_planes(drm, state);
> -	drm_atomic_state_put(state);
> -}
> -
> -static void mtk_atomic_work(struct work_struct *work)
> -{
> -	struct mtk_drm_private *private = container_of(work,
> -			struct mtk_drm_private, commit.work);
> -
> -	mtk_atomic_complete(private, private->commit.state);
> -}
> -
> -static int mtk_atomic_commit(struct drm_device *drm,
> -			     struct drm_atomic_state *state,
> -			     bool async)
> -{
> -	struct mtk_drm_private *private = drm->dev_private;
> -	int ret;
> -
> -	ret = drm_atomic_helper_prepare_planes(drm, state);
> -	if (ret)
> -		return ret;
> -
> -	mutex_lock(&private->commit.lock);
> -	flush_work(&private->commit.work);
> -
> -	ret = drm_atomic_helper_swap_state(state, true);
> -	if (ret) {
> -		mutex_unlock(&private->commit.lock);
> -		drm_atomic_helper_cleanup_planes(drm, state);
> -		return ret;
> -	}
> -
> -	drm_atomic_state_get(state);
> -	if (async)
> -		mtk_atomic_schedule(private, state);
> -	else
> -		mtk_atomic_complete(private, state);
> -
> -	mutex_unlock(&private->commit.lock);
> -
> -	return 0;
> -}
> +static const struct drm_mode_config_helper_funcs mtk_drm_mode_config_helpers = {
> +	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
> +};
>  
>  static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
>  	.fb_create = mtk_drm_mode_fb_create,
>  	.atomic_check = drm_atomic_helper_check,
> -	.atomic_commit = mtk_atomic_commit,
> +	.atomic_commit = drm_atomic_helper_commit,
>  };
>  
>  static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[] = {
> @@ -265,6 +190,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  	drm->mode_config.max_width = 4096;
>  	drm->mode_config.max_height = 4096;
>  	drm->mode_config.funcs = &mtk_drm_mode_config_funcs;
> +	drm->mode_config.helper_private = &mtk_drm_mode_config_helpers;
>  
>  	ret = component_bind_all(drm->dev, drm);
>  	if (ret)
> @@ -540,8 +466,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  	if (!private)
>  		return -ENOMEM;
>  
> -	mutex_init(&private->commit.lock);
> -	INIT_WORK(&private->commit.work, mtk_atomic_work);
>  	private->data = of_device_get_match_data(dev);
>  
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index b6a82728d563..9f4ce60174f6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -46,13 +46,6 @@ struct mtk_drm_private {
>  	struct device_node *comp_node[DDP_COMPONENT_ID_MAX];
>  	struct mtk_ddp_comp *ddp_comp[DDP_COMPONENT_ID_MAX];
>  	const struct mtk_mmsys_driver_data *data;
> -
> -	struct {
> -		struct drm_atomic_state *state;
> -		struct work_struct work;
> -		struct mutex lock;
> -	} commit;
> -
>  	struct drm_atomic_state *suspend_state;
>  
>  	bool dma_parms_allocated;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

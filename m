Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F08EBBC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 02:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duhHYCZIurFUwL2HfZtC8n6Ms+X+yyDX/If63n6HCm0=; b=Iv9ccFMtBfjztw
	/BDV5YntRkC1nN1pFDMX9WiygTSvgWzYPHH8z0yvkoRTCVrLU88bewW8wMgdijGiV4fKY/ca8Bb+9
	p4p7yp8C40Q+48rFFzywNcUQEc62xFfCxyUsicKMOtOmi3gutf3GlBdKFon+KP8FiVseVxnCvzkQg
	tHs36fbZI3H1i7Ze7Z9A3RG/PaZCwJ27j3/1KbehXIhN/kuoIOfBkPrE5Kh+BVuTD9YGd4rje2HHO
	9L8CPtNxOFiXOatc3zkesRaysEpsih6dMe24q0T0Ww6rwef1shGoTb2M6gHFqUB6uWAUuR08FW0vC
	QXg1Ge+YgdmfXdPQsqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQLxU-0000xI-5w; Fri, 01 Nov 2019 01:42:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQLxI-0000wn-HC; Fri, 01 Nov 2019 01:42:26 +0000
X-UUID: 7032ce091e7f4d6f9c9657c3b3a84692-20191031
X-UUID: 7032ce091e7f4d6f9c9657c3b3a84692-20191031
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1337969759; Thu, 31 Oct 2019 17:41:48 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 31 Oct 2019 18:42:15 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 1 Nov 2019 09:42:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 1 Nov 2019 09:42:13 +0800
Message-ID: <1572572537.10339.12.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: covert to helper nonblocking atomic commit
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 1 Nov 2019 09:42:17 +0800
In-Reply-To: <20191025053843.16808-1-bibby.hsieh@mediatek.com>
References: <20191025053843.16808-1-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_184224_576449_FA6E4624 
X-CRM114-Status: GOOD (  22.38  )
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

On Fri, 2019-10-25 at 13:38 +0800, Bibby Hsieh wrote:
> In order to commit state asynchronously, we change
> .atomic_commit to drm_atomic_helper_commit().
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 11 ++++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 86 ++-----------------------
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  7 --
>  3 files changed, 16 insertions(+), 88 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index b97eb5f58483..b07dc9b59ca3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -317,6 +317,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  {
>  	struct drm_device *drm = mtk_crtc->base.dev;
> +	struct drm_crtc *crtc = &mtk_crtc->base;
>  	int i;
>  
>  	DRM_DEBUG_DRIVER("%s\n", __func__);
> @@ -340,6 +341,13 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  	mtk_disp_mutex_unprepare(mtk_crtc->mutex);
>  
>  	pm_runtime_put(drm->dev);
> +
> +	if (crtc->state->event && !crtc->state->active) {
> +		spin_lock_irq(&crtc->dev->event_lock);
> +		drm_crtc_send_vblank_event(crtc, crtc->state->event);
> +		crtc->state->event = NULL;
> +		spin_unlock_irq(&crtc->dev->event_lock);
> +	}

This part looks like a bug fix. When the power is off, the latest event
may not process yet. So just send it here. But in
mtk_drm_crtc_atomic_disable(), it already wait for a vblank, why the
latest event has not processed yet?

>  }
>  
>  static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> @@ -456,12 +464,15 @@ static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
>  	if (mtk_crtc->event && state->base.event)
>  		DRM_ERROR("new event while there is still a pending event\n");
>  
> +	spin_lock_irq(&crtc->dev->event_lock);
>  	if (state->base.event) {
>  		state->base.event->pipe = drm_crtc_index(crtc);
>  		WARN_ON(drm_crtc_vblank_get(crtc) != 0);
> +		WARN_ON(mtk_crtc->event);
>  		mtk_crtc->event = state->base.event;
>  		state->base.event = NULL;
>  	}
> +	spin_unlock_irq(&crtc->dev->event_lock);

This part is a bug fix. The 'event' variable would be access by thread
context in mtk_drm_crtc_atomic_begin() or by interrupt context in
mtk_drm_crtc_finish_page_flip(), so each part should be a critical
section. Move this to an independent patch.

>  }
>  
>  static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
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

This does not like what the title describe. You just change
atomic_commit implementation from mtk version to helper version. Even
though we don't implement nonblocking atomic commit, this modification
is also necessary because this would reduce the duplicated code in
mediatek drm driver.

Regards,
CK

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

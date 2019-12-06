Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EE8114AA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 02:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZdy0z8b2ks/JYoqAe+OnIU5HNzw3cSyZg2jH+Hk3h0=; b=ost11KtBzw0sTA
	aO6I/s8jXnRydT6rWE6mR1JVccfFKmvgjVTfFr+ZVjv0b6wJltFyvVCcS3BMZdUbb/FeeGLPBeOKO
	k1bLOBoz7TfuTd8mEuTJHn3Xua8xafexOIpO0hqHdfQgJavaSgpcoTeb3dGtenuXlqO+ui60iDnji
	eDkF5yuya+jo1GXUrKORGjn/OYS/HTcDiJCajYL+jin/RAtH/6tnSQYFwC+5f9M/4jB1Tx/aXstt3
	kOkzwa+k373IHdts8oATHgMjVBBC97PZBEit8Tg9VFaoOaDhlMHmatvWrw/uTUBAgGuJgsz38Ar1i
	FFbcmn5eUM04SJiGYaVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id2oY-0003Yc-PZ; Fri, 06 Dec 2019 01:53:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id2oO-0003XF-U1; Fri, 06 Dec 2019 01:53:43 +0000
X-UUID: a0be2f8da01347d393ae63a4a9d6e8a4-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=jVdei8kEhQqvWDbojUUbf3BzPXg7IZhv39AxBXjp1jc=; 
 b=hj6r76XP5T6r1vF1KtFy0DIdX6RuxhwBuE3HxTy238PU1oeT6/IW8tzl8CpwVipAFwAfUacQZJPwjV6ulMXfCrXCAuDNTjQjYdGuGjDA3KYuv+JtA2cbsZOTMGfDbqV9tD8CgVnwoLSkB2A0A3wR+Gxak0n2VJdTSlDdgDFK7as=;
X-UUID: a0be2f8da01347d393ae63a4a9d6e8a4-20191205
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 672301807; Thu, 05 Dec 2019 17:53:35 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 17:54:27 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 09:53:14 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Dec 2019 09:53:18 +0800
Message-ID: <1575597212.6328.0.camel@mtksdaap41>
Subject: Re: [PATCH v4 3/7] drm/mediatek: update cursors by using async
 atomic update
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 6 Dec 2019 09:53:32 +0800
In-Reply-To: <20191205092749.4021-4-bibby.hsieh@mediatek.com>
References: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
 <20191205092749.4021-4-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_175340_983760_0728DE0B 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 2019-12-05 at 17:27 +0800, Bibby Hsieh wrote:
> Support to async updates of cursors by using the new atomic
> interface for that.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 98 +++++++++++++++++++-----
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.h  |  2 +
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 47 ++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_plane.h |  2 +
>  4 files changed, 128 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 4bc52346093d..e887a6877bcd 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -41,12 +41,16 @@ struct mtk_drm_crtc {
>  	struct drm_plane		*planes;
>  	unsigned int			layer_nr;
>  	bool				pending_planes;
> +	bool				pending_async_planes;
>  
>  	void __iomem			*config_regs;
>  	const struct mtk_mmsys_reg_data *mmsys_reg_data;
>  	struct mtk_disp_mutex		*mutex;
>  	unsigned int			ddp_comp_nr;
>  	struct mtk_ddp_comp		**ddp_comp;
> +
> +	/* lock for display hardware access */
> +	struct mutex			hw_lock;
>  };
>  
>  struct mtk_crtc_state {
> @@ -415,6 +419,63 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  		}
>  		mtk_crtc->pending_planes = false;
>  	}
> +
> +	if (mtk_crtc->pending_async_planes) {
> +		for (i = 0; i < mtk_crtc->layer_nr; i++) {
> +			struct drm_plane *plane = &mtk_crtc->planes[i];
> +			struct mtk_plane_state *plane_state;
> +
> +			plane_state = to_mtk_plane_state(plane->state);
> +
> +			if (!plane_state->pending.async_config)
> +				continue;
> +
> +			comp = mtk_drm_ddp_comp_for_plane(crtc, plane,
> +							  &local_layer);
> +
> +			if (comp)
> +				mtk_ddp_comp_layer_config(comp, local_layer,
> +							  plane_state);
> +			plane_state->pending.async_config = false;
> +		}
> +		mtk_crtc->pending_async_planes = false;
> +	}
> +}
> +
> +static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
> +{
> +	struct drm_crtc *crtc = &mtk_crtc->base;
> +	struct mtk_drm_private *priv = crtc->dev->dev_private;
> +	unsigned int pending_planes = 0, pending_async_planes = 0;
> +	int i;
> +
> +	mutex_lock(&mtk_crtc->hw_lock);
> +	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> +		struct drm_plane *plane = &mtk_crtc->planes[i];
> +		struct mtk_plane_state *plane_state;
> +
> +		plane_state = to_mtk_plane_state(plane->state);
> +		if (plane_state->pending.dirty) {
> +			plane_state->pending.config = true;
> +			plane_state->pending.dirty = false;
> +			pending_planes |= BIT(i);
> +		} else if (plane_state->pending.async_dirty) {
> +			plane_state->pending.async_config = true;
> +			plane_state->pending.async_dirty = false;
> +			pending_async_planes |= BIT(i);
> +		}
> +	}
> +	if (pending_planes)
> +		mtk_crtc->pending_planes = true;
> +	if (pending_async_planes)
> +		mtk_crtc->pending_async_planes = true;
> +
> +	if (priv->data->shadow_register) {
> +		mtk_disp_mutex_acquire(mtk_crtc->mutex);
> +		mtk_crtc_ddp_config(crtc);
> +		mtk_disp_mutex_release(mtk_crtc->mutex);
> +	}
> +	mutex_unlock(&mtk_crtc->hw_lock);
>  }
>  
>  int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
> @@ -429,6 +490,20 @@ int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
>  	return 0;
>  }
>  
> +void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
> +			       struct drm_plane_state *new_state)
> +{
> +	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> +	const struct drm_plane_helper_funcs *plane_helper_funcs =
> +			plane->helper_private;
> +
> +	if (!mtk_crtc->enabled)
> +		return;
> +
> +	plane_helper_funcs->atomic_update(plane, new_state);
> +	mtk_drm_crtc_hw_config(mtk_crtc);
> +}
> +
>  static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
>  				       struct drm_crtc_state *old_state)
>  {
> @@ -510,34 +585,14 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
>  				      struct drm_crtc_state *old_crtc_state)
>  {
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> -	struct mtk_drm_private *priv = crtc->dev->dev_private;
> -	unsigned int pending_planes = 0;
>  	int i;
>  
>  	if (mtk_crtc->event)
>  		mtk_crtc->pending_needs_vblank = true;
> -	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> -		struct drm_plane *plane = &mtk_crtc->planes[i];
> -		struct mtk_plane_state *plane_state;
> -
> -		plane_state = to_mtk_plane_state(plane->state);
> -		if (plane_state->pending.dirty) {
> -			plane_state->pending.config = true;
> -			plane_state->pending.dirty = false;
> -			pending_planes |= BIT(i);
> -		}
> -	}
> -	if (pending_planes)
> -		mtk_crtc->pending_planes = true;
>  	if (crtc->state->color_mgmt_changed)
>  		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
>  			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i], crtc->state);
> -
> -	if (priv->data->shadow_register) {
> -		mtk_disp_mutex_acquire(mtk_crtc->mutex);
> -		mtk_crtc_ddp_config(crtc);
> -		mtk_disp_mutex_release(mtk_crtc->mutex);
> -	}
> +	mtk_drm_crtc_hw_config(mtk_crtc);
>  }
>  
>  static const struct drm_crtc_funcs mtk_crtc_funcs = {
> @@ -729,6 +784,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
>  	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
>  	priv->num_pipes++;
> +	mutex_init(&mtk_crtc->hw_lock);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> index 6afe1c19557a..a2b4677a451c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> @@ -21,5 +21,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  			unsigned int path_len);
>  int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
>  			     struct mtk_plane_state *state);
> +void mtk_drm_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
> +			       struct drm_plane_state *plane_state);
>  
>  #endif /* MTK_DRM_CRTC_H */
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index cd7c97eb7ee6..a6a7cb1f4eeb 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -7,6 +7,7 @@
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_fourcc.h>
> +#include <drm/drm_atomic_uapi.h>
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
>  
> @@ -70,6 +71,50 @@ static void mtk_drm_plane_destroy_state(struct drm_plane *plane,
>  	kfree(to_mtk_plane_state(state));
>  }
>  
> +static int mtk_plane_atomic_async_check(struct drm_plane *plane,
> +					struct drm_plane_state *state)
> +{
> +	struct drm_crtc_state *crtc_state;
> +
> +	if (plane != state->crtc->cursor)
> +		return -EINVAL;
> +
> +	if (!plane->state)
> +		return -EINVAL;
> +
> +	if (!plane->state->fb)
> +		return -EINVAL;
> +
> +	if (state->state)
> +		crtc_state = drm_atomic_get_existing_crtc_state(state->state,
> +								state->crtc);
> +	else /* Special case for asynchronous cursor updates. */
> +		crtc_state = state->crtc->state;
> +
> +	return drm_atomic_helper_check_plane_state(plane->state, crtc_state,
> +						   DRM_PLANE_HELPER_NO_SCALING,
> +						   DRM_PLANE_HELPER_NO_SCALING,
> +						   true, true);
> +}
> +
> +static void mtk_plane_atomic_async_update(struct drm_plane *plane,
> +					  struct drm_plane_state *new_state)
> +{
> +	struct mtk_plane_state *state = to_mtk_plane_state(plane->state);
> +
> +	plane->state->crtc_x = new_state->crtc_x;
> +	plane->state->crtc_y = new_state->crtc_y;
> +	plane->state->crtc_h = new_state->crtc_h;
> +	plane->state->crtc_w = new_state->crtc_w;
> +	plane->state->src_x = new_state->src_x;
> +	plane->state->src_y = new_state->src_y;
> +	plane->state->src_h = new_state->src_h;
> +	plane->state->src_w = new_state->src_w;
> +	state->pending.async_dirty = true;
> +
> +	mtk_drm_crtc_async_update(new_state->crtc, plane, new_state);
> +}
> +
>  static const struct drm_plane_funcs mtk_plane_funcs = {
>  	.update_plane = drm_atomic_helper_update_plane,
>  	.disable_plane = drm_atomic_helper_disable_plane,
> @@ -158,6 +203,8 @@ static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
>  	.atomic_check = mtk_plane_atomic_check,
>  	.atomic_update = mtk_plane_atomic_update,
>  	.atomic_disable = mtk_plane_atomic_disable,
> +	.atomic_async_update = mtk_plane_atomic_async_update,
> +	.atomic_async_check = mtk_plane_atomic_async_check,
>  };
>  
>  int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> index 760885e35b27..d454bece9535 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> @@ -22,6 +22,8 @@ struct mtk_plane_pending_state {
>  	unsigned int			height;
>  	unsigned int			rotation;
>  	bool				dirty;
> +	bool				async_dirty;
> +	bool				async_config;
>  };
>  
>  struct mtk_plane_state {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

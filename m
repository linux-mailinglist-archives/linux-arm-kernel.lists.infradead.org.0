Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C062F10E7FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:52:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3XJru3i3U1oOZz9P8IOzDoi29TQJADmFbXsVaHTe38=; b=jQsS1WgG4Sgo0K
	x1hUxqSVdxxqr3D6FE+xcsdQy9+Tpms36zjSzu0yWtfmBwEzlI3hQNS/ENMY01CSNQi8NbCWnip3V
	AUnetoS4+JeHFq2C4WHhBcld21boUSZGzJaT9fFOIvK0ST9pxa2anIZ+O14zOr0vli0uIUhaNdRtt
	5VBaN7qJG5nxNE/Rri/tXti9N/Hjp53y5zWGy7HpxIFDIVuSJGyM2IMggyqX9nAmF7DTcACKkzsr2
	JOjK5IC8Q+xxDJSi++eFHsZqy+mjiEoO+uCNxUzd2tAJxLEPMhQCsklSOK4yu24fhIpDdjBpb8OOr
	Hw5gRcz7RK1mKThqAxbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiNG-0007Ok-9X; Mon, 02 Dec 2019 09:52:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiN8-0007O4-DC; Mon, 02 Dec 2019 09:52:04 +0000
X-UUID: 1098bc5e2c274cadbb54ebe95c02bdba-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=A3ws5GGEKRqOLU1wWYe6/80BETyiRzq/ioApqkBTwMQ=; 
 b=fKz+uUWsCOHubUK9lTVtj1V2zlUFFikeTk8Qc8JTkfCREj+t1xy57G2HlCF7fhe1r2GylP62S8/ru+Xc0qTGGhUtCOug1OfMI6nqoHlpbdKWbWq8wSexQVkM6hyZqN5vstNEk1QYWXFNDS0rcOfwlQ4rWgPQBlmRtGscUhseIck=;
X-UUID: 1098bc5e2c274cadbb54ebe95c02bdba-20191202
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 85731809; Mon, 02 Dec 2019 01:51:56 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 01:52:06 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 17:51:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 2 Dec 2019 17:51:37 +0800
Message-ID: <1575280313.19176.1.camel@mtksdaap41>
Subject: Re: [PATCH v1 4/6] drm/mediatek: update cursors by using async
 atomic update
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 2 Dec 2019 17:51:53 +0800
In-Reply-To: <20191128024238.9399-5-bibby.hsieh@mediatek.com>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
 <20191128024238.9399-5-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_015202_465123_2559AD79 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
> Support to async updates of cursors by using the new atomic
> interface for that.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 35 +++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.h  |  2 +
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 22 ++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h   |  2 +
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 50 ++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_plane.h |  2 +
>  6 files changed, 112 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index cb87a538b8ff..b26b7a98587b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -422,6 +422,41 @@ int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
>  	return 0;
>  }
>  
> +void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
> +				struct drm_plane_state *new_state)

I do not like to use 'cursor' for naming. The async function may be not
just used for cursor. The name 'async' is more general.

> +{
> +	struct mtk_drm_private *priv = crtc->dev->dev_private;
> +	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> +	const struct drm_plane_helper_funcs *plane_helper_funcs =
> +			plane->helper_private;
> +	int i;
> +
> +	if (!mtk_crtc->enabled)
> +		return;
> +
> +	mutex_lock(&priv->hw_lock);

Please make sure what variable you want to protect, and make critical
section smaller.

> +	plane_helper_funcs->atomic_update(plane, new_state);
> +
> +	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> +		struct drm_plane *plane = &mtk_crtc->planes[i];
> +		struct mtk_plane_state *plane_state;
> +
> +		plane_state = to_mtk_plane_state(plane->state);
> +		if (plane_state->pending.cursor_dirty) {
> +			plane_state->pending.config = true;
> +			plane_state->pending.cursor_update = false;
> +			plane_state->pending.cursor_dirty = false;
> +		}
> +	}
> +	mtk_crtc->pending_planes = true;
> +	if (priv->data->shadow_register) {
> +		mtk_disp_mutex_acquire(mtk_crtc->mutex);
> +		mtk_crtc_ddp_config(crtc);
> +		mtk_disp_mutex_release(mtk_crtc->mutex);
> +	}
> +	mutex_unlock(&priv->hw_lock);
> +}
> +
>  static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
>  				       struct drm_crtc_state *old_state)
>  {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> index 6afe1c19557a..d57958f0b7b5 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> @@ -21,5 +21,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  			unsigned int path_len);
>  int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
>  			     struct mtk_plane_state *state);
> +void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
> +				struct drm_plane_state *plane_state);
>  
>  #endif /* MTK_DRM_CRTC_H */
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 16e5771d182e..0f7fbb68295d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -36,8 +36,27 @@
>  #define DRIVER_MAJOR 1
>  #define DRIVER_MINOR 0
>  
> +static void
> +mtk_drm_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
> +{
> +	struct drm_device *dev = old_state->dev;
> +	struct mtk_drm_private *private = dev->dev_private;
> +
> +	drm_atomic_helper_wait_for_fences(dev, old_state, false);
> +	mutex_lock(&private->hw_lock);
> +	drm_atomic_helper_commit_modeset_disables(dev, old_state);
> +	drm_atomic_helper_commit_modeset_enables(dev, old_state);
> +	drm_atomic_helper_commit_planes(dev, old_state,
> +					DRM_PLANE_COMMIT_ACTIVE_ONLY);
> +	mutex_unlock(&private->hw_lock);

You implement mtk version just want to add mutex protect. But I think
you should not protect here because what you should protect is the
common variable touched by sync plane and async plane. In
mtk_drm_crtc_cursor_update(), you already know what is the variable you
need to protect, and these variable is touched in
mtk_drm_crtc_atomic_flush() or mtk_plane_atomic_update(), so I think you
should just protect inside these function and need not to implement this
function.

Regards,
CK

> +	drm_atomic_helper_fake_vblank(old_state);
> +	drm_atomic_helper_commit_hw_done(old_state);
> +	drm_atomic_helper_wait_for_vblanks(dev, old_state);
> +	drm_atomic_helper_cleanup_planes(dev, old_state);
> +}
> +
>  static const struct drm_mode_config_helper_funcs mtk_drm_mode_config_helpers = {
> -	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
> +	.atomic_commit_tail = mtk_drm_atomic_helper_commit_tail_rpm,
>  };
>  
>  static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
> @@ -262,6 +281,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
>  
>  	drm_kms_helper_poll_init(drm);
>  	drm_mode_config_reset(drm);
> +	mutex_init(&private->hw_lock);
>  
>  	return 0;
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index 9f4ce60174f6..c61adaa92626 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -48,6 +48,8 @@ struct mtk_drm_private {
>  	const struct mtk_mmsys_driver_data *data;
>  	struct drm_atomic_state *suspend_state;
>  
> +	/* lock for display hw access */
> +	struct mutex hw_lock;
>  	bool dma_parms_allocated;
>  };
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index cd7c97eb7ee6..d7a8853d94a1 100644
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
> +	state->pending.cursor_update = true;
> +
> +	mtk_drm_crtc_cursor_update(new_state->crtc, plane, new_state);
> +}
> +
>  static const struct drm_plane_funcs mtk_plane_funcs = {
>  	.update_plane = drm_atomic_helper_update_plane,
>  	.disable_plane = drm_atomic_helper_disable_plane,
> @@ -141,6 +186,9 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
>  	state->pending.rotation = plane->state->rotation;
>  	wmb(); /* Make sure the above parameters are set before update */
>  	state->pending.dirty = true;
> +
> +	if (state->pending.cursor_update)
> +		state->pending.cursor_dirty = true;
>  }
>  
>  static void mtk_plane_atomic_disable(struct drm_plane *plane,
> @@ -158,6 +206,8 @@ static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
>  	.atomic_check = mtk_plane_atomic_check,
>  	.atomic_update = mtk_plane_atomic_update,
>  	.atomic_disable = mtk_plane_atomic_disable,
> +	.atomic_async_update = mtk_plane_atomic_async_update,
> +	.atomic_async_check = mtk_plane_atomic_async_check,
>  };
>  
>  int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> index 760885e35b27..113a10344805 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> @@ -22,6 +22,8 @@ struct mtk_plane_pending_state {
>  	unsigned int			height;
>  	unsigned int			rotation;
>  	bool				dirty;
> +	bool				cursor_dirty;
> +	bool				cursor_update;
>  };
>  
>  struct mtk_plane_state {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

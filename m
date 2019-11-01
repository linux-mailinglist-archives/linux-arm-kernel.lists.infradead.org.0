Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F31AEBC63
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INICMeZbBhcRJImDsgD+9hRCFJB4eKN6mMDzPa2QSQc=; b=CSurEQaTYobVoA
	cZaxq9OvJ3+7yvc3bcQi/cRDXhhZNp6sSMOCvt8OSxDjMi0H4jKL8Am30d0dnYd7D/g6ugzONSTUF
	LCA0E37jFJUt2v6ECtR9pcofvrYavGnoG2M7AM15B917fy66bgcSV3sLKPBv+FaUZG4mnc5B3gWLk
	X4npn12yvyomkvW58HCtHoiBJ9x/5phvUhQpaMt9XZsClAOfZbm7g4kaAQQW8cXXIMNz5peA6oHZH
	jKc35oX31B07oTP4iS/su5Ck99BE3fcbVg5L9KyGRrGWez4/U6CWCmUirLKQGLV5/yy5fvKRvjJw/
	lgK6Ni3IJXFu/f87bShQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNhA-0007QB-34; Fri, 01 Nov 2019 03:33:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNgv-0007Pc-HN; Fri, 01 Nov 2019 03:33:41 +0000
X-UUID: 9cba81f970364f6b90095b4c119c4c6d-20191031
X-UUID: 9cba81f970364f6b90095b4c119c4c6d-20191031
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1240065181; Thu, 31 Oct 2019 19:32:39 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 31 Oct 2019 20:33:23 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 1 Nov 2019 11:33:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 1 Nov 2019 11:33:22 +0800
Message-ID: <1572579206.1728.2.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: update cursors by using async atomic update
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 1 Nov 2019 11:33:26 +0800
In-Reply-To: <20191025053843.16808-2-bibby.hsieh@mediatek.com>
References: <20191025053843.16808-1-bibby.hsieh@mediatek.com>
 <20191025053843.16808-2-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_203337_585836_08D05C17 
X-CRM114-Status: GOOD (  14.99  )
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
> Support to async updates of cursors by using the new atomic
> interface for that.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 32 +++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.h  |  3 ++
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 44 ++++++++++++++++++++++++
>  3 files changed, 79 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index b07dc9b59ca3..3c96178bd559 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -395,6 +395,38 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>  	}
>  }
>  
> +void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
> +				struct drm_plane_state *new_state)
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
> +	plane_helper_funcs->atomic_update(plane, new_state);
> +
> +	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> +		struct drm_plane *plane = &mtk_crtc->planes[i];
> +		struct mtk_plane_state *plane_state;
> +
> +		plane_state = to_mtk_plane_state(plane->state);
> +		if (plane_state->pending.dirty) {
> +			plane_state->pending.config = true;
> +			plane_state->pending.dirty = false;

You do this for all plane but I think you should only do this for this
plane. Other plane should do this only when atomic_flush.

Regards,
CK

> +		}
> +	}
> +	mtk_crtc->pending_planes = true;
> +	if (priv->data->shadow_register) {
> +		mtk_disp_mutex_acquire(mtk_crtc->mutex);
> +		mtk_crtc_ddp_config(crtc);
> +		mtk_disp_mutex_release(mtk_crtc->mutex);
> +	}
> +}
> +
>  static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
>  				       struct drm_crtc_state *old_state)
>  {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> index fcc134eb00c9..e65d58db201d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
> @@ -20,4 +20,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  			const enum mtk_ddp_comp_id *path,
>  			unsigned int path_len);
>  
> +void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
> +				struct drm_plane_state *plane_state);
> +
>  #endif /* MTK_DRM_CRTC_H */
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 584a9ecadce6..f0e91ecb3b4c 100644
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
> @@ -70,6 +71,47 @@ static void mtk_drm_plane_destroy_state(struct drm_plane *plane,
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
> +	plane->state->crtc_x = new_state->crtc_x;
> +	plane->state->crtc_y = new_state->crtc_y;
> +	plane->state->crtc_h = new_state->crtc_h;
> +	plane->state->crtc_w = new_state->crtc_w;
> +	plane->state->src_x = new_state->src_x;
> +	plane->state->src_y = new_state->src_y;
> +	plane->state->src_h = new_state->src_h;
> +	plane->state->src_w = new_state->src_w;
> +
> +	mtk_drm_crtc_cursor_update(new_state->crtc, plane, new_state);
> +}
> +
>  static const struct drm_plane_funcs mtk_plane_funcs = {
>  	.update_plane = drm_atomic_helper_update_plane,
>  	.disable_plane = drm_atomic_helper_disable_plane,
> @@ -151,6 +193,8 @@ static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
>  	.atomic_check = mtk_plane_atomic_check,
>  	.atomic_update = mtk_plane_atomic_update,
>  	.atomic_disable = mtk_plane_atomic_disable,
> +	.atomic_async_update = mtk_plane_atomic_async_update,
> +	.atomic_async_check = mtk_plane_atomic_async_check,
>  };
>  
>  int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

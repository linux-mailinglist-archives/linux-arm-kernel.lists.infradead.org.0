Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4F479AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 07:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpWhVe4wn2U/8QsD7QAyRK0sR5c3N9ii7indkGGTZIE=; b=slyY+74iNLDgBP
	wkGoZJSeiDv8fpfUosFkP9gbc4WV4Lyd/iUqoZef7FlGWTOqPUH8t49QjN9Ow8qY01eXoWLUnlHrD
	MMotEOWgNVRYVYk3vJszHaFPphmE3VME232JWD1DHj90CWpentMba9UYXe0g6+5nQSH1luZImgKxN
	r85PEpsLDoLuHqhlli8gdYmpM2TYIRdpmJbwYxB8px0suB1NciPayiVJjvNLdxlTBd4f9s/kzx/tP
	z4Ubc/gotg25VbWHdJ1SgOFhKkQRrZKsae/zs7JXO2GViptfwudk/XatnzOANbjSSYdaiRpFRhObB
	aMqImOfSkQDW1BDFhejA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hck3g-00021o-Jk; Mon, 17 Jun 2019 05:19:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hck3T-00020K-3t; Mon, 17 Jun 2019 05:19:45 +0000
X-UUID: 8e1b63b243104fb0a82c4d8602375f29-20190616
X-UUID: 8e1b63b243104fb0a82c4d8602375f29-20190616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1542709060; Sun, 16 Jun 2019 21:19:35 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Jun 2019 22:19:33 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 13:19:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Jun 2019 13:19:31 +0800
Message-ID: <1560748771.16762.0.camel@mtksdaap41>
Subject: Re: [PATCH 44/59] drm/mediatek: Use drm_atomic_helper_wait_for_fences
From: CK Hu <ck.hu@mediatek.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 17 Jun 2019 13:19:31 +0800
In-Reply-To: <20190614203615.12639-45-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-45-daniel.vetter@ffwll.ch>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_221943_164545_8F281DEB 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel:

On Fri, 2019-06-14 at 22:36 +0200, Daniel Vetter wrote:
> If we use the gem fb helper as the prepare_fb hook, plus the
> drm_prime.c import helpers now automatically setting obj->resv, we can
> use the shared helpers to wait for fences instead of rolling our own.
> Note that this relies on mtk setting drm_fb->obj, which is already
> done in mtk_drm_framebuffer_init().

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Aside: Probably can use the default commit_tail with this again, but I
> didn't check for that.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: CK Hu <ck.hu@mediatek.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 12 +---------
>  drivers/gpu/drm/mediatek/mtk_drm_fb.c    | 28 ------------------------
>  drivers/gpu/drm/mediatek/mtk_drm_fb.h    |  1 -
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c |  2 ++
>  4 files changed, 3 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index dd8dab562500..2d5caf532431 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -38,22 +38,12 @@ static void mtk_atomic_schedule(struct mtk_drm_private *private,
>  	schedule_work(&private->commit.work);
>  }
>  
> -static void mtk_atomic_wait_for_fences(struct drm_atomic_state *state)
> -{
> -	struct drm_plane *plane;
> -	struct drm_plane_state *new_plane_state;
> -	int i;
> -
> -	for_each_new_plane_in_state(state, plane, new_plane_state, i)
> -		mtk_fb_wait(new_plane_state->fb);
> -}
> -
>  static void mtk_atomic_complete(struct mtk_drm_private *private,
>  				struct drm_atomic_state *state)
>  {
>  	struct drm_device *drm = private->drm;
>  
> -	mtk_atomic_wait_for_fences(state);
> +	drm_atomic_helper_wait_for_fences(drm, state, false);
>  
>  	/*
>  	 * Mediatek drm supports runtime PM, so plane registers cannot be
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> index 4c3ad7de2d3b..396ba497986d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> @@ -49,34 +49,6 @@ static struct drm_framebuffer *mtk_drm_framebuffer_init(struct drm_device *dev,
>  	return fb;
>  }
>  
> -/*
> - * Wait for any exclusive fence in fb's gem object's reservation object.
> - *
> - * Returns -ERESTARTSYS if interrupted, else 0.
> - */
> -int mtk_fb_wait(struct drm_framebuffer *fb)
> -{
> -	struct drm_gem_object *gem;
> -	struct reservation_object *resv;
> -	long ret;
> -
> -	if (!fb)
> -		return 0;
> -
> -	gem = fb->obj[0];
> -	if (!gem || !gem->dma_buf || !gem->dma_buf->resv)
> -		return 0;
> -
> -	resv = gem->dma_buf->resv;
> -	ret = reservation_object_wait_timeout_rcu(resv, false, true,
> -						  MAX_SCHEDULE_TIMEOUT);
> -	/* MAX_SCHEDULE_TIMEOUT on success, -ERESTARTSYS if interrupted */
> -	if (WARN_ON(ret < 0))
> -		return ret;
> -
> -	return 0;
> -}
> -
>  struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
>  					       struct drm_file *file,
>  					       const struct drm_mode_fb_cmd2 *cmd)
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.h b/drivers/gpu/drm/mediatek/mtk_drm_fb.h
> index 6b80c28e33cf..eb64d26001c6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.h
> @@ -6,7 +6,6 @@
>  #ifndef MTK_DRM_FB_H
>  #define MTK_DRM_FB_H
>  
> -int mtk_fb_wait(struct drm_framebuffer *fb);
>  struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
>  					       struct drm_file *file,
>  					       const struct drm_mode_fb_cmd2 *cmd);
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index f2ef83aed6f9..42cc9823eaaa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -8,6 +8,7 @@
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_plane_helper.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
>  
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -146,6 +147,7 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
>  }
>  
>  static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
> +	.prepare_fb = drm_gem_fb_prepare_fb,
>  	.atomic_check = mtk_plane_atomic_check,
>  	.atomic_update = mtk_plane_atomic_update,
>  	.atomic_disable = mtk_plane_atomic_disable,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

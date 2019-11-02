Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B56ECC56
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 01:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxHar4cYh1FcABU9pjyEfToKk5p7GWfzvjB2q7AGMSg=; b=loGHhwfz57jn3F
	WVk5SmVRu/GrkdQrNyX8zQTpZjgYCv3x4N2B12YDVAdPRrfbWNmNrygEgk/wLq43yePABSSxU8f8J
	pxMGBwV12vD2mcyGOipANdjnMNXUPEAopmDqq6M9pr7J+KGzHWiYvDwzWuEUnjur+B0OzSxhcKPul
	ffhZDXePJtz4q5VQ7lw+zL9byY0mFBLLz5skisQi0+6jDMsnw8XTJSbDTuOI06S4d1GsXrgU+OjKU
	pLJd2JkNLmCLq3yRtKJVTlv3Uxz31MA2JqWwgeuw338CBbN/knS+UKqH2kwnELzSM3ekmOJsQIPWA
	Sbd2B9lC0g6OVbx/mmqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQhEh-0008L8-Ms; Sat, 02 Nov 2019 00:25:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQhEZ-0008Jj-AS; Sat, 02 Nov 2019 00:25:41 +0000
X-UUID: c6bc90a570244596b55882643dc9dd2a-20191101
X-UUID: c6bc90a570244596b55882643dc9dd2a-20191101
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 333636974; Fri, 01 Nov 2019 16:25:42 -0800
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 1 Nov 2019 17:25:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkexhb01.mediatek.inc (172.21.101.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 2 Nov 2019 08:25:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 2 Nov 2019 08:25:18 +0800
Message-ID: <1572654319.24679.4.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Support reflect-y plane rotation
From: CK Hu <ck.hu@mediatek.com>
To: Sean Paul <sean@poorly.run>
Date: Sat, 2 Nov 2019 08:25:19 +0800
In-Reply-To: <20191101132647.189033-1-sean@poorly.run>
References: <20191101132647.189033-1-sean@poorly.run>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_172539_365976_B2609C20 
X-CRM114-Status: GOOD (  20.84  )
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
Cc: Daniele Castagna <dcastagna@chromium.org>, dri-devel@lists.freedesktop.org,
 Matthias
 Brugger <matthias.bgg@gmail.com>, Miguel Casas <mcasas@chromium.org>,
 Sean Paul <seanpaul@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fritz Koenig <frkoenig@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Sean:

On Fri, 2019-11-01 at 09:26 -0400, Sean Paul wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> Expose the rotation property and handle REFLECT_Y rotations.
> 
> Cc: Fritz Koenig <frkoenig@chromium.org>
> Cc: Daniele Castagna <dcastagna@chromium.org>
> Cc: Miguel Casas <mcasas@chromium.org>
> Cc: Mark Yacoub <markyacoub@google.com>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
> 
> The hardware also supports REFLECT_X, but I just could not figure out
> how to get it working. If someone is interested in getting this going,
> I'm happy to share notes and my WIP patch. For now, though, I actually
> only need y-flip so I'm giving up on x-flip.

Does [1] give you any hint for x-flip, or that patch is incorrect?

[1]
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1533519

> 
> 
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c  |  6 ++++++
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 11 ++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_plane.h |  1 +
>  3 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 14878ebf59d7..6505479ee506 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -50,6 +50,7 @@
>  					OVL_CON_CLRFMT_RGB : 0)
>  #define	OVL_CON_AEN		BIT(8)
>  #define	OVL_CON_ALPHA		0xff
> +#define	OVL_CON_VIRT_FLIP	BIT(9)
>  
>  struct mtk_disp_ovl_data {
>  	unsigned int addr;
> @@ -229,6 +230,11 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	if (idx != 0)
>  		con |= OVL_CON_AEN | OVL_CON_ALPHA;
>  
> +	if (pending->rotation & DRM_MODE_REFLECT_Y) {
> +		con |= OVL_CON_VIRT_FLIP;
> +		addr += (pending->height - 1) * pending->pitch;
> +	}
> +
>  	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
>  	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
>  	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 584a9ecadce6..4d8f2b55334b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -88,6 +88,9 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
>  	if (!fb)
>  		return 0;
>  
> +	if (fb->format->is_yuv && (state->rotation & ~DRM_MODE_ROTATE_0) != 0)
> +		return -EINVAL;

If this patch does not support all color format, please describe what
color format does this patch support, so others could try to make the
rest color format work.

Regards,
CK

> +
>  	if (!state->crtc)
>  		return 0;
>  
> @@ -132,6 +135,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
>  	state->pending.y = plane->state->dst.y1;
>  	state->pending.width = drm_rect_width(&plane->state->dst);
>  	state->pending.height = drm_rect_height(&plane->state->dst);
> +	state->pending.rotation = plane->state->rotation;
>  	wmb(); /* Make sure the above parameters are set before update */
>  	state->pending.dirty = true;
>  }
> @@ -166,7 +170,12 @@ int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
>  		return err;
>  	}
>  
> -	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
> +	err = drm_plane_create_rotation_property(plane, 0,
> +						 DRM_MODE_ROTATE_0 |
> +						 DRM_MODE_REFLECT_Y);
> +	if (err)
> +		DRM_INFO("Create rotation property failed, continuing...\n");
>  
> +	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> index 6f842df722c7..83b634a997cc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> @@ -20,6 +20,7 @@ struct mtk_plane_pending_state {
>  	unsigned int			y;
>  	unsigned int			width;
>  	unsigned int			height;
> +	unsigned int			rotation;
>  	bool				dirty;
>  };
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

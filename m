Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F39EA4135
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 02:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEs3lNhktDUvuR2vLeAk/HxkuMMX9L2f1R7AzJzvW+g=; b=Nf0oZNZaKq96EH
	d7mfm8RRcwcgeOLmMQhchRfdPOQumxQbrNwHgndp+2VuPiosBitbl8BUHEvRbS0UZmZW5EME0FQcq
	CaeUv3PjnaqsVB4x/NJi6Ymkad6YMEme9rp4PiASWrZTavDWJm0B62mrLUeVYdpbOHzQEOs6tqriA
	bP1wocwHbHhDKI/pQfayx1ZjnxlzzHnopCwtT/LZlrpHN/3LkujqHCfldbCWkCkmaoA/aL81u5b30
	O+u3c9oiq7U7BqXxCSCzuUtwDhy9jfovvpb6yydZh0/lGsP7Non4AtMPgaBbgtphquHr4zrr1w/we
	hQTHPJdrQqZZ6JJd4WNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3qtE-0003pN-RM; Sat, 31 Aug 2019 00:05:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3qt4-00035D-He; Sat, 31 Aug 2019 00:05:04 +0000
X-UUID: 1e92c4e0e8cd43d4b920ac5c5c800094-20190830
X-UUID: 1e92c4e0e8cd43d4b920ac5c5c800094-20190830
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1449132957; Fri, 30 Aug 2019 16:04:59 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 17:04:57 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 31 Aug 2019 08:04:56 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 31 Aug 2019 08:04:50 +0800
Message-ID: <1567209886.18937.5.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] drm/mediatek: Bypass atomic helpers for cursor updates
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Sat, 31 Aug 2019 08:04:46 +0800
In-Reply-To: <20190830073819.16566-3-bibby.hsieh@mediatek.com>
References: <20190830073819.16566-1-bibby.hsieh@mediatek.com>
 <20190830073819.16566-3-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_170502_599427_F35E57C6 
X-CRM114-Status: GOOD (  15.62  )
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
Cc: drinkcat@chromium.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 YT Shen <yt.shen@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Daniel Kurtz <djkurtz@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Fri, 2019-08-30 at 15:38 +0800, Bibby Hsieh wrote:
> Moving the driver to atomic helpers regressed cursor responsiveness,
> because cursor updates need their own atomic commits, which have to be
> serialized with other commits, that might include fence waits. To avoid
> this, in certain conditions, we can bypass the atomic helpers for legacy
> cursor update IOCTLs. Currently the conditions are:
>  - no asynchronous mode setting commit pending,
>  - no asynchronous commit that updates the cursor plane is pending.
> With the above two conditions met, we know that the manual cursor state
> update will not conflict with any scheduled update.
> 
> Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 41 ++++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.h  |  2 +
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 34 ++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h   |  3 +
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 73 +++++++++++++++++++++++-
>  5 files changed, 148 insertions(+), 5 deletions(-)
> 

[snip]

> +
> +static int mtk_plane_update(struct drm_plane *plane,
> +			    struct drm_crtc *crtc,
> +			    struct drm_framebuffer *fb,
> +			    int crtc_x, int crtc_y,
> +			    unsigned int crtc_w, unsigned int crtc_h,
> +			    uint32_t src_x, uint32_t src_y,
> +			    uint32_t src_w, uint32_t src_h,
> +			    struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct mtk_drm_private *private = plane->dev->dev_private;
> +	uint32_t crtc_mask = (1 << drm_crtc_index(crtc));
> +
> +	if (crtc && plane == crtc->cursor &&
> +	    plane->state->crtc == crtc &&
> +	    !(private->commit.flush_for_cursor & crtc_mask))
> +		return mtk_plane_cursor_update(plane, crtc, fb,
> +				crtc_x, crtc_y, crtc_w, crtc_h,
> +				src_x, src_y, src_w, src_h);
> +
> +	return drm_atomic_helper_update_plane(plane, crtc, fb,
> +					      crtc_x, crtc_y, crtc_w, crtc_h,
> +					      src_x, src_y, src_w, src_h, ctx);
> +}
> +
>  static const struct drm_plane_funcs mtk_plane_funcs = {
> -	.update_plane = drm_atomic_helper_update_plane,
> +	.update_plane = mtk_plane_update,

I think drm core has already process cursor async problem. In [1], you
could search 'legacy_cursor_update' and it need driver to implement
atomic_async_check() and atomic_async_update() callback function. You
could refer to [2] for the implementation. 


[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/drm_atomic_helper.c?h=v5.3-rc6
[2]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/rockchip_drm_vop.c?h=v5.3-rc6#n955

Regards,
CK

>  	.disable_plane = drm_atomic_helper_disable_plane,
>  	.destroy = drm_plane_cleanup,
>  	.reset = mtk_plane_reset,
> @@ -90,7 +154,12 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
>  	if (!state->crtc)
>  		return 0;
>  
> -	crtc_state = drm_atomic_get_crtc_state(state->state, state->crtc);
> +	if (state->state)
> +		crtc_state = drm_atomic_get_existing_crtc_state(state->state,
> +								state->crtc);
> +	else /* Special case for asynchronous cursor updates. */
> +		crtc_state = state->crtc->state;
> +
>  	if (IS_ERR(crtc_state))
>  		return PTR_ERR(crtc_state);
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

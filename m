Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D501915BF89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 14:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQ7S8IWxeT79CUvh6BinzYFLFav09yDSiQ10cYZwBuw=; b=USa/VoirzjCScw
	VF6NXxo3d1MHm3lB+JJ1EI61sFORal851FTs19g2InOG5+TZw2cQEA1kkE0xmpIkXGwmJpGzmLa8a
	2euINXoX7icxUDNqfzS13rjIkfK+e3oJHQT3RjZFciMPpAvQqWBF0SaDJ1auizv5gT+P3xGfnjrhF
	1NNaRcx/29/XQOx6CEASm3TD2TySva0hcSahSrbvSuvu2tni3NaWXOmAYwRE7QdS8irAD54KaF7oR
	gStyhlVEzZoQKuU4yqjeaD5HbWAnKwffyY5a+DI0M7YiktgO+uGxytWVKHD5ZxshXGCGo2Mieu7J0
	ncooT4YZeGmtk3kt9X3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EhK-0006li-Gi; Thu, 13 Feb 2020 13:38:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EhA-0006kH-68; Thu, 13 Feb 2020 13:38:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id AEB7029520D
Subject: Re: [PATCH] drm/mediatek: Update the fb property
 mtk_plane_atomic_async_update
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
References: <20200213120103.823501-1-enric.balletbo@collabora.com>
Message-ID: <7cd36a53-30d9-7efb-4864-78f994268f1b@collabora.com>
Date: Thu, 13 Feb 2020 14:38:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200213120103.823501-1-enric.balletbo@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_053823_175466_F5CB5430 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: drinkcat@chromium.org, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Daniel Vetter <daniel@ffwll.ch>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 13/2/20 13:01, Enric Balletbo i Serra wrote:
> Commit 920fffcc8912 ("drm/mediatek: update cursors by using async atomic
> update") added support to async updates of cursors by using the new atomic
> interface for that. Unfortunately, introduced two issues. The first one is
> that since then, the drm_atomic_helper_async_commit triggers a WARNING due
> current fb is not the new fb. The second one, is that we get a black screen
> connecting the external display on Elm device and another WARNING due vblank
> wait timed out.
> 
> Swap the fb in mtk_plane_atomic_async_update to fix both issues.
> 
> Fixes: 920fffcc8912 ("drm/mediatek: update cursors by using async atomic update")
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---

I just noticed this, which should fix the problem too, so you can ignore this patch.

https://patchwork.kernel.org/patch/11379571/

> 
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 914cc7619cd7..7eb10115e72a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -116,6 +116,7 @@ static void mtk_plane_atomic_async_update(struct drm_plane *plane,
>  	plane->state->src_h = new_state->src_h;
>  	plane->state->src_w = new_state->src_w;
>  	state->pending.async_dirty = true;
> +	swap(plane->state->fb, new_state->fb);
>  
>  	mtk_drm_crtc_async_update(new_state->crtc, plane, new_state);
>  }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

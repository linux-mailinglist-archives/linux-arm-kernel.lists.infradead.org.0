Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03980153F32
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 08:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8Qiaj1EfSwlBsnNmGkaHyalFKp2FxD9AUtjOqRJiFw=; b=n7BHMxJS2BaTqK
	Ky3QwaOyaq8oL4oeii/j101zpJLzDUR7UXDx3Bwqb5zcI1TgUBh5rViFwvJhhg/EroMRYsy0ZSZsu
	fgeEdmKb0NdfVdQsM1UQcmPN4aHlfvbDkKFDbxDzuvETGJZW1Xuc+xQVB6/BApal5Qr+r4vtYMKH1
	EoKGN/ZO/eVrxngMrw++XB6TvpF2ie/LpfCO/RB03i2hQyWNzcwtq9PZWgA6/MmQYogtB70l9Hp3M
	KU3ANQdSZEmgjQihHD2Z0QUbl0m5N6+nYLr/GXgkwFIHi4JATegru10ibSj6Yk22kMjwrXKTOd/tZ
	AqPDCbir7lW2+ONlaSzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izbPC-0002Mn-An; Thu, 06 Feb 2020 07:16:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izbP5-0002LT-D8; Thu, 06 Feb 2020 07:16:48 +0000
X-UUID: 4c4e45ac16dc41fb8bd8670c6e0161f7-20200205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ktGy1KVI8G5+j74zp5yOrZGQQDrH3YB+IG9YCfScyrM=; 
 b=CcBcsgOMDEKwFrcjRVy3OpHvt6OrORflDGVBCwBsr07pA3JVUjfRXlmqSblQjpWDbGD9j/IGUSIT8/Sw+xzjeO7Om5fqIBxWGqbskWet0+ur25hMUjOUCfP0lRo7m+MAXGZQx7cXBisatSL1KRU9tvvt8D9xDw/BB32VQh62Yw4=;
X-UUID: 4c4e45ac16dc41fb8bd8670c6e0161f7-20200205
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 982122704; Wed, 05 Feb 2020 23:16:35 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Feb 2020 23:17:13 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by mtkcas08.mediatek.inc
 (172.21.101.126) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 6 Feb 2020 15:16:05 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 6 Feb 2020 15:16:50 +0800
Message-ID: <1580973392.21471.2.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Ensure the cursor plane is on top of
 other overlays
From: CK Hu <ck.hu@mediatek.com>
To: <evanbenn@google.com>
Date: Thu, 6 Feb 2020 15:16:32 +0800
In-Reply-To: <20200206065951.213862-1-evanbenn@google.com>
References: <1580441226.9516.1.camel@mtksdaap41>
 <20200206065951.213862-1-evanbenn@google.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_231647_456848_F3663C11 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dcastagna@chromium.org, evanbenn@gmail.com, evanbenn@chromium.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 p.zabel@pengutronix.de, matthias.bgg@gmail.com, seanpaul@chromium.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Evan:

It looks like Sean's version has some problem. So this version is

Reviewed-by: CK Hu <ck.hu@mediatek.com>


On Thu, 2020-02-06 at 17:59 +1100, evanbenn@google.com wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> Currently the cursor is placed on the first overlay plane, which means
> it will be at the bottom of the stack when the hw does the compositing
> with anything other than primary plane. Since mtk doesn't support plane
> zpos, change the cursor location to the top-most plane.
> 
> Signed-off-by: Evan Benn <evanbenn@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 29 +++++++++++++++++--------
>  1 file changed, 20 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 7b392d6c71cc..d4078c2089e0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -658,10 +658,21 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
>  
>  static int mtk_drm_crtc_init(struct drm_device *drm,
>  			     struct mtk_drm_crtc *mtk_crtc,
> -			     struct drm_plane *primary,
> -			     struct drm_plane *cursor, unsigned int pipe)
> +			     unsigned int pipe)
>  {
> -	int ret;
> +	int i, ret;
> +
> +	struct drm_plane *primary = NULL;
> +	struct drm_plane *cursor = NULL;
> +
> +	for (i = 0; i < mtk_crtc->layer_nr; ++i) {
> +		if (!primary && mtk_crtc->planes[i].type ==
> +				DRM_PLANE_TYPE_PRIMARY)
> +			primary = &mtk_crtc->planes[i];
> +		if (!cursor && mtk_crtc->planes[i].type ==
> +				DRM_PLANE_TYPE_CURSOR)
> +			cursor = &mtk_crtc->planes[i];
> +	}
>  
>  	ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
>  					&mtk_crtc_funcs, NULL);
> @@ -711,11 +722,12 @@ static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
>  }
>  
>  static inline
> -enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx)
> +enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx,
> +					    unsigned int num_planes)
>  {
>  	if (plane_idx == 0)
>  		return DRM_PLANE_TYPE_PRIMARY;
> -	else if (plane_idx == 1)
> +	else if (plane_idx == (num_planes - 1))
>  		return DRM_PLANE_TYPE_CURSOR;
>  	else
>  		return DRM_PLANE_TYPE_OVERLAY;
> @@ -734,7 +746,8 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
>  		ret = mtk_plane_init(drm_dev,
>  				&mtk_crtc->planes[mtk_crtc->layer_nr],
>  				BIT(pipe),
> -				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr),
> +				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr,
> +							num_planes),
>  				mtk_ddp_comp_supported_rotations(comp));
>  		if (ret)
>  			return ret;
> @@ -830,9 +843,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  			return ret;
>  	}
>  
> -	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
> -				mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
> -				NULL, pipe);
> +	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
>  	if (ret < 0)
>  		return ret;
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

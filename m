Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85AA1553C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 09:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/mF+/N2gPmZL3HyYnLSJLH93uAHnF+7VPgSfKyVdxU=; b=U6QF5Je9vkFdN7
	FwpG6ZrxJ6VGpoehm2t9aq92Z5cJmXH98P7ShoNbbJFs4kKipPRUVSZ5aMj9LSD57twfENCWGvynM
	feHGfGpC3kV6TbUg2NM78ak5rvsvwBjbn+gbTZCCfov+bYNsoK0EeT4nq5G+K7lObDmeFXkPJl/M7
	pjXOoCsNbF2L3RipghrHFY+FGfs//gnCz+Xtf+5wrTdBpQRMmR46b7rrcNdlWb65I3wqSwGf/DwBJ
	XO6nhTuQlijSkgJp4VtA8ZpXsjUpFVqdE18qs227Y05KERp4oLKzGlMANTEIbj3qG8laJV2Z4CCSH
	n3NfQBta5bn6RCkSA+Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izz6j-0004pN-U6; Fri, 07 Feb 2020 08:35:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izz6U-00040P-Ud; Fri, 07 Feb 2020 08:35:12 +0000
X-UUID: 6b447a0611e3417bb4baeaa46fc103f3-20200207
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hXWVZ6oSwC7pNQrHxmaSfz6HN+UgtHEL8vkKF8UU45A=; 
 b=i85HRCamkErv65eH5EQ5F4f1Uyu2I6hSbtMVf1IKSu6XRS4JO8CFSpiWBCpjm38ZVuFL54Kde34iD7s3cj6qzxmqwA3i4CVcGqwzMg+6BXlW+FBT8Z5xZygfBb9KjSJJ/74B2zVpNAx5s6efEp8nlntQPFoFjvVOWUxZzLqDDUU=;
X-UUID: 6b447a0611e3417bb4baeaa46fc103f3-20200207
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 238207271; Fri, 07 Feb 2020 00:35:02 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 7 Feb 2020 00:35:00 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by mtkcas08.mediatek.inc
 (172.21.101.126) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 7 Feb 2020 16:35:28 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 7 Feb 2020 16:35:28 +0800
Message-ID: <1581064499.590.0.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Find the cursor plane instead of hard
 coding it
From: CK Hu <ck.hu@mediatek.com>
To: Evan Benn <evanbenn@chromium.org>
Date: Fri, 7 Feb 2020 16:34:59 +0800
In-Reply-To: <20200207152348.1.Ie0633018fc787dda6e869cae23df76ae30f2a686@changeid>
References: <20200206140140.GA18465@art_vandelay>
 <20200207152348.1.Ie0633018fc787dda6e869cae23df76ae30f2a686@changeid>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_003511_069902_F1DE2945 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Evan:

On Fri, 2020-02-07 at 15:23 +1100, Evan Benn wrote:
> The cursor and primary planes were hard coded.
> Now search for them for passing to drm_crtc_init_with_planes
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Evan Benn <evanbenn@chromium.org>
> ---
> 
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 7b392d6c71cc..935652990afa 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -658,10 +658,18 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
>  
>  static int mtk_drm_crtc_init(struct drm_device *drm,
>  			     struct mtk_drm_crtc *mtk_crtc,
> -			     struct drm_plane *primary,
> -			     struct drm_plane *cursor, unsigned int pipe)
> +			     unsigned int pipe)
>  {
> -	int ret;
> +	struct drm_plane *primary = NULL;
> +	struct drm_plane *cursor = NULL;
> +	int i, ret;
> +
> +	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> +		if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_PRIMARY)
> +			primary = &mtk_crtc->planes[i];
> +		else if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_CURSOR)
> +			cursor = &mtk_crtc->planes[i];
> +	}
>  
>  	ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
>  					&mtk_crtc_funcs, NULL);
> @@ -830,9 +838,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
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

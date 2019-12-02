Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEE910E57D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 06:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwXXHLOVNYcq063X7TZVyig65Vz9cua9KJEV0OUYIRk=; b=f2XJuiBwzk5tzU
	KQIXdDR5krlcv5qkygoc4vrumkcIqXXjvu5eCo83zSChHCq/Dt99Wf3SvsnXZgzWkytqMNXmaK5t8
	G0M+PKEF6mZVPz4Wl2tpr0DaVAruRjRT5ssJ+JhkAwilOdaVHTxtHtr6O+NRgij4ZdUPGLzfhzd3K
	MnKr2pY27IUljEC1WKdEai/bppwbLKtMJgxTCN8tZPXSto4TQG4ngJCeFujzeZTHWAKoVA5ZOGp5C
	ybAwc6DNcl0uCFRp6znQ3sO9+YryCnONDZTIdbeZokzpQ1BIWYoe6mid9MrmwTjDYI3dEbYXGzRrX
	YXwaN7U6ZyuUbhqnj0Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibeFX-0004RR-SB; Mon, 02 Dec 2019 05:27:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibeFS-0004Qs-Cu; Mon, 02 Dec 2019 05:27:52 +0000
X-UUID: 7e76a57359354015a90fc1c4d5e4c45c-20191201
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=nHyM0wlDNnnCgrZ3XeFFZizqAnSwx9cK7hjQY20Jc9Q=; 
 b=eXjKCPqaIe1pirlqnlQVTpvo1S6AgRapAviK2OyFlcb1Bx5MBaPcfXsEVGH8FWRfWeo52oSSRXy5widrOcSuA7S/jpivUYHrmrREICaonpbHZ19mAAluQlnPR7uTW1tlrfo6sfK4m+UU4kQayEXAsa8qPC8ZH7xwu9ZSlXBGYp4=;
X-UUID: 7e76a57359354015a90fc1c4d5e4c45c-20191201
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1204004876; Sun, 01 Dec 2019 21:27:30 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 1 Dec 2019 21:24:44 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 13:24:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 2 Dec 2019 13:24:14 +0800
Message-ID: <1575264270.16063.0.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Fix can't get component for external
 display plane.
From: CK Hu <ck.hu@mediatek.com>
To: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 2 Dec 2019 13:24:30 +0800
In-Reply-To: <20191127100419.130300-1-pihsun@chromium.org>
References: <20191127100419.130300-1-pihsun@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 55615A5A8EC94A2605C689A4D635FDA520FEA8224007C4A9FD05769092DFE3A42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_212750_439460_5E79AFBC 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sean Paul <seanpaul@chromium.org>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR MEDIATEK" <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Pi-Hsun:


On Wed, 2019-11-27 at 18:04 +0800, Pi-Hsun Shih wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> The original logic is ok for primary display, but will not find out
> component for external display.
> 
> For example, plane->index is 6 for external display, but there are only
> 2 layer nr in external display, and this condition will never happen:
> if (plane->index < (count + mtk_ddp_comp_layer_nr(comp)))
> 
> Fix this by using the offset of the plane to mtk_crtc->planes as index,
> instead of plane->index.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

Regards,
CK

> 
> Fixes: d6b53f68356f ("drm/mediatek: Add helper to get component for a plane")
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index f80a8ba75977..b34e7d70702a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -215,11 +215,12 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
>  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>  	struct mtk_ddp_comp *comp;
>  	int i, count = 0;
> +	unsigned int local_index = plane - mtk_crtc->planes;
>  
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>  		comp = mtk_crtc->ddp_comp[i];
> -		if (plane->index < (count + mtk_ddp_comp_layer_nr(comp))) {
> -			*local_layer = plane->index - count;
> +		if (local_index < (count + mtk_ddp_comp_layer_nr(comp))) {
> +			*local_layer = local_index - count;
>  			return comp;
>  		}
>  		count += mtk_ddp_comp_layer_nr(comp);
> 
> base-commit: 1875ff320f14afe21731a6e4c7b46dd33e45dfaa

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

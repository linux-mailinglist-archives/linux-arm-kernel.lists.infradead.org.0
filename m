Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D1511C514
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 05:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=th38TuPkFq+eB/vbBTtSaIy78dW9yiVwHp9h3BRFa/M=; b=U+kiWnpR+xnmQq
	5XQdLiaVaUlqtI59NOZxrNDHxbaoVgdURiI+ktA5XjPKZYoAMURE2mERnYVhyVjR3lwMU8WB+8+2t
	VPETwrwRkmVsPdv7isg9eHP0IJvgCF9h+TCyRD/2yzY/AzeWAaUCBjWWp70H5A/UbBqZtWzpjb8Xd
	uT5NjCQZBc/F7dDiY5+1dNcaSxiznEF8OrVL0EDpWk4DClj6nMbUZpo/iQQAIoTjx0ubIhwlUSwyn
	JNas3ZuyNy5odnA30kstET5hHPwDOHfxxjxBzTpeE+ybTDKXy5Ij6doKB3x41VIkb4wLFHzFk8WPp
	yGOtWTAgLN6UN2mJkn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifGW2-0006pR-Dk; Thu, 12 Dec 2019 04:55:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifGVH-0005Wd-3T; Thu, 12 Dec 2019 04:55:09 +0000
X-UUID: 3a6c49666f6f4259a50432c65f43375e-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=61QzL2uAhif1inmfHk4F3GpOWbSMt53a76nKAzVwLMU=; 
 b=f5bMNPM5X3vpibe0RnOnQWIHHLjNcUhruZoyv2kTE7kQMw2sq6n8oCiqECQvYoXylolEXoxlHHdzYCtPjixo5Mk4wplOpBb8wMOEzckUSh89XQ0ukV3N+v41y+IA9vePsWjQrTSMqTJAM1tHOscJaSAx8PQJYXxGxJA+hQ4XHSw=;
X-UUID: 3a6c49666f6f4259a50432c65f43375e-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2137650125; Wed, 11 Dec 2019 20:55:03 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 20:51:08 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 12:49:45 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 12:49:53 +0800
Message-ID: <1576126197.29693.3.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Fix can't get component for external
 display plane.
From: CK Hu <ck.hu@mediatek.com>
To: Pi-Hsun Shih <pihsun@chromium.org>
Date: Thu, 12 Dec 2019 12:49:57 +0800
In-Reply-To: <1575264270.16063.0.camel@mtksdaap41>
References: <20191127100419.130300-1-pihsun@chromium.org>
 <1575264270.16063.0.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A33FA4A393275F96C1D67CACE7875D97147C4BC54960F0F3AB9A8D502DF8916C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_205507_193879_3480CE7E 
X-CRM114-Status: GOOD (  17.35  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 2019-12-02 at 13:24 +0800, CK Hu wrote:
> Hi, Pi-Hsun:
> 
> 
> On Wed, 2019-11-27 at 18:04 +0800, Pi-Hsun Shih wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > The original logic is ok for primary display, but will not find out
> > component for external display.
> > 
> > For example, plane->index is 6 for external display, but there are only
> > 2 layer nr in external display, and this condition will never happen:
> > if (plane->index < (count + mtk_ddp_comp_layer_nr(comp)))
> > 
> > Fix this by using the offset of the plane to mtk_crtc->planes as index,
> > instead of plane->index.
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 

Applied to mediatek-drm-fixes-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.5


Regards,
CK

> Regards,
> CK
> 
> > 
> > Fixes: d6b53f68356f ("drm/mediatek: Add helper to get component for a plane")
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index f80a8ba75977..b34e7d70702a 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -215,11 +215,12 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
> >  	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> >  	struct mtk_ddp_comp *comp;
> >  	int i, count = 0;
> > +	unsigned int local_index = plane - mtk_crtc->planes;
> >  
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
> >  		comp = mtk_crtc->ddp_comp[i];
> > -		if (plane->index < (count + mtk_ddp_comp_layer_nr(comp))) {
> > -			*local_layer = plane->index - count;
> > +		if (local_index < (count + mtk_ddp_comp_layer_nr(comp))) {
> > +			*local_layer = local_index - count;
> >  			return comp;
> >  		}
> >  		count += mtk_ddp_comp_layer_nr(comp);
> > 
> > base-commit: 1875ff320f14afe21731a6e4c7b46dd33e45dfaa
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

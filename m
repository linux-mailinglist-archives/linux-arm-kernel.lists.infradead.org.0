Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA87A50F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcSUHdq0H+JIibtDJfVYYE9aCRnocFODEmN88O2BvbI=; b=jx/mZcNzM0snUk
	F1fCDyw0rdJ2jn9EEGPpWHSjPMDcYkJQ+HklVdD9Y5fjv6cTEmeX7wrNBjOdfZ4UTL5bsawfdFsbp
	hELg3ILc2l5A08wG/TIy5AI8v9iifVFvVFz6eKzZ17akfNZJ9OE6hxu5t+i6TajEzaT3HA39uIaYW
	oGXU2zwKO4qR1LPdOmuFwjSA/7wP5vNYvEfdLSm23MUwXiDVXWZqBZE7C+8N9zeiZuxGpNIrrLtrp
	8nwRzbn3CnefI0BlWmIZIDA5rbr8lg+mSutweAVpw/FhCTin1jZRKgJyrqmt9yEnVaL55HopHKGEl
	mLfgkPVQhhxbr162RiZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hRn-0002OE-Fl; Mon, 02 Sep 2019 08:12:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hRA-0002Ag-UB; Mon, 02 Sep 2019 08:11:47 +0000
X-UUID: 3c4a8f8fbb1f462f9ca4641101ff4bef-20190902
X-UUID: 3c4a8f8fbb1f462f9ca4641101ff4bef-20190902
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1849171590; Mon, 02 Sep 2019 00:11:42 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 01:11:40 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 16:11:34 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 2 Sep 2019 16:11:34 +0800
Message-ID: <1567411892.5812.4.camel@mtksdaap41>
Subject: Re: [PATCH v5, 22/32] drm/mediatek: add ovl0/ovl_2l0 usecase
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Mon, 2 Sep 2019 16:11:32 +0800
In-Reply-To: <1567144708.5942.14.camel@mtksdaap41>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-23-git-send-email-yongqiang.niu@mediatek.com>
 <1567144708.5942.14.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8DEBCB9E9240A11796BAA4C58301C88141C950438EF9BB1DF055A5834AA80B812000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_011145_006573_9FFC93C2 
X-CRM114-Status: GOOD (  19.30  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Fri, 2019-08-30 at 13:58 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > This patch add ovl0/ovl_2l0 usecase
> > in ovl->ovl_2l0 direct link usecase:
> > 1. the crtc support layer number will 4+2
> > 2. ovl_2l0 background color input select ovl0 when crtc init
> > and disable it when crtc finish
> > 3. config ovl_2l0 layer, if crtc config layer number is
> > bigger than ovl0 support layers(max is 4)
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 38 +++++++++++++++++++++++++++++++--
> >  1 file changed, 36 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index c63ff2b..b55970a 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -270,6 +270,15 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> >  
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
> >  		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
> > +		enum mtk_ddp_comp_id prev;
> > +
> > +		if (i > 0)
> > +			prev = mtk_crtc->ddp_comp[i - 1]->id;
> > +		else
> > +			prev = DDP_COMPONENT_ID_MAX;
> > +
> > +		if (prev == DDP_COMPONENT_OVL0)
> > +			mtk_ddp_comp_bgclr_in_on(comp);
> 
> Even though both OVL and OVL_2L implement this function, I think we
> could still call this function for OVL and OVL_2L, and in
> mtk_ovl_bgclr_in_on(), to judge it's OVL or OVL_2L.

As internal discussion, you mention that OVL and OVL_2L both has
bgclr_in function, so I think we should keep bgclr_in function for both
OVL and OVL_2L. And in crtc, always enable bgclr_in for comp[1], so code
here could be

if (i == 1)
	mtk_ddp_comp_bgclr_in_on(comp);

Regards,
CK

> 
> Regards,
> CK
> 
> >  
> >  		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
> >  		mtk_ddp_comp_start(comp);
> > @@ -279,9 +288,18 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> >  	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> >  		struct drm_plane *plane = &mtk_crtc->planes[i];
> >  		struct mtk_plane_state *plane_state;
> > +		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> > +		unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> > +		unsigned int local_layer;
> >  
> >  		plane_state = to_mtk_plane_state(plane->state);
> > -		mtk_ddp_comp_layer_config(mtk_crtc->ddp_comp[0], i,
> > +
> > +		if (i >= comp_layer_nr) {
> > +			comp = mtk_crtc->ddp_comp[1];
> > +			local_layer = i - comp_layer_nr;
> > +		} else
> > +			local_layer = i;
> > +		mtk_ddp_comp_layer_config(comp, local_layer,
> >  					  plane_state);
> >  	}
> >  
> > @@ -307,6 +325,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
> >  					   mtk_crtc->ddp_comp[i]->id);
> >  	mtk_disp_mutex_disable(mtk_crtc->mutex);
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> > +		mtk_ddp_comp_bgclr_in_off(mtk_crtc->ddp_comp[i]);
> >  		mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
> >  					      mtk_crtc->mmsys_reg_data,
> >  					      mtk_crtc->ddp_comp[i]->id,
> > @@ -327,6 +346,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> >  	struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
> >  	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> >  	unsigned int i;
> > +	unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> > +	unsigned int local_layer;
> >  
> >  	/*
> >  	 * TODO: instead of updating the registers here, we should prepare
> > @@ -349,7 +370,14 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> >  			plane_state = to_mtk_plane_state(plane->state);
> >  
> >  			if (plane_state->pending.config) {
> > -				mtk_ddp_comp_layer_config(comp, i, plane_state);
> > +				if (i >= comp_layer_nr) {
> > +					comp = mtk_crtc->ddp_comp[1];
> > +					local_layer = i - comp_layer_nr;
> > +				} else
> > +					local_layer = i;
> > +
> > +				mtk_ddp_comp_layer_config(comp, local_layer,
> > +							  plane_state);
> >  				plane_state->pending.config = false;
> >  			}
> >  		}
> > @@ -572,6 +600,12 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >  	}
> >  
> >  	mtk_crtc->layer_nr = mtk_ddp_comp_layer_nr(mtk_crtc->ddp_comp[0]);
> > +	if (mtk_crtc->ddp_comp_nr > 1) {
> > +		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[1];
> > +
> > +		if (comp->funcs->bgclr_in_on)
> > +			mtk_crtc->layer_nr += mtk_ddp_comp_layer_nr(comp);
> > +	}
> >  	mtk_crtc->planes = devm_kcalloc(dev, mtk_crtc->layer_nr,
> >  					sizeof(struct drm_plane),
> >  					GFP_KERNEL);
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
